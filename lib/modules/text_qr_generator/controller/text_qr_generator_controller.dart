import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';
import '../../history/controller/history_controller.dart';

class TextQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController textController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (textController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter some text to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    qrData.value = textController.text.trim();

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: textController.text.trim(),
      type: 'Text',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
