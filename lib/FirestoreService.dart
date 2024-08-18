import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

 Future<void> addItem(Map<String, dynamic> data, String collection) {
    return _db.collection(collection).add(data);
  }

  Future<void> updateItem(String id, Map<String, dynamic> data, String collection) {
    return _db.collection(collection).doc(id).update(data);
  }

  Future<void> deleteItem(String id, String collection) {
    return _db.collection(collection).doc(id).delete();
  }


}
