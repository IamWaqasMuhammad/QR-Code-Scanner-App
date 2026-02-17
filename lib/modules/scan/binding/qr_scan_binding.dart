import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/scan/controller/qr_scan_controller.dart';

class QRScanBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<QRScanController>(() => QRScanController(), fenix: true);
  }

}