// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future deleteDatafeedback() async {
  // custom action that deletes all documents of feedback collect
// Define the collection reference
  CollectionReference feedbackCollection =
      FirebaseFirestore.instance.collection('feedback');

  // Get all the documents in the collection
  QuerySnapshot querySnapshot = await feedbackCollection.get();

  // Loop through all the documents and delete them
  querySnapshot.docs.forEach((document) async {
    await feedbackCollection.doc(document.id).delete();
  });
}
