import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'order_action_for3_status_widget.dart' show OrderActionFor3StatusWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderActionFor3StatusModel
    extends FlutterFlowModel<OrderActionFor3StatusWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in OrderActionFor3Status widget.
  CoursePlanRecord? coursePlanRslt1;
  // Stores action output result for [Backend Call - Read Document] action in OrderActionFor3Status widget.
  CourseRecord? coursRslt1;
  // Stores action output result for [Backend Call - Read Document] action in OrderActionFor3Status widget.
  BatchesRecord? batchRslt1;
  // Stores action output result for [Backend Call - Read Document] action in OrderActionFor3Status widget.
  UsersRecord? userRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in OrderActionFor3Status widget.
  List<OrdersRecord>? dailyOrderRslt;
  // Stores action output result for [Firestore Query - Query a collection] action in OrderActionFor3Status widget.
  TransactionOrderBarRecord? transactionOrderbarRslt1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
