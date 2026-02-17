
import 'package:get_storage/get_storage.dart';
import '../../../app_barrels.dart';

class SettingsController extends GetxController {
  final _storage = GetStorage();

  var isPushEnable = false.obs;
  var isVibrate = false.obs;
  var isBeep = false.obs;

  @override
  void onInit() {
    super.onInit();
    /// Load values from storage
    isPushEnable.value = _storage.read('isPushEnable') ?? false;
    isVibrate.value = _storage.read('isVibrate') ?? false;
    isBeep.value = _storage.read('isBeep') ?? false;
  }

  /// Push Notification Switch
  void isPushEnabled(bool value) {
    isPushEnable.value = value;
    _storage.write('isPushEnable', value);
  }

  /// Vibration Switch
  void isVibrated(bool value) {
    isVibrate.value = value;
    _storage.write('isVibrate', value);
  }

  /// Beep Switch
  void isBeeped(bool value) {
    isBeep.value = value;
    _storage.write('isBeep', value);
  }
}