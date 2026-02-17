

import '../../../app_barrels.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()=>HomeController());
    Get.lazyPut<HistoryController>(()=>HistoryController());
    Get.lazyPut<QRScanController>(() => QRScanController(), fenix: true);
  }
}
