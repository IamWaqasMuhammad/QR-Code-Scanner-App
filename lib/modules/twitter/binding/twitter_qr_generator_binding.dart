import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/twitter/controller/twitter_qr_generator_controller.dart';

class TwitterQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TwitterQRGeneratorController>(()=>TwitterQRGeneratorController());
  }
}