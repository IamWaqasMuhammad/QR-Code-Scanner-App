
import '../../../app_barrels.dart';

class TwitterQRGeneratorScreen extends StatelessWidget {
  const TwitterQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TwitterQRGeneratorController>();
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
                const GeneratorBackHeader(),
                SizedBox(height: 80.h),
                QRDisplayWidget(
                  qrData: controller.qrData,
                  screenshotController: controller.screenshotController,
                  onOpenUrl: () => detailController.openUrl(controller.qrData.value),
                  openUrlLabel: 'Open Twitter',
                  openUrlIcon: Icons.open_in_browser,
                ),
                SizedBox(height: 20.h),
                GeneratorInputCard(
                  icon: AppIcons.twitterIcon,
                  title: AppStrings.usernameText,
                  buttonLabel: AppStrings.generateQR,
                  onTap: controller.generateQR,
                  child: CustomTextField(
                    hintText: AppStrings.twitterUsername,
                    controller: controller.usernameController,
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
