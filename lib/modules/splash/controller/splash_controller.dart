
import '../../../app_barrels.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.home);
    });
  }
}
