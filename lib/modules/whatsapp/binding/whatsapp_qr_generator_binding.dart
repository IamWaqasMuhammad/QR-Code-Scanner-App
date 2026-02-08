import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/whatsapp/controller/whatsapp_qr_generator_controller.dart';

class WhatsAppQRGeneratorBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<WhatsAppQRGeneratorController>(()=>WhatsAppQRGeneratorController());
  }
}