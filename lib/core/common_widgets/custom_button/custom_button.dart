import '../../../app_barrels.dart';

class CustomButton extends StatelessWidget {
  final double? height, width;
  final Color? color;
  final BoxShape boxShape;
  final BorderRadiusGeometry? borderRadius;
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
    this.borderRadius,
    this.boxShadow,
    required this.child,
    required this.onTap,
    this.splashColor,
    this.highlightedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: color,
        shape: boxShape,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor ?? AppColors.primaryColor.withOpacity(0.3),
        highlightColor: highlightedColor ?? AppColors.primaryColor.withOpacity(0.3),
        borderRadius: borderRadius as BorderRadius?,
        child: Container(
          height: height,
          width: width,
          child: Center(child: child),
        ),
      ),
    );
  }
}