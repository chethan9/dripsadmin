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

import 'package:intl/intl.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

Future<String> zoomJWTtoken(
  String aPIKey,
  String aPISecret,
  DateTime expDate,
) async {
  final apiKey = aPIKey;
  final apiSecret = aPISecret;
  final jwt = JWT(
    {
      'iss': apiKey,
      'exp':
          expDate.add(Duration(minutes: 1440)).millisecondsSinceEpoch ~/ 1000,
    },
  );
  final token = jwt.sign(SecretKey(apiSecret));
  return token.toString();
}
