
import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/home/controller/home_controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()=>HomeController());
  }
}
