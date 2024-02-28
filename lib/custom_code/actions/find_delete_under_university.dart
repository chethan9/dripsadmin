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

Future findDeleteUnderUniversity(DocumentReference universityRef) async {
  final instance = FirebaseFirestore.instance;
  final batch = instance.batch();

  var collection1 = instance.collection('category');
  var snapshots1 =
      await collection1.where("universityRef", isEqualTo: universityRef).get();
  for (var doc in snapshots1.docs) {
    batch.delete(doc.reference);
  }

  var collection2 = instance.collection('branch');
  var snapshots2 =
      await collection2.where("universityRef", isEqualTo: universityRef).get();
  for (var doc in snapshots2.docs) {
    batch.delete(doc.reference);
  }

  await batch.commit();
}
