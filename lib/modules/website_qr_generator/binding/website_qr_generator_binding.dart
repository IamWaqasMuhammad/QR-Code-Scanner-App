
import '../../../app_barrels.dart';

class WebsiteQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<WebsiteQRGeneratorController>(()=>WebsiteQRGeneratorController());
  }
}