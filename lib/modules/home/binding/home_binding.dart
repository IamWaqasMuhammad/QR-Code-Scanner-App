
import '../../../app_barrels.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HistoryController>(() => HistoryController());
    Get.lazyPut<QRScanController>(() => QRScanController(), fenix: true);
    Get.lazyPut<QrDetailController>(() => QrDetailController(), fenix: true);

    /// Generator Controllers
    Get.lazyPut<TextQRGeneratorController>(() => TextQRGeneratorController(), fenix: true);
    Get.lazyPut<EmailQRGeneratorController>(() => EmailQRGeneratorController(), fenix: true);
    Get.lazyPut<WebsiteQRGeneratorController>(() => WebsiteQRGeneratorController(), fenix: true);
    Get.lazyPut<WhatsappQRGeneratorController>(() => WhatsappQRGeneratorController(), fenix: true);
    Get.lazyPut<WifiQRGeneratorController>(() => WifiQRGeneratorController(), fenix: true);
    Get.lazyPut<ContactQRGeneratorController>(() => ContactQRGeneratorController(), fenix: true);
    Get.lazyPut<InstagramQRGeneratorController>(() => InstagramQRGeneratorController(), fenix: true);
    Get.lazyPut<TwitterQRGeneratorController>(() => TwitterQRGeneratorController(), fenix: true);
  }
}
