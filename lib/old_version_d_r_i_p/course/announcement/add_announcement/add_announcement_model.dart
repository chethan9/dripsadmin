import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'add_announcement_widget.dart' show AddAnnouncementWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAnnouncementModel extends FlutterFlowModel<AddAnnouncementWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for DropDownIns widget.
  String? dropDownInsValue;
  FormFieldController<String>? dropDownInsValueController;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  String? _yourEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's9i1vo66' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  String? _yourNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2xtymahj' /* Field is required */,
      );
    }

    return null;
  }

  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Backend Call - Create Document] action in Add_button widget.
  AnnouncementRecord? announcementResult1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    yourEmailControllerValidator = _yourEmailControllerValidator;
    yourNameControllerValidator = _yourNameControllerValidator;
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();

    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
