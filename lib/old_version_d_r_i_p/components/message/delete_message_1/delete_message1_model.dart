import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'delete_message1_widget.dart' show DeleteMessage1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeleteMessage1Model extends FlutterFlowModel<DeleteMessage1Widget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getUserIPaddress] action in Button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Button widget.
  String? userSession1;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  UsersRecord? userResult1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
