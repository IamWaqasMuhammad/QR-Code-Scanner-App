import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/routes/app_pages.dart';
import 'package:qr_code_scanner/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QR Code Scanner',
      initialRoute: AppRoutes.home,
      getPages: AppPages().pages,
    );
  }
}

