import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/instagram/controller/instagram_qr_generator_controller.dart';

class InstagramQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<InstagramQRGeneratorController>(()=>InstagramQRGeneratorController());
  }
}