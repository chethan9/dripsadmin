import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'delete_message_widget.dart' show DeleteMessageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeleteMessageModel extends FlutterFlowModel<DeleteMessageWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getUserIPaddress] action in Button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Button widget.
  String? userSession1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UniversityRecord>? universityRssltCountry1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
