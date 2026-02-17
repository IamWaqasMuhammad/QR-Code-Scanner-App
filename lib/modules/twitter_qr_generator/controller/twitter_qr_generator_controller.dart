import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';
import '../../history/controller/history_controller.dart';

class TwitterQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController usernameController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (usernameController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter a Twitter/X username to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    String username = usernameController.text.trim();
    // Remove @ if user added it
    if (username.startsWith('@')) {
      username = username.substring(1);
    }

    qrData.value = 'https://twitter.com/$username';

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: username,
      type: 'Twitter',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    usernameController.dispose();
    super.onClose();
  }
}