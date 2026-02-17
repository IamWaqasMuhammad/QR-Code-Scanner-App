import 'package:qr_code_scanner/app_barrels.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingsController>();
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
                const GeneratorBackHeader(),
                SizedBox(height: 50.h),
                Text(
                  AppStrings.settingsText,
                  style: AppTextStyles.subHeading.copyWith(color: AppColors.primaryColor),
                ),
                SizedBox(height: 15.h),
                Obx(() => SettingsTile(
                  title: AppStrings.pushNotificationText,
                  subtitle: AppStrings.pushNotificationSubtitle,
                  icon: Icons.notifications_outlined,
                  isToggle: true,
                  toggleValue: controller.isPushEnable.value,
                  onToggleChanged: controller.isPushEnabled,
                )),
                Obx(() => SettingsTile(
                  title: AppStrings.vibrateText,
                  subtitle: AppStrings.vibrateSubTitle,
                  icon: Icons.vibration_outlined,
                  isToggle: true,
                  toggleValue: controller.isVibrate.value,
                  onToggleChanged: controller.isVibrated,
                )),
                SizedBox(height: 5.h),
                Obx(() => SettingsTile(
                  title: AppStrings.beepText,
                  subtitle: AppStrings.beepSubTitle,
                  icon: Icons.volume_up_outlined,
                  isToggle: true,
                  toggleValue: controller.isBeep.value,
                  onToggleChanged: controller.isBeeped,
                )),
                SizedBox(height: 30.h),
                Text(
                  AppStrings.supportText,
                  style: AppTextStyles.subHeading.copyWith(color: AppColors.primaryColor),
                ),
                SizedBox(height: 15.h),
                SettingsTile(
                  title: AppStrings.rateUsText,
                  subtitle: AppStrings.rateUsSubtitle,
                  icon: Icons.star_border_outlined,
                ),
                SizedBox(height: 5.h),
                SettingsTile(
                  title: AppStrings.shareText,
                  subtitle: AppStrings.shareSubTitle,
                  icon: Icons.share,
                ),
                SettingsTile(
                  title: AppStrings.privacyPolicyText,
                  subtitle: AppStrings.privacyPolicySubTitle,
                  icon: Icons.privacy_tip_outlined,
                ),
                SizedBox(height: 30.h),
                Text(
                  AppStrings.aboutText,
                  style: AppTextStyles.subHeading.copyWith(color: AppColors.primaryColor),
                ),
                SizedBox(height: 15.h),
                SettingsTile(
                  title: AppStrings.versionText,
                  subtitle: AppStrings.versionNumber,
                  icon: Icons.info_outline,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
