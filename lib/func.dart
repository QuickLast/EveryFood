import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<Map<String, dynamic>> getData() async {
  var collection = FirebaseFirestore.instance.collection('recipes');
  var querySnapshot = await collection.get();
  Map<String, dynamic> data = {};
  for (var queryDocumentSnapshot in querySnapshot.docs) {
    data = queryDocumentSnapshot.data();
  }
  return data;
}
