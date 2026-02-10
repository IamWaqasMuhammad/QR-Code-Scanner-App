import 'package:qr_code_scanner/modules/history/controller/history_controller.dart';
import 'package:qr_code_scanner/modules/history/view/generate_history_tab.dart';
import 'package:qr_code_scanner/modules/history/view/scan_history_tab.dart';

import '../../../app_barrels.dart';

class TabBarContent extends StatelessWidget {
  const TabBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HistoryController>();
    return Obx(
      () => AnimatedSwitcher(
        switchInCurve: Curves.easeIn,
        duration: Duration(milliseconds: 300),
        child: controller.currentTab.value == 0
            ? GenerateHistoryTab()
            : ScanHistoryTab(),
      ),
    );
  }
}
