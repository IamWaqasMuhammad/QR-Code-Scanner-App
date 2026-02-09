

import '../../../app_barrels.dart';

class InstagramQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<InstagramQRGeneratorController>(()=>InstagramQRGeneratorController());
  }
}