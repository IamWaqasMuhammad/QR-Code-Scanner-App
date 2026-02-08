import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/text_qr_generator/controller/text_qr_generator_controller.dart';

class TextQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TextQRGeneratorController>(()=>TextQRGeneratorController());
  }
}