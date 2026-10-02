import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> posts() =>
      _db.collection('posts').orderBy('createdAt', descending: true).snapshots();

  Future<void> createPost({required String uid, required String text}) =>
      _db.collection('posts').add({
        'uid': uid,
        'text': text,
        'likes': <String>[],
        'createdAt': FieldValue.serverTimestamp(),
      });

  Future<void> deletePost(String id) => _db.collection('posts').doc(id).delete();
}
