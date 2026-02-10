import '../../../app_barrels.dart';

class QrDetailScreen extends StatelessWidget {
  const QrDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: CustomButton(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackColor.withValues(alpha: 0.5),
                          // Add opacity
                          blurRadius: 12,
                        ),
                      ],
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.primaryColor,
                        size: 20.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Text(
                    'Your generated QR Code',
                    style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 24.sp,
                      color: AppColors.whiteGrayColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Center(
                child: Container(
                  height: 500.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(15.r),

                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 12.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 24.sp,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Portfolio',
                          style: TextStyle(
                            color: AppColors.whiteGrayColor,
                            fontSize: 20.sp,
                            fontFamily: 'Itim',
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          'QR Code',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 24,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Center(
                          child: Icon(
                            Icons.qr_code_2,
                            size: 200,
                            color: AppColors.whiteGrayColor,
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: CustomButton(
                            onTap: () {
                            },
                            color: AppColors.primaryColor,
                            height: 50.h,
                            width: 200.w,
                            borderRadius: BorderRadius.circular(12.r),
                            splashColor: AppColors.whiteGrayColor.withValues(alpha: 0.2),
                            highlightedColor: AppColors.whiteGrayColor.withValues(alpha: 0.2),
                            child: Text('Download QR Code'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
