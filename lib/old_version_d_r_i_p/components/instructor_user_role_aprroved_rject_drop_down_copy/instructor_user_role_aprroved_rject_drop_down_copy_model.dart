import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/users/student_blocking/student_blocking_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'instructor_user_role_aprroved_rject_drop_down_copy_widget.dart'
    show InstructorUserRoleAprrovedRjectDropDownCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InstructorUserRoleAprrovedRjectDropDownCopyModel extends FlutterFlowModel<
    InstructorUserRoleAprrovedRjectDropDownCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Read Document] action in DropDown widget.
  UsersRecord? userRslt1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in DropDown widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in DropDown widget.
  String? userSession1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in DropDown widget.
  String? userIP2;
  // Stores action output result for [Custom Action - getUserSessionID] action in DropDown widget.
  String? userSession2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
