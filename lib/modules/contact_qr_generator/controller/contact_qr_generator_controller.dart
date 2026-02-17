import '../../../app_barrels.dart';
import '../../../core/models/history_model.dart';

class ContactQRGeneratorController extends GetxController {
  final screenshotController = ScreenshotController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  var qrData = ''.obs;

  void generateQR() {
    if (nameController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter a name to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    if (phoneController.text.trim().isEmpty) {
      Get.snackbar(
        'Empty Input',
        'Please enter a phone number to generate QR',
        backgroundColor: Colors.red.withValues(alpha: 0.2),
        colorText: AppColors.whiteGrayColor,
      );
      return;
    }

    // vCard format for contact
    qrData.value = 'BEGIN:VCARD\n'
        'VERSION:3.0\n'
        'FN:${nameController.text.trim()}\n'
        'TEL:${phoneController.text.trim()}\n'
        'END:VCARD';

    /// Save to History
    final historyController = Get.find<HistoryController>();
    historyController.addToHistory(HistoryItem(
      data: nameController.text.trim(),
      type: 'Contact',
      dateTime: DateTime.now().toString(),
      isGenerated: true,
    ));

    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}