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

import 'package:get_ip_address/get_ip_address.dart';

Future<String> getUserIPaddress() async {
  // Add your function code here!
  var ipAddress = IpAddress(type: RequestType.json);
  dynamic data = await ipAddress.getIpAddress();
  return (data.toString());
}
