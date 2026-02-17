
import '../../../app_barrels.dart';


class QrDetailScreen extends StatelessWidget {
  final String? code;
  final Function()? closeScreen;

  const QrDetailScreen({super.key, this.code, this.closeScreen});

  @override
  Widget build(BuildContext context) {
    final scanController = Get.find<QRScanController>();
    final detailController = Get.find<QrDetailController>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
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
                    SizedBox(width: 20.w),
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
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title:',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 24.sp,
                                fontFamily: 'Itim',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              code ?? 'No code available',
                              style: TextStyle(
                                color: AppColors.whiteGrayColor,
                                fontSize: 18.sp,
                                fontFamily: 'Itim',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 30.h),
                            Text(
                              'QR Code: ',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 24,
                                fontFamily: 'Itim',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Center(
                              child: Screenshot(
                                controller: scanController.screenshotController,
                                child: QrImageView(
                                  data: code.toString(),
                                  size: 200,
                                  backgroundColor: AppColors.whiteGrayColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 50.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: CustomButton(
                                    onTap: () {
                                      Clipboard.setData(
                                        ClipboardData(text: code!),
                                      );
                                    },
                                    height: 50.h,
                                    width: 170.w,
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12.r),
                                    splashColor: AppColors.whiteGrayColor
                                        .withValues(alpha: 0.2),
                                    highlightedColor: AppColors.whiteGrayColor
                                        .withValues(alpha: 0.2),
                                    child: Text(
                                      'Copy',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: 'Itim',
                                        color: AppColors.whiteGrayColor,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Center(
                                  child: CustomButton(
                                    onTap: scanController.downloadQr,
                                    height: 50.h,
                                    width: 170.w,
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12.r),
                                    splashColor: AppColors.whiteGrayColor
                                        .withValues(alpha: 0.2),
                                    highlightedColor: AppColors.whiteGrayColor
                                        .withValues(alpha: 0.2),
                                    child: Text(
                                      'Download',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: 'Itim',
                                        color: AppColors.whiteGrayColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Center(
                              child: CustomButton(
                                onTap: () => detailController.shareQr(scanController.screenshotController, code),
                                height: 50.h,
                                width: 170.w,
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                                splashColor: AppColors.whiteGrayColor
                                    .withValues(alpha: 0.2),
                                highlightedColor: AppColors.whiteGrayColor
                                    .withValues(alpha: 0.2),
                                child: Text(
                                  'Share',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: 'Itim',
                                    color: AppColors.whiteGrayColor,
                                  ),
                                ),
                              ),
                            ),
                            // Open Link button - only show if code is a valid URL
                            if (detailController.isValidUrl(code)) ...[
                              SizedBox(height: 10.h),
                              Center(
                                child: CustomButton(
                                  onTap: () => detailController.openUrl(code),
                                  height: 50.h,
                                  width: 170.w,
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(12.r),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.open_in_browser,
                                        color: AppColors.bgColor,
                                        size: 20.sp,
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        'Open Link',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: 'Itim',
                                          color: AppColors.bgColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
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
