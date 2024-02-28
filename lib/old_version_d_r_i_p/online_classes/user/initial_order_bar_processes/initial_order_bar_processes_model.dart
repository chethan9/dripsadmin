import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'initial_order_bar_processes_widget.dart'
    show InitialOrderBarProcessesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InitialOrderBarProcessesModel
    extends FlutterFlowModel<InitialOrderBarProcessesWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in initialOrderBarProcesses widget.
  List<OrdersRecord>? dailyOrderRslt;
  // Stores action output result for [Firestore Query - Query a collection] action in initialOrderBarProcesses widget.
  TransactionOrderBarRecord? transactionOrderbarRslt1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
