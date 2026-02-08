import '../../../app_barrels.dart';

class CustomButton extends StatelessWidget {
  final double? height, width;
  final Color? color;
  final BoxShape boxShape;
  final double borderRadius;
  final List<BoxShadow>? boxShadow;
  final Widget child;
  final void Function()? onTap;
  final Color? splashColor, highlightedColor;

  const CustomButton({
    super.key,
    this.height,
    this.width,
    this.color,
    this.boxShape = BoxShape.rectangle,
    this.borderRadius = 8,
    this.boxShadow,
    required this.child,
    required this.onTap,
    this.splashColor,
    this.highlightedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor ?? AppColors.primaryColor.withOpacity(0.2),
        highlightColor:
            highlightedColor ?? AppColors.primaryColor.withOpacity(0.2),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: boxShape,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: boxShadow,
          ),
          child: child,
        ),
      ),
    );
  }
}
