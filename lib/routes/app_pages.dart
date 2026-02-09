

import '../app_barrels.dart';

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
