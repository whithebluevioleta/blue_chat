import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> sendMessage(String chatId, String message) async {
    await _db.collection('chats/$chatId/messages').add({
      'text': message,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
