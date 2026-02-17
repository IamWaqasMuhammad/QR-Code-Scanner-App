
import '../../../app_barrels.dart';

class GenerateScreen extends StatelessWidget {
  GenerateScreen({super.key});




  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GenerateController>();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.generateQR,
                  style: TextStyle(
                    color: AppColors.whiteGrayColor,
                    fontFamily: 'Itim',
                    fontSize: 26.sp,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: CustomButton(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withValues(alpha: 0.5),
                        blurRadius: 12,
                      ),
                    ],
                    onTap: () => Get.toNamed(AppRoutes.settings),
                    child: Icon(
                      Icons.settings_outlined,
                      color: AppColors.primaryColor,
                      size: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              AppStrings.generateQRSubTitle,
              style: TextStyle(
                fontFamily: 'Itim',
                fontSize: 18.sp,
                color: AppColors.whiteGrayColor.withValues(alpha: 0.4),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: GridView.builder(
                shrinkWrap: false,
                itemCount: controller.platforms.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  final platform = controller.platforms[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: CustomButton(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black,
                      onTap: () {
                        Get.toNamed(platform['route'] as String);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            platform['icon']!,
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            platform['label']!,
                            style: AppTextStyles.body,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
