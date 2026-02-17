
import 'package:qr_code_scanner/modules/detail/view/qr_detail_screen.dart';

import 'package:vibration/vibration.dart';
import '../../../core/models/history_model.dart';

import '../../../app_barrels.dart';

class QRScanController extends GetxController {
  final MobileScannerController mobileScannerController =
      MobileScannerController();
  final ScreenshotController screenshotController = ScreenshotController();

  var isLoading = false.obs;
  var isScanCompleted = false.obs;
  var isFlashOn = false.obs;
  String? code;

  void onDetect(BarcodeCapture capture) {
    if (!isScanCompleted.value && capture.barcodes.isNotEmpty) {
      code = capture.barcodes.first.rawValue;

      if (code != null && code!.isNotEmpty) {
        isScanCompleted.value = true;
        
        /// Save to History
        final historyController = Get.find<HistoryController>();
        historyController.addToHistory(HistoryItem(
          data: code!,
          type: 'QR Code',
          dateTime: DateTime.now().toString(),
          isGenerated: false,
        ));

        _triggerFeedback();

        Get.to(QrDetailScreen(closeScreen: closeScreen, code: code));
      }
    }
  }

  void _triggerFeedback() async {
    final settingsController = Get.find<SettingsController>();

    if (settingsController.isVibrate.value) {
      if (await Vibration.hasVibrator()) {
        Vibration.vibrate();
      }
    }

    if (settingsController.isPushEnable.value) {
      Get.snackbar(
        'Scan Successful',
        'QR Code has been scanned successfully',
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.primaryColor.withOpacity(0.8),
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }
  }

  void toggleFlash() {
    mobileScannerController.toggleTorch();
    isFlashOn.value = !isFlashOn.value;
  }

  void switchCamera() {
    mobileScannerController.switchCamera();
  }

  Future<void> downloadQr() async {
    final detailController = Get.find<QrDetailController>();
    await detailController.downloadQr(screenshotController);
  }

  Future<void> shareQr() async {
    final detailController = Get.find<QrDetailController>();
    await detailController.shareQr(screenshotController, code);
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
