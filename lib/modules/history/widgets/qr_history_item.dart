import 'package:qr_code_scanner/app_barrels.dart';

class QRHistoryItem extends StatelessWidget {
  final String type;
  final String appName;
  final DateTime dateTime;
  final VoidCallback onDelete;
  final Color backgroundColor;
  final Color deleteIconColor;
  final void Function()? onTap;
  final String? imgPath;

  const QRHistoryItem({
    super.key,
    required this.type,
    required this.appName,
    required this.dateTime,
    required this.onDelete,
    this.backgroundColor = Colors.black,
    this.deleteIconColor = Colors.red,
    this.onTap,
    required this.imgPath,
  });

  String _formatDateTime() {
    final date = '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    final time =
        '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    return '$date - $time';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 85.h,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
        child: CustomButton(
            onTap: onTap,
            color: backgroundColor.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(15.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Image.asset(
                    imgPath!,
                    height: 22.h,
                    width: 22.w,
                    color: Colors.white,
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          type,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          appName,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14.sp,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 5.h),
                      CustomButton(
                        onTap: onDelete,
                        height: 30,
                        width: 30,
                        borderRadius: BorderRadius.circular(10),
                        child: Icon(Icons.delete_forever, color: Colors.red),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        _formatDateTime(),
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 10.sp,
                          fontFamily: 'Itim',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      )
    );
  }
}
