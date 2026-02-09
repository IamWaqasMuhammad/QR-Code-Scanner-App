

import '../../../app_barrels.dart';

class EmailQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<EmailQRGeneratorController>(()=>EmailQRGeneratorController());
  }
}