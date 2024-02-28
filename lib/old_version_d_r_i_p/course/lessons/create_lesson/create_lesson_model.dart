import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/media_management/list_available_video/list_available_video_widget.dart';
import '/old_version_d_r_i_p/media_management/video_preview/video_preview_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'create_lesson_widget.dart' show CreateLessonWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CreateLessonModel extends FlutterFlowModel<CreateLessonWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputController1;
  String? Function(BuildContext, String?)? inputController1Validator;
  String? _inputController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'owaz4z2p' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for input widget.
  FocusNode? inputFocusNode2;
  TextEditingController? inputController2;
  String? Function(BuildContext, String?)? inputController2Validator;
  String? _inputController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0qm3buwt' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in preview widget.
  ApiCallResponse? apiResultff12;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Backend Call - Create Document] action in Add_button widget.
  LessonsRecord? lessonResult1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    inputController1Validator = _inputController1Validator;
    inputController2Validator = _inputController2Validator;
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    inputFocusNode1?.dispose();
    inputController1?.dispose();

    inputFocusNode2?.dispose();
    inputController2?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
