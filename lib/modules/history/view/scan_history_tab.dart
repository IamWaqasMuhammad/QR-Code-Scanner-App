import 'package:qr_code_scanner/modules/history/widgets/qr_history_item.dart';

import '../../../app_barrels.dart';

class ScanHistoryTab extends StatelessWidget {
  const ScanHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return QRHistoryItem(
                imgPath: AppIcons.scanIcon,
                type: 'Scan',
                appName: 'WhatsApp',
                dateTime: DateTime.now(),
                onDelete: () {
                  Get.snackbar(
                    'Deleted',
                    'Delete Successfully!',
                    backgroundColor: Colors.red.withValues(alpha: 0.4),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
