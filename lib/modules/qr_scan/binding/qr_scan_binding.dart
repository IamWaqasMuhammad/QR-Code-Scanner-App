import '../../../app_barrels.dart';

class QRScanBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<QRScanController>(() => QRScanController(), fenix: true);
  }

}