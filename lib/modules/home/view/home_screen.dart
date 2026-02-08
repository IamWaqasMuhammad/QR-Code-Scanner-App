

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_barrels.dart';

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
      floatingActionButton: Container(
      height: 68.h,
      width: 68.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.35),
            blurRadius: 24,
          ),
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: AppColors.primaryColor.withOpacity(0.2),
        elevation: 0,
        shape: const CircleBorder(),
        tooltip: 'Scan QR Code',
        onPressed: () => Get.to(const ScanScreen()),
        child: Image.asset(AppIcons.scanIcon,height: 40.h,width: 40.w,)
      ),
    ),

    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 90.h,

        shape: const CircularNotchedRectangle(),
        color: Colors.transparent,
        child: CustomNavbar(),
      ),

    );
  }
}
