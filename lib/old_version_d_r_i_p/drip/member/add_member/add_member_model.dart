import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import 'add_member_widget.dart' show AddMemberWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddMemberModel extends FlutterFlowModel<AddMemberWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for orderNumber widget.
  FocusNode? orderNumberFocusNode;
  TextEditingController? orderNumberController;
  String? Function(BuildContext, String?)? orderNumberControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode3;
  TextEditingController? nameController3;
  String? Function(BuildContext, String?)? nameController3Validator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode4;
  TextEditingController? nameController4;
  String? Function(BuildContext, String?)? nameController4Validator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode5;
  TextEditingController? nameController5;
  String? Function(BuildContext, String?)? nameController5Validator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode6;
  TextEditingController? nameController6;
  String? Function(BuildContext, String?)? nameController6Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for Add_button component.
  late AddButtonModel addButtonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    nameFocusNode1?.dispose();
    nameController1?.dispose();

    nameFocusNode2?.dispose();
    nameController2?.dispose();

    orderNumberFocusNode?.dispose();
    orderNumberController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    nameFocusNode3?.dispose();
    nameController3?.dispose();

    nameFocusNode4?.dispose();
    nameController4?.dispose();

    nameFocusNode5?.dispose();
    nameController5?.dispose();

    nameFocusNode6?.dispose();
    nameController6?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
