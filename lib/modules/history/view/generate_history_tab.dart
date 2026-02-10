import 'package:qr_code_scanner/modules/detail/view/qr_detail_screen.dart';
import 'package:qr_code_scanner/modules/history/widgets/qr_history_item.dart';

import '../../../app_barrels.dart';

class GenerateHistoryTab extends StatelessWidget {
  const GenerateHistoryTab({super.key});

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
                imgPath: AppIcons.generateIcon,
                type: 'URL',
                appName: 'Portfolio',
                dateTime: DateTime.now(),
                onDelete: () {
                  Get.snackbar(
                    'Deleted',
                    'Delete Successfully!',
                    backgroundColor: Colors.red.withValues(alpha: 0.4),
                  );
                },
                onTap: () {
                  Get.to(QrDetailScreen());
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
