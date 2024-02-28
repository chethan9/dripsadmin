import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'delete_confirmation_widget.dart' show DeleteConfirmationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeleteConfirmationModel
    extends FlutterFlowModel<DeleteConfirmationWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Add_button component.
  late AddButtonModel addButtonModel1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;
  // Model for Add_button component.
  late AddButtonModel addButtonModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    addButtonModel1 = createModel(context, () => AddButtonModel());
    addButtonModel2 = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    addButtonModel1.dispose();
    addButtonModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
