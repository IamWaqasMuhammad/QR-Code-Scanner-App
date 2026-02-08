import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/contact/controller/contact_qr_generator_controller.dart';

class ContactQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ContactQRGeneratorController>(()=>ContactQRGeneratorController());
  }
}