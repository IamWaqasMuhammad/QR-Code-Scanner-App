import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';
import '../../history/controller/history_controller.dart';

class WebsiteQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController urlController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (urlController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter a URL to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    String url = urlController.text.trim();
    // Add https:// if no protocol is specified
    if (!url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://$url';
    }

    qrData.value = url;

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: url,
      type: 'Website',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    urlController.dispose();
    super.onClose();
  }
}