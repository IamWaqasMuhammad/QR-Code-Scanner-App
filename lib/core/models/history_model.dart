
class HistoryItem {
  final String data;
  final String type;
  final String dateTime;
  final bool isGenerated;

  HistoryItem({
    required this.data,
    required this.type,
    required this.dateTime,
    this.isGenerated = false,
  });

  Map<String, dynamic> toJson() => {
        'data': data,
        'type': type,
        'dateTime': dateTime,
        'isGenerated': isGenerated,
      };

  factory HistoryItem.fromJson(Map<String, dynamic> json) => HistoryItem(
        data: json['data'],
        type: json['type'],
        dateTime: json['dateTime'],
        isGenerated: json['isGenerated'] ?? false,
      );
}
