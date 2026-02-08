import 'package:qr_code_scanner/app_barrels.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isToggle;
  final bool? toggleValue;
  final Function(bool)? onToggleChanged;

  const SettingsTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.icon,
    this.onTap,
    this.isToggle = false,
    this.toggleValue,
    this.onToggleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(
            icon,
            color: AppColors.primaryColor,
            size: 20.sp,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.whiteGrayColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Itim',
          ),
        ),
        subtitle: Text(
          subtitle!,
          style: TextStyle(
            color: AppColors.whiteGrayColor.withOpacity(0.6),
            fontSize: 12.sp,
            fontFamily: 'Itim',
          ),
        ),
        trailing: isToggle
            ? Switch(
          value: toggleValue ?? false,
          onChanged: onToggleChanged,
          activeThumbColor: AppColors.primaryColor,
        )
            : Icon(
          Icons.chevron_right,
          color: AppColors.whiteGrayColor.withOpacity(0.5),
          size: 20.sp,
        ),
      ),
    );
  }
}