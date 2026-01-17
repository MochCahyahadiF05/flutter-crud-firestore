import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference barang =
      FirebaseFirestore.instance.collection('barang');

  Future<void> tambahBarang(Map<String, dynamic> data) {
    return barang.add(data);
  }

  Stream<QuerySnapshot> getBarang() {
    return barang.snapshots();
  }

  Future<void> updateBarang(String id, Map<String, dynamic> data) {
    return barang.doc(id).update(data);
  }

  Future<void> hapusBarang(String id) {
    return barang.doc(id).delete();
  }
}
