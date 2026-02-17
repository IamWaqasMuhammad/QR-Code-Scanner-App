import 'package:qr_code_scanner/modules/detail/view/qr_detail_screen.dart';
import 'package:qr_code_scanner/modules/history/widgets/qr_history_item.dart';
import '../../../app_barrels.dart';

class GenerateHistoryTab extends StatelessWidget {
  const GenerateHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HistoryController>();

    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        );
      }

      final items = controller.generateHistory;
      if (items.isEmpty) {
        return Center(
          child: Text(
            'No generate history found',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16.sp,
              fontFamily: 'Itim',
            ),
          ),
        );
      }

      return ListView.builder(
        itemCount: items.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = items[index];
          return QRHistoryItem(
            imgPath: AppIcons.generateIcon,
            type: item.type,
            appName: item.data,
            dateTime: DateTime.parse(item.dateTime),
            onDelete: () {
              controller.deleteHistoryItem(item);
              Get.snackbar(
                'Deleted',
                'History item removed',
                backgroundColor: Colors.red.withValues(alpha: 0.4),
                colorText: Colors.white,
              );
            },
            onTap: () {
              Get.to(QrDetailScreen(code: item.data));
            },
          );
        },
      );
    });
  }
}
