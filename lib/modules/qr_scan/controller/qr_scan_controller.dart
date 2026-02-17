import 'dart:io';
import 'package:gal/gal.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/modules/detail/view/qr_detail_screen.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../../app_barrels.dart';

class QRScanController extends GetxController {
  final MobileScannerController mobileScannerController =
      MobileScannerController();
  final ScreenshotController screenshotController = ScreenshotController();

  var isLoading = false.obs;
  var isScanCompleted = false.obs;
  String? code;

  void onDetect(BarcodeCapture capture) {
    if (!isScanCompleted.value && capture.barcodes.isNotEmpty) {
      code = capture.barcodes.first.rawValue;

      if (code != null && code!.isNotEmpty) {
        isScanCompleted.value = true;

        Get.to(QrDetailScreen(closeScreen: closeScreen, code: code));
      }
    }
  }



  Future<void> downloadQr() async {
    try {
      final hasAccess = await Gal.hasAccess(toAlbum: false);
      if (!hasAccess) {
        await Gal.requestAccess(toAlbum: false);
      }

      final image = await screenshotController.capture();

      if (image != null) {
        /// Save to temp file first, then to gallery
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
        duration: const Duration(seconds: 3),
      );
    }
  }

  Future<void> shareQr() async {
    try {
      final image = await screenshotController.capture();

      if (image == null) return;

      final directory = await getTemporaryDirectory();
      final imagePath = '${directory.path}/qr_code.png';
      final file = File(imagePath);

      await file.writeAsBytes(image);

      await Share.shareXFiles([
        XFile(imagePath),
      ], text: 'Here is Scan QR Code, $code');
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

  void closeScreen() {
    isScanCompleted.value = false;
  }

  @override
  void onClose() {
    mobileScannerController.dispose();
    super.onClose();
  }
}
