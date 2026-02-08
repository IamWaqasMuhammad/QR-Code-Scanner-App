import 'package:flutter/material.dart';
import 'package:qr_code_scanner/app_barrels.dart';
import 'package:qr_code_scanner/core/common_widgets/custom_button/custom_button.dart';
import 'package:qr_code_scanner/modules/settings/controller/settings_controller.dart';
import 'package:qr_code_scanner/modules/settings/widgets/settings_tiles.dart';

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
                SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: CustomButton(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.5),
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
                SizedBox(height: 50.h),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontFamily: 'Itim',
                    fontSize: 26.sp,
                  ),
                ),
                SizedBox(height: 15.h,),
                Obx(()=>SettingsTile(
                  title: 'Push Notification',
                  subtitle: 'Enable/Disable push notification',
                  icon: Icons.notifications_outlined,
                  isToggle: true,
                  toggleValue: controller.isPushEnable.value,
                  onToggleChanged: controller.isPushEnabled,
                ),),
                Obx(()=>SettingsTile(
                  title: 'Vibrate',
                  subtitle: 'vibrate when scan is done',
                  icon: Icons.vibration_outlined,
                  isToggle: true,
                  toggleValue: controller.isVibrate.value,
                  onToggleChanged: controller.isVibrated,
                ),),
                SizedBox(height: 5.h,),
                Obx(()=>SettingsTile(
                  title: 'Beep',
                  subtitle: 'Beep when scan is done',
                  icon: Icons.volume_up_outlined,
                  isToggle: true,
                  toggleValue: controller.isBeep.value,
                  onToggleChanged:controller.isBeeped,
                ),),
                SizedBox(height: 30.h),
                Text(
                  'Support',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontFamily: 'Itim',
                    fontSize: 26.sp,
                  ),
                ),
                SizedBox(height: 15.h,),
                SettingsTile(
                  title: 'Rate Us',
                  subtitle: 'Your best reward to us.',
                  icon: Icons.star_border_outlined,
                ),
                SizedBox(height: 5.h,),
                SettingsTile(
                  title: 'Share',
                  subtitle: 'Share with others',
                  icon: Icons.share,
                ),
                SettingsTile(
                  title: 'Privacy Policy',
                  subtitle: 'Follow our policies that benefits you.',
                  icon: Icons.privacy_tip_outlined,
                ),
                SizedBox(height: 30.h),
                Text(
                  'About',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontFamily: 'Itim',
                    fontSize: 26.sp,
                  ),
                ),
                SizedBox(height: 15.h,),
                SettingsTile(
                  title: 'Version',
                  subtitle: '1.0.0',
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
