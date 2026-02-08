import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/website/controller/website_qr_generator_controller.dart';

class WebsiteQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<WebsiteQRGeneratorController>(()=>WebsiteQRGeneratorController());
  }
}