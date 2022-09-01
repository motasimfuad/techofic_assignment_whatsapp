class ChatListModel {
  final String image;
  final String name;
  final String message;
  final String time;
  final int counter;
  final bool seen;
  final bool isTyping;

  ChatListModel({
    required this.image,
    required this.name,
    required this.message,
    required this.time,
    required this.counter,
    required this.seen,
    required this.isTyping,
  });

  factory ChatListModel.fromMap(Map<String, dynamic> map) {
    return ChatListModel(
      image: map['image'] ?? '',
      name: map['name'] ?? '',
      message: map['message'] ?? '',
      time: map['time'] ?? '',
      counter: map['counter']?.toInt() ?? 0,
      seen: map['seen'] ?? false,
      isTyping: map['isTyping'] ?? false,
    );
  }

  @override
  String toString() {
    return 'ChatListModel(image: $image, name: $name, message: $message, time: $time, counter: $counter, seen: $seen, isTyping: $isTyping)';
  }
}
