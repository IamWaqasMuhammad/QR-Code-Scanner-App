import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/wifi/controller/wifi_qr_generator_controller.dart';

class WifiQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<WifiQRGeneratorController>(()=>WifiQRGeneratorController());
  }
}