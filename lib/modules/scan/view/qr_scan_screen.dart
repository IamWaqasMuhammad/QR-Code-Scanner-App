import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_scanner/modules/scan/controller/qr_scan_controller.dart';

import '../../../app_barrels.dart';

class QRScanScreen extends StatelessWidget {
  const QRScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QRScanController>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h,),
              Expanded(
                child: Column(
                  children: [
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
                        SizedBox(width: 10.w,),
                        Center(
                          child: Text(
                            'Scan your QR code ',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontFamily: 'Itim',
                              fontWeight: FontWeight.bold,
                              color: AppColors.whiteGrayColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: MobileScanner(
                                onDetect: controller.onDetect,
                                controller: controller.mobileScannerController,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Developed by ',
                          style: TextStyle(
                            fontFamily: 'Itim',
                            fontSize: 14,
                            color: AppColors.whiteGrayColor.withValues(alpha: 0.5),
                          ),
                        ),
                        TextSpan(
                          text: 'Waqas DevelopeR',
                          style: TextStyle(
                            fontFamily: 'Itim',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteGrayColor,
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
