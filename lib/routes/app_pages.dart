import 'package:get/get.dart';
import 'package:qr_code_scanner/app_barrels.dart';
import 'package:qr_code_scanner/modules/contact/binding/contact_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/contact/view/contact_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/email/binding/email_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/email/view/email_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/generate/binding/generate_binding.dart';
import 'package:qr_code_scanner/modules/generate/view/generate_screen.dart';
import 'package:qr_code_scanner/modules/home/binding/home_binding.dart';
import 'package:qr_code_scanner/modules/home/view/home_screen.dart';
import 'package:qr_code_scanner/modules/instagram/binding/instagram_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/instagram/view/instagram_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/scan/binding/scan_binding.dart';
import 'package:qr_code_scanner/modules/settings/binding/settings_binding.dart';
import 'package:qr_code_scanner/modules/settings/view/settings_screen.dart';
import 'package:qr_code_scanner/modules/text_qr_generator/binding/text_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/text_qr_generator/view/text_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/twitter/binding/twitter_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/twitter/view/twitter_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/website/binding/website_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/website/view/website_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/whatsapp/binding/whatsapp_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/whatsapp/view/whatsapp_qr_generator_screen.dart';
import 'package:qr_code_scanner/modules/wifi/binding/wifi_qr_generator_binding.dart';
import 'package:qr_code_scanner/modules/wifi/view/wifi_qr_generator_screen.dart';
import 'package:qr_code_scanner/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.scan,
      page: () => ScanScreen(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: AppRoutes.generate,
      page: () => GenerateScreen(),
      binding: GenerateBinding(),
    ),
    GetPage(
      name: AppRoutes.settings,
      page: () => SettingsScreen(),
      binding: SettingsBinding(),
    ),

    // Add new pages for each generator
    GetPage(
      name: AppRoutes.generateText,
      page: () => TextQRGeneratorScreen(),
      binding: TextQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateWebsite,
      page: () => WebsiteQRGeneratorScreen(),
      binding: WebsiteQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateContact,
      page: () => ContactQRGeneratorScreen(),
      binding: ContactQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateWhatsApp,
      page: () => WhatsAppQRGeneratorScreen(),
      binding: WhatsAppQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateTwitter,
      page: () => TwitterQRGeneratorScreen(),
      binding: TwitterQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateInstagram,
      page: () => InstagramQRGeneratorScreen(),
      binding: InstagramQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateWifi,
      page: () => WifiQRGeneratorScreen(),
      binding: WifiQRGeneratorBinding(),
    ),
    GetPage(
      name: AppRoutes.generateEmail,
      page: () => EmailQRGeneratorScreen(),
      binding: EmailQRGeneratorBinding(),
    ),
  ];
}
