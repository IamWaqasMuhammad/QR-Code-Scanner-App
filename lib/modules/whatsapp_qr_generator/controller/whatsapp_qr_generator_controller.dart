import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';
import '../../history/controller/history_controller.dart';

class WhatsappQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController phoneController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (phoneController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter a phone number to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    /// Remove any non-digit characters
    String phone = phoneController.text.trim().replaceAll(RegExp(r'\D'), '');
    
    if (phone.isEmpty) {
      Get.snackbar(
        'Invalid Phone',
        'Please enter a valid phone number',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    qrData.value = 'https://wa.me/$phone';

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: phoneController.text.trim(),
      type: 'WhatsApp',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}