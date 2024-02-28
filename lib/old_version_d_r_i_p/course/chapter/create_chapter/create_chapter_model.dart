import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'create_chapter_widget.dart' show CreateChapterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateChapterModel extends FlutterFlowModel<CreateChapterWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  String? _nameController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nkyea1uz' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode3;
  TextEditingController? nameController3;
  String? Function(BuildContext, String?)? nameController3Validator;
  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Backend Call - Create Document] action in Add_button widget.
  ChapterRecord? chapResult1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameController1Validator = _nameController1Validator;
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    nameFocusNode1?.dispose();
    nameController1?.dispose();

    nameFocusNode2?.dispose();
    nameController2?.dispose();

    nameFocusNode3?.dispose();
    nameController3?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
