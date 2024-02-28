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

Future findDeleteUserRefAll(DocumentReference userRef) async {
  // Add your function code here!
  // Add your function code here!
  final instance = FirebaseFirestore.instance;
  final batch = instance.batch();

  var collection = instance.collection('userCart');
  var snapshots = await collection.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots.docs) {
    batch.delete(doc.reference);
  }

  var collection1 = instance.collection('instructorUserRequest');
  var snapshots1 = await collection1.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots1.docs) {
    batch.delete(doc.reference);
  }

  var collection2 = instance.collection('meetingBooked');
  var snapshots2 = await collection2.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots2.docs) {
    batch.delete(doc.reference);
  }

  var collection3 = instance.collection('orders');
  var snapshots3 = await collection3.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots3.docs) {
    batch.delete(doc.reference);
  }

  var collection4 = instance.collection('pollVote');
  var snapshots4 = await collection4.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots4.docs) {
    batch.delete(doc.reference);
  }

  var collection5 = instance.collection('review');
  var snapshots5 = await collection5.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots5.docs) {
    batch.delete(doc.reference);
  }

  var collection6 = instance.collection('subscription');
  var snapshots6 = await collection6.where("userRef", isEqualTo: userRef).get();
  for (var doc in snapshots6.docs) {
    batch.delete(doc.reference);
  }

  await batch.commit();
}
