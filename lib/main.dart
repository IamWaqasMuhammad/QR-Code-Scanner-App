import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/routes/app_pages.dart';
import 'package:qr_code_scanner/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'QR Code Scanner',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.home,
          getPages: AppPages.pages,
          builder: (context, widget) {
            return widget!;
          },
        );
      },
    );
  }
}
