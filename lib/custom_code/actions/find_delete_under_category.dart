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

Future findDeleteUnderCategory(DocumentReference categoryRef) async {
  final instance = FirebaseFirestore.instance;
  final batch = instance.batch();

  var collection2 = instance.collection('branch');
  var snapshots2 =
      await collection2.where("categoryRef", isEqualTo: categoryRef).get();
  for (var doc in snapshots2.docs) {
    batch.delete(doc.reference);
  }

  await batch.commit();
}
