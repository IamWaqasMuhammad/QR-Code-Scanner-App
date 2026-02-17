

import 'package:qr_code_scanner/modules/detail/binding/qr_detail_binding.dart';
import 'package:qr_code_scanner/modules/detail/view/qr_detail_screen.dart';
import 'package:qr_code_scanner/modules/history/binding/history_binding.dart';

import '../app_barrels.dart';

import 'package:qr_code_scanner/modules/splash/binding/splash_binding.dart';
import 'package:qr_code_scanner/modules/splash/view/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.scan,
      page: () => QRScanScreen(),
      binding: QRScanBinding(),
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
    GetPage(
      name: AppRoutes.history,
      page: () => HistoryScreen(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => QrDetailScreen(),
      binding: QrDetailBinding(),
    ),
  ];
}
