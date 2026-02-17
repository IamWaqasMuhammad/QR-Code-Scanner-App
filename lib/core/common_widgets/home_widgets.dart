import '../../app_barrels.dart';

class HomeMainFAB extends StatelessWidget {
  const HomeMainFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onPressed: () {
          Get.to(const QRScanScreen());
        },
        child: Image.asset(AppIcons.scanIcon, height: 40.h, width: 40.w),
      ),
    );
  }
}

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
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
    );
  }
}
