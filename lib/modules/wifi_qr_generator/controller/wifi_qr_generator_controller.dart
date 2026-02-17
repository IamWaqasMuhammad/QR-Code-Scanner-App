import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';
import '../../history/controller/history_controller.dart';

class WifiQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController networkController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (networkController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter network name to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    if (passwordController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter password to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    // WiFi QR code format: WIFI:T:WPA;S:SSID;P:password;;
    qrData.value = 'WIFI:T:WPA;S:${networkController.text.trim()};P:${passwordController.text.trim()};;';

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: networkController.text.trim(),
      type: 'WiFi',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    networkController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}