import 'package:qr_code_scanner/app_barrels.dart';
import 'package:qr_code_scanner/modules/detail/controller/qr_detail_controller.dart';

class QrDetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<QrDetailController>(()=>QrDetailController());
  }
}