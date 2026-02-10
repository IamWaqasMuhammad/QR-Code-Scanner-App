import 'package:qr_code_scanner/core/common_widgets/custom_tab_bar/custom_tab_bar.dart';
import 'package:qr_code_scanner/core/common_widgets/custom_tab_bar/tab_bar_content.dart';

import '../../../app_barrels.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50.h),
        Center(
          child: Text(
            'Your History!',
            style: TextStyle(
              color: AppColors.whiteGrayColor,
              fontFamily: 'Itim',
              fontSize: 30.sp,
            ),
          ),
        ),
        SizedBox(height: 20.h),

        CustomTabBar(),
        Expanded(child: TabBarContent()),
      ],
    );
  }
}
