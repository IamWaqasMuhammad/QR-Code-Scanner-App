
import 'package:get_storage/get_storage.dart';
import 'package:qr_code_scanner/app_barrels.dart';
import 'package:qr_code_scanner/routes/app_pages.dart';
import 'package:qr_code_scanner/core/bindings/initial_binding.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
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
          initialBinding: InitialBinding(),
          initialRoute: AppRoutes.splash,
          getPages: AppPages.pages,
          builder: (context, widget) {
            return widget!;
          },
        );
      },
    );
  }
}
