import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/settings/controller/settings_controller.dart';

class SettingsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SettingsController>(()=>SettingsController());
  }
}