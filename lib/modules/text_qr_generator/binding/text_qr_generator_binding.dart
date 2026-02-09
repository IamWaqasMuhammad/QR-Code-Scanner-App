
import '../../../app_barrels.dart';

class TextQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TextQRGeneratorController>(()=>TextQRGeneratorController());
  }
}