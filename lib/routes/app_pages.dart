import 'package:get/get.dart';
import 'package:qr_code_scanner/app_barrels.dart';
import 'package:qr_code_scanner/modules/generate/binding/generate_binding.dart';
import 'package:qr_code_scanner/modules/generate/view/generate_screen.dart';
import 'package:qr_code_scanner/modules/home/binding/home_binding.dart';
import 'package:qr_code_scanner/modules/home/view/home_screen.dart';
import 'package:qr_code_scanner/modules/scan/binding/scan_binding.dart';
import 'package:qr_code_scanner/modules/settings/binding/settings_binding.dart';
import 'package:qr_code_scanner/modules/settings/view/settings_screen.dart';
import 'package:qr_code_scanner/routes/app_routes.dart';

class AppPages {
  final pages = [
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
  ];
}
