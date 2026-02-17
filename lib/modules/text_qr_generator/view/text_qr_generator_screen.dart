
import '../../../app_barrels.dart';

class TextQRGeneratorScreen extends StatelessWidget {
  const TextQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TextQRGeneratorController>();
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
                  onOpenUrl: detailController.isValidUrl(
                      controller.qrData.value)
                      ? () => detailController.openUrl(controller.qrData.value)
                      : null,
                ),
                SizedBox(height: 20.h),
                GeneratorInputCard(
                  icon: AppIcons.textIcon,
                  title: AppStrings.text,
                  buttonLabel: AppStrings.generateQR,
                  onTap: controller.generateQR,
                  child: CustomTextField(
                    hintText: AppStrings.enterTextHint,
                    controller: controller.textController,
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
