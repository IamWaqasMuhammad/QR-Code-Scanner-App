
import '../../../app_barrels.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HistoryController>();
    return Center(
      child: Obx(
        () => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            height: 60.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.blackColor.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(controller.tabs.length, (index) {
                final isSelected = controller.currentTab.value == index;
                return CustomButton(
                  height: 60.h,
                  width: 192.w,
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primaryColor.withValues(alpha: 0.8)
                          : AppColors.transparentColor,
                      borderRadius: BorderRadius.circular(12.r),

                    ),
                    child: Center(child: Text(controller.tabs[index],style: TextStyle(
                      color: isSelected?AppColors.bgColor:AppColors.whiteGrayColor,
                      fontFamily: 'Itim',
                      fontSize: 18.sp
                    ),)),
                  ),
                  onTap: () => controller.changeTab(index),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
