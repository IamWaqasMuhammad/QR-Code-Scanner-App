import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/email/controller/text_qr_generator_controller.dart';

class EmailQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<EmailQRGeneratorController>(()=>EmailQRGeneratorController());
  }
}