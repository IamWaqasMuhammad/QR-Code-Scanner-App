
import 'package:get_storage/get_storage.dart';
import '../../../core/models/history_model.dart';
import '../../../app_barrels.dart';

class HistoryController extends GetxController {
  final _storage = GetStorage();
  final String _historyKey = 'history_items';

  var currentTab = 0.obs;
  var historyItems = <HistoryItem>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadHistory();
  }

  void changeTab(int value) {
    currentTab.value = value;
  }

  final tabs = ['Generate History', 'Scan History'];

  void loadHistory() async {
    isLoading.value = true;
    
    // Simulate slight loading delay for smoother UX
    await Future.delayed(const Duration(milliseconds: 500));

    final List<dynamic>? storedItems = _storage.read(_historyKey);
    if (storedItems != null) {
      historyItems.value = storedItems
          .map((item) => HistoryItem.fromJson(Map<String, dynamic>.from(item)))
          .toList();
    }
    isLoading.value = false;
  }

  void addToHistory(HistoryItem item) {
    historyItems.add(item);
    _saveHistory();
  }

  void deleteHistoryItem(HistoryItem item) {
    historyItems.remove(item);
    _saveHistory();
  }

  void clearHistory() {
    historyItems.clear();
    _storage.remove(_historyKey);
  }

  void _saveHistory() {
    final List<Map<String, dynamic>> jsonList =
        historyItems.map((item) => item.toJson()).toList();
    _storage.write(_historyKey, jsonList);
  }

  List<HistoryItem> get scanHistory =>
      historyItems.where((item) => !item.isGenerated).toList().reversed.toList();

  List<HistoryItem> get generateHistory =>
      historyItems.where((item) => item.isGenerated).toList().reversed.toList();
}