import '../../../app_barrels.dart';

class EmailQRGeneratorScreen extends StatelessWidget {
  const EmailQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EmailQRGeneratorController>();
    final detailController = Get.find<QrDetailController>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: SingleChildScrollView(
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
                Obx(() => AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: controller.qrData.value.isEmpty
                      ? const SizedBox()
                      : Center(
                    key: ValueKey(controller.qrData.value),
                    child: Container(
                      height: 335.h,
                      width: 335.h,
                      decoration: BoxDecoration(
                        color: AppColors.blackColor.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Screenshot(
                            controller: controller.screenshotController,
                            child: QrImageView(
                              data: controller.qrData.value,
                              size: 200,
                              backgroundColor: AppColors.whiteGrayColor,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                onTap: () => detailController.downloadQr(controller.screenshotController),
                                height: 35.h,
                                width: 35.w,
                                color: AppColors.primaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8.r),
                                child: Icon(Icons.download, color: AppColors.primaryColor, size: 18.sp),
                              ),
                              SizedBox(width: 15.w),
                              CustomButton(
                                onTap: () => detailController.shareQr(controller.screenshotController, controller.qrData.value),
                                height: 35.h,
                                width: 35.w,
                                color: AppColors.primaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8.r),
                                child: Icon(Icons.share, color: AppColors.primaryColor, size: 18.sp),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          CustomButton(
                            onTap: () => detailController.openUrl(controller.qrData.value),
                            height: 40.h,
                            width: 140.w,
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email,
                                  color: AppColors.bgColor,
                                  size: 16.sp,
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                  'Open Email',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Itim',
                                    color: AppColors.bgColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Container(
                    height: 335.h,
                    width: 335.h,
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
                              AppIcons.emailIcon,
                              height: 50.h,
                              width: 50.w,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            AppStrings.emailText,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Itim',
                              color: AppColors.whiteGrayColor,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          CustomTextField(
                            hintText: AppStrings.enterEmail,
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 50.h),
                          Center(
                            child: CustomButton(
                              height: 60.h,
                              width: 180.w,
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                              onTap: controller.generateQR,
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
      ),
    );
  }
}
