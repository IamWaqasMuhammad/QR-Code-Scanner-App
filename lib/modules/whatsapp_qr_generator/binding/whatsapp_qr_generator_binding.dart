
import '../../../app_barrels.dart';

class WhatsAppQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<WhatsappQRGeneratorController>(()=>WhatsappQRGeneratorController());
  }
}