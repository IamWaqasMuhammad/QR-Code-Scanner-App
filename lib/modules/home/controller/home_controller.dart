
import '../../../app_barrels.dart';

class HomeController extends GetxController{

  var currentIndex=0.obs;

  void changeTab(int value){
    currentIndex.value=value;
  }



  /// NavBar Screens List
  List<Widget> screens =[
    GenerateScreen(),
    HistoryScreen(),
  ];

  /// Icon List
  List<String> icons =[
    AppIcons.generateIcon,
    AppIcons.historyIcon
  ];

  /// NavBar Icons Labels
  List<String> labels =[
    AppStrings.generateText,
    AppStrings.historyText
  ];

}