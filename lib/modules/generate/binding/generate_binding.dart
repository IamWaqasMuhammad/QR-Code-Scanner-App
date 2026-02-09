
import '../../../app_barrels.dart';

class GenerateBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GenerateController>(()=>GenerateController());
  }

}