

import '../../../app_barrels.dart';

class ContactQRGeneratorScreen extends StatelessWidget {
  const ContactQRGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ContactQRGeneratorController>();
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
                ),
                SizedBox(height: 20.h),
                GeneratorInputCard(
                  height: 400.h,
                  icon: AppIcons.contactIcon,
                  title: AppStrings.nameText,
                  buttonLabel: AppStrings.generateQR,
                  onTap: controller.generateQR,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: AppStrings.enterTextHint,
                        controller: controller.nameController,
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppStrings.contactNumber,
                          style: AppTextStyles.body,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomTextField(
                        hintText: AppStrings.enterNumberHintText,
                        controller: controller.phoneController,
                        keyboardType: TextInputType.number,
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
