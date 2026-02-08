import 'package:get/get.dart';

class SettingsController extends GetxController{


  var isPushEnable = false.obs;
  var isVibrate = false.obs;
  var isBeep = false.obs;


  /// Push Notification Switch
  void isPushEnabled(bool value){
    isPushEnable.value=value;
  }

  /// Push Notification Switch
  void isVibrated(bool value){
    isVibrate.value=value;
  }

  /// Push Notification Switch
  void isBeeped(bool value){
    isBeep.value=value;
  }


}