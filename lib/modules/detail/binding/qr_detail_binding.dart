import 'package:qr_code_scanner/app_barrels.dart';

class QrDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrDetailController>(()=>QrDetailController());
  }
}