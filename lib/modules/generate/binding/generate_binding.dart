import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/generate/controller/generate_controller.dart';

class GenerateBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GenerateController>(()=>GenerateController());
  }

}