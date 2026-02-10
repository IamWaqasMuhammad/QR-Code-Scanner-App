import '../../../app_barrels.dart';

class NavbarItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavbarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15).r,
      splashColor: AppColors.whiteGrayColor.withValues(alpha: 0.3),
      highlightedColor: AppColors.whiteGrayColor.withValues(alpha: 0.3),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24.h,
              width: 24.w,
              color: isSelected ? AppColors.primaryColor : Colors.grey,
            ),
            SizedBox(height: 2.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Itim',
                color: isSelected ? AppColors.primaryColor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
