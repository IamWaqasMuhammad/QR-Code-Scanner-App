
import '../../../app_barrels.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primaryColor,
              AppColors.bgColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Icon(
                Icons.qr_code_scanner_rounded,
                size: 100.sp,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              AppStrings.appName,
              style: AppTextStyles.heading,
            ),
            SizedBox(height: 10.h),
            Text(
              'Scan & Generate Instantly',
              style: AppTextStyles.title.copyWith(
                color: AppColors.whiteGrayColor.withOpacity(0.8),
              ),
            ),
            SizedBox(height: 50.h),
            SizedBox(
              width: 40.w,
              height: 40.h,
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
                strokeWidth: 3,
              ),
            ),
            SizedBox(height: 60.h),
            Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Developed by ',
                          style: AppTextStyles.caption.copyWith(
                            color: AppColors.whiteGrayColor.withValues(alpha: 0.5),
                          ),
                        ),
                        TextSpan(
                          text: 'Waqas DevelopeR',
                          style: AppTextStyles.bodyBold,
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
