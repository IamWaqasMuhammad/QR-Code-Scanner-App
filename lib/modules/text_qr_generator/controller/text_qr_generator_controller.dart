import '../../../app_barrels.dart';

class TextQRGeneratorController extends GetxController {

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
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
