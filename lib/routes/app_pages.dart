

import 'package:get/get.dart';
import 'package:qr_code_scanner/modules/home/binding/home_binding/home_binding.dart';
import 'package:qr_code_scanner/modules/home/view/home_screen.dart';
import 'package:qr_code_scanner/routes/app_routes.dart';

class AppPages {

  final pages = [
    GetPage(name: AppRoutes.home, page:()=> HomeScreen(),binding: HomeBinding())
  ];
}