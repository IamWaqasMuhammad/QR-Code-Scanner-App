import 'package:qr_code_scanner/app_barrels.dart';
import 'package:qr_code_scanner/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926), /// My Figma Design Size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          initialBinding: HomeBinding(),
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
