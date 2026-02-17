import '../../../app_barrels.dart';

class WifiQRGeneratorScreen extends StatelessWidget {
  const WifiQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WifiQRGeneratorController>();
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
                const GeneratorBackHeader(),
                SizedBox(height: 80.h),
                QRDisplayWidget(
                  qrData: controller.qrData,
                  screenshotController: controller.screenshotController,
                ),
                SizedBox(height: 20.h),
                GeneratorInputCard(
                  height: 400.h,
                  icon: AppIcons.wifiIcon,
                  title: AppStrings.networkText,
                  buttonLabel: AppStrings.generateQR,
                  onTap: controller.generateQR,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: AppStrings.networkHintText,
                        controller: controller.networkController,
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppStrings.passwordText,
                          style: AppTextStyles.body,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomTextField(
                        hintText: AppStrings.enterPassword,
                        controller: controller.passwordController,
                      ),
                    ],
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
