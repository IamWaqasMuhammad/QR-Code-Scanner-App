
import '../../../app_barrels.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()=>HomeController());
  }
}
