class MessageModel {
  final String id;
  final String text;
  final String senderId;
  final DateTime createdAt;

  MessageModel({
    required this.id,
    required this.text,
    required this.senderId,
    required this.createdAt,
  });
}
