

import '../../../app_barrels.dart';

class ContactQRGeneratorScreen extends StatelessWidget {
  const ContactQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
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
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.primaryColor,
                    size: 20.sp,
                  ),
                ),
              ),
              SizedBox(height: 80.h),
              Center(
                child: Container(
                  height: 450.h,
                  width: 350.h,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor.withValues(alpha: 0.3),

                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.w,
                      vertical: 18.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Center(
                          child: Image.asset(
                            AppIcons.contactIcon,
                            height: 50.h,
                            width: 50.w,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          AppStrings.nameText,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Itim',
                            color: AppColors.whiteGrayColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        CustomTextField(hintText: AppStrings.enterTextHint),
                        SizedBox(height: 10.h),
                        Text(
                          AppStrings.contactNumber,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Itim',
                            color: AppColors.whiteGrayColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        CustomTextField(
                          hintText: AppStrings.enterNumberHintText,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: CustomButton(
                            height: 60.h,
                            width: 180.w,
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {},
                            child: Text(
                              AppStrings.generateQR,
                              style: TextStyle(
                                fontFamily: 'Itim',
                                fontSize: 16,
                                color: AppColors.bgColor,
                              ),
                            ),
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
