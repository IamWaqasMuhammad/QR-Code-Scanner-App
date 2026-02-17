import '../../app_barrels.dart';

class GeneratorBackHeader extends StatelessWidget {
  final VoidCallback? onTap;
  const GeneratorBackHeader({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        onTap: onTap ?? () => Get.back(),
        child: Icon(
          Icons.arrow_back,
          color: AppColors.primaryColor,
          size: 20.sp,
        ),
      ),
    );
  }
}

class QRDisplayWidget extends StatelessWidget {
  final RxString qrData;
  final ScreenshotController screenshotController;
  final String? openUrlLabel;
  final VoidCallback? onOpenUrl;

  final IconData? openUrlIcon;

  const QRDisplayWidget({
    super.key,
    required this.qrData,
    required this.screenshotController,
    this.openUrlLabel,
    this.onOpenUrl,
    this.openUrlIcon,
  });

  @override
  Widget build(BuildContext context) {
    final detailController = Get.find<QrDetailController>();
    return Obx(() => AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: qrData.value.isEmpty
          ? const SizedBox()
          : Center(
        key: ValueKey(qrData.value),
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
                controller: screenshotController,
                child: QrImageView(
                  data: qrData.value,
                  size: 200,
                  backgroundColor: AppColors.whiteGrayColor,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onTap: () => detailController.downloadQr(screenshotController),
                    height: 35.h,
                    width: 35.w,
                    color: AppColors.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                    child: Icon(Icons.download, color: AppColors.primaryColor, size: 18.sp),
                  ),
                  SizedBox(width: 15.w),
                  CustomButton(
                    onTap: () => detailController.shareQr(screenshotController, qrData.value),
                    height: 35.h,
                    width: 35.w,
                    color: AppColors.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                    child: Icon(Icons.share, color: AppColors.primaryColor, size: 18.sp),
                  ),
                ],
              ),
              if (onOpenUrl != null) ...[
                SizedBox(height: 10.h),
                CustomButton(
                  onTap: onOpenUrl,
                  height: 40.h,
                  width: 140.w,
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        openUrlIcon ?? Icons.open_in_browser,
                        color: AppColors.bgColor,
                        size: 16.sp,
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        openUrlLabel ?? 'Open Link',
                        style: AppTextStyles.body.copyWith(color: AppColors.bgColor, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    ),
    );
  }
}

class GeneratorInputCard extends StatelessWidget {
  final String icon;
  final String title;
  final Widget child;
  final String buttonLabel;
  final VoidCallback onTap;

  const GeneratorInputCard({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
    required this.buttonLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 335.h,
        width: 335.h,
        decoration: BoxDecoration(
          color: AppColors.blackColor.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Image.asset(icon, height: 50.h, width: 50.w),
              ),
              SizedBox(height: 20.h),
              Text(title, style: AppTextStyles.body),
              SizedBox(height: 8.h),
              child,
              const Spacer(),
              Center(
                child: CustomButton(
                  height: 60.h,
                  width: 180.w,
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  onTap: onTap,
                  child: Text(
                    buttonLabel,
                    style: AppTextStyles.body.copyWith(color: AppColors.bgColor),
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
