
import 'package:qr_code_scanner/modules/history/controller/history_controller.dart';

import '../../../app_barrels.dart';
import '../../scan/controller/qr_scan_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()=>HomeController());
    Get.lazyPut<HistoryController>(()=>HistoryController());
    Get.lazyPut<QRScanController>(() => QRScanController(), fenix: true);
  }
}
