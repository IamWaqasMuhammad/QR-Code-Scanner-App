
import 'package:qr_code_scanner/modules/history/controller/history_controller.dart';

import '../../../app_barrels.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()=>HomeController());
    Get.lazyPut<HistoryController>(()=>HistoryController());
  }
}
