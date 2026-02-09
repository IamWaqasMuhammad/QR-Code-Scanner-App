
import '../../../app_barrels.dart';

class ContactQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ContactQRGeneratorController>(()=>ContactQRGeneratorController());
  }
}