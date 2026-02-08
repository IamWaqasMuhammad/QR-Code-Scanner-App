import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/history/controller/history_controller.dart';

class HistoryBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HistoryController>(()=>HistoryController());
  }
}