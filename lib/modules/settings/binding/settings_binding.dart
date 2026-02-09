
import '../../../app_barrels.dart';

class SettingsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SettingsController>(()=>SettingsController());
  }
}