import '../../../app_barrels.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Scan Screen',style: TextStyle(fontSize: 26,fontFamily: 'Itim',color: AppColors.whiteGrayColor),))
        ],
      ),
    );
  }
}
