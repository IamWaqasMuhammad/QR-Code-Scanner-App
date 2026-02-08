import '../../../app_barrels.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Text('No QR Code Generated!',style: TextStyle(fontSize: 26,fontFamily: 'Itim',color: AppColors.whiteGrayColor),))
      ],
    );
  }
}
