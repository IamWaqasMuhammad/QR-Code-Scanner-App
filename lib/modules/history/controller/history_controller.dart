
import '../../../app_barrels.dart';

class HistoryController extends GetxController{

  /// Tab Bar
  var currentTab = 0.obs;

  void changeTab(int value){
    currentTab.value=value;
  }


  final tabs = ['Generate History','Scan History'];





}