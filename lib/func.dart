import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

var recipes = FirebaseFirestore.instance.collection('recipes');

Future<Map<String, dynamic>> getData() async {
  var querySnapshot = await recipes.get();
  Map<String, dynamic> data = {};
  for (var queryDocumentSnapshot in querySnapshot.docs) {
    data = queryDocumentSnapshot.data();
  }
  return data;
}

Future<void> addRecipe(
    {required String name,
    required String description,
    required String authorID,
    required String difficulty,
    required int timeToPrepare}) async {
  recipes.add({
    "name": name.trim(),
    "description": description.trim(),
    "authorID": authorID.trim(),
    "difficulty": difficulty.trim(),
    "timeToPrepare": timeToPrepare,
    "creationTime": FieldValue.serverTimestamp()
  });
}

Color getDifficultyColor(String difficultyName) {
  if (difficultyName == "Сложно") {
    return Color.fromARGB(255, 187, 13, 1);
  } else if (difficultyName == "Легко") {
    return Color.fromARGB(255, 133, 236, 137);
  } else if (difficultyName == "Средне") {
    return Color.fromRGBO(255, 187, 13, 1);
  } else {
    return Colors.grey;
  }
}

String stringCut({required String string, required int maxChars}) {
  return string.length > maxChars
      ? "${string.substring(0, maxChars)}.."
      : string;
}
