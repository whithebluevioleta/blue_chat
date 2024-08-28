import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadFile(String path, String fileName) async {
    final ref = _storage.ref().child(path).child(fileName);
    // Implementar lógica de subida de archivo
    return ref.getDownloadURL();
  }
}
