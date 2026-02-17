
import 'package:get/get.dart';
import '../../modules/home/controller/home_controller.dart';
import '../../modules/history/controller/history_controller.dart';
import '../../modules/qr_scan/controller/qr_scan_controller.dart';
import '../../modules/detail/controller/qr_detail_controller.dart';
import '../../modules/generate/controller/generate_controller.dart';
import '../../modules/settings/controller/settings_controller.dart';
import '../../modules/text_qr_generator/controller/text_qr_generator_controller.dart';
import '../../modules/email_qr_generator/controller/email_qr_generator_controller.dart';
import '../../modules/website_qr_generator/controller/website_qr_generator_controller.dart';
import '../../modules/whatsapp_qr_generator/controller/whatsapp_qr_generator_controller.dart';
import '../../modules/wifi_qr_generator/controller/wifi_qr_generator_controller.dart';
import '../../modules/contact_qr_generator/controller/contact_qr_generator_controller.dart';
import '../../modules/instagram_qr_generator/controller/instagram_qr_generator_controller.dart';
import '../../modules/twitter_qr_generator/controller/twitter_qr_generator_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HistoryController>(() => HistoryController());
    Get.lazyPut<QRScanController>(() => QRScanController(), fenix: true);
    Get.lazyPut<QrDetailController>(() => QrDetailController(), fenix: true);
    Get.lazyPut<GenerateController>(() => GenerateController(), fenix: true);
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);

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
