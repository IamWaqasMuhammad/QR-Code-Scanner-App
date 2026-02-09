
import '../../../app_barrels.dart';

class WifiQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<WifiQRGeneratorController>(()=>WifiQRGeneratorController());
  }
}