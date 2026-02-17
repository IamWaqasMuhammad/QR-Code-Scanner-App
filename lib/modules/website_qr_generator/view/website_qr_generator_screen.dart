
import '../../../app_barrels.dart';

class WebsiteQRGeneratorScreen extends StatelessWidget {
  const WebsiteQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WebsiteQRGeneratorController>();
    final detailController = Get.find<QrDetailController>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
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
                ),
                SizedBox(height: 20.h),
                GeneratorInputCard(
                  icon: AppIcons.websiteIcon,
                  title: AppStrings.websiteUrlText,
                  buttonLabel: AppStrings.generateQR,
                  onTap: controller.generateQR,
                  child: CustomTextField(
                    hintText: AppStrings.urlHintText,
                    controller: controller.urlController,
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
