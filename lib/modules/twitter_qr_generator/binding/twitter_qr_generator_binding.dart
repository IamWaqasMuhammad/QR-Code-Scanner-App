
import '../../../app_barrels.dart';

class TwitterQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TwitterQRGeneratorController>(()=>TwitterQRGeneratorController());
  }
}