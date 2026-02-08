import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/scan/controller/scan_controller.dart';

class ScanBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(()=>ScanController());
  }

}