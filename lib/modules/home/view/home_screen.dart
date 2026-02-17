import '../../../app_barrels.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.screens,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: Container(
        height: 68.h,
        width: 68.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: 0.35),
              blurRadius: 24,
            ),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: AppColors.primaryColor.withValues(alpha: 0.2),
          elevation: 0,
          shape: const CircleBorder(),
          tooltip: AppStrings.scanToolTip,
          onPressed:(){
            Get.to(QRScanScreen());
          },
          child: Image.asset(AppIcons.scanIcon, height: 40.h, width: 40.w),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ).r,
          child: BottomAppBar(
            height: 80.h,
            notchMargin: 10,
            elevation: 3,
            shape: const CircularNotchedRectangle(),
            color: AppColors.blackColor,
            child: const CustomNavbar(),
          ),
        ),
      ),
    );
  }
}
