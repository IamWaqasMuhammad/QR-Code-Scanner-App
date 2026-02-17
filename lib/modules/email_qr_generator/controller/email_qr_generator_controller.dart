import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';

class EmailQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController emailController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (emailController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter an email to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    // Basic email validation
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(emailController.text.trim())) {
      Get.snackbar(
        'Invalid Email',
        'Please enter a valid email address',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    qrData.value = 'mailto:${emailController.text.trim()}';

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: emailController.text.trim(),
      type: 'Email',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}