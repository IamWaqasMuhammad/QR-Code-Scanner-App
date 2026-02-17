
import 'dart:io';
import 'package:gal/gal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_code_scanner/app_barrels.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class QrDetailController extends GetxController {
  bool isValidUrl(String? text) {
    if (text == null || text.trim().isEmpty) return false;
    
    final trimmed = text.trim();
    
    if (trimmed.startsWith('mailto:') ||
        trimmed.startsWith('tel:') || 
        trimmed.startsWith('sms:') || 
        trimmed.startsWith('https://wa.me/')) {
      return true;
    }

    // Standard URL regex
    final urlPattern = RegExp(
      r'^(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
      caseSensitive: false,
    );
    
    return urlPattern.hasMatch(trimmed) || 
           trimmed.startsWith('http://') || 
           trimmed.startsWith('https://');
  }

  Future<void> openUrl(String? url) async {
    if (url == null || url.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Invalid content to open',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    String finalUrl = url.trim();
    
    // Check if it already has a scheme
    final hasScheme = RegExp(r'^[a-z]+:', caseSensitive: false).hasMatch(finalUrl);
    
    if (!hasScheme) {
      finalUrl = 'https://$finalUrl';
    }

    try {
      final uri = Uri.parse(finalUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.platformDefault);
      } else {
        Get.snackbar(
          'Error',
          'Could not open this content. Please make sure you have a compatible app installed.',
          backgroundColor: Colors.red.withValues(alpha: 0.2),
          colorText: AppColors.whiteGrayColor,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Something went wrong: ${e.toString()}',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
    }
  }

  Future<void> downloadQr(ScreenshotController screenshotController) async {
    try {
      final hasAccess = await Gal.hasAccess(toAlbum: false);
      if (!hasAccess) {
        await Gal.requestAccess(toAlbum: false);
      }

      final image = await screenshotController.capture();

      if (image != null) {
        final directory = await getTemporaryDirectory();
        final imagePath =
            '${directory.path}/qr_${DateTime.now().millisecondsSinceEpoch}.png';
        final file = File(imagePath);
        await file.writeAsBytes(image);

        await Gal.putImage(imagePath);

        Get.snackbar(
          "Success",
          "QR Code saved to gallery",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: const Duration(seconds: 2),
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to save: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> shareQr(ScreenshotController screenshotController, String? data) async {
    try {
      final image = await screenshotController.capture();

      if (image == null) return;

      final directory = await getTemporaryDirectory();
      final imagePath = '${directory.path}/qr_code.png';
      final file = File(imagePath);

      await file.writeAsBytes(image);

      await Share.shareXFiles([
        XFile(imagePath),
      ], text: 'QR Code for: ${data ?? ""}');
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to share: ${e.toString()}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
