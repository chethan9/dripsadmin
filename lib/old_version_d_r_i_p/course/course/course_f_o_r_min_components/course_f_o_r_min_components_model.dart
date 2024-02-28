import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/media_management/list_available_video/list_available_video_widget.dart';
import '/old_version_d_r_i_p/media_management/video_preview/video_preview_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/present_batchin_course/present_batchin_course_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/pwd_couse_batch/pwd_couse_batch_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_branch/change_branch_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'course_f_o_r_min_components_widget.dart'
    show CourseFORMinComponentsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CourseFORMinComponentsModel
    extends FlutterFlowModel<CourseFORMinComponentsWidget> {
  ///  Local state fields for this component.

  String countryLevelSet = 'unset';

  String universityLevelSet = 'unset';

  String categoryLevelSet = 'unset';

  String branchLevelSet = 'unset';

  String cName = '';

  String uName = '';

  String ccName = '';

  String bName = '';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputController1;
  String? Function(BuildContext, String?)? inputController1Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode2;
  TextEditingController? inputController2;
  String? Function(BuildContext, String?)? inputController2Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode3;
  TextEditingController? inputController3;
  String? Function(BuildContext, String?)? inputController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CountryRecord? countryRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CountryRecord? countryRslt;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UniversityRecord? universityRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UniversityRecord? universityRslt;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CategoryRecord? categoryRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CategoryRecord? categoryRslt;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  BranchRecord? branchRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  BranchRecord? branchRslt;
  // Model for changeBranch component.
  late ChangeBranchModel changeBranchModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode4;
  TextEditingController? inputController4;
  String? Function(BuildContext, String?)? inputController4Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode5;
  TextEditingController? inputController5;
  String? Function(BuildContext, String?)? inputController5Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode6;
  TextEditingController? inputController6;
  String? Function(BuildContext, String?)? inputController6Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode7;
  TextEditingController? inputController7;
  String? Function(BuildContext, String?)? inputController7Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode8;
  TextEditingController? inputController8;
  String? Function(BuildContext, String?)? inputController8Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode9;
  TextEditingController? inputController9;
  String? Function(BuildContext, String?)? inputController9Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for input widget.
  FocusNode? inputFocusNode10;
  TextEditingController? inputController10;
  String? Function(BuildContext, String?)? inputController10Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode11;
  TextEditingController? inputController11;
  String? Function(BuildContext, String?)? inputController11Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode12;
  TextEditingController? inputController12;
  String? Function(BuildContext, String?)? inputController12Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode13;
  TextEditingController? inputController13;
  String? Function(BuildContext, String?)? inputController13Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode14;
  TextEditingController? inputController14;
  String? Function(BuildContext, String?)? inputController14Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in preview widget.
  ApiCallResponse? apiResultffl;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in preview widget.
  ApiCallResponse? apiResultff12;
  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    changeBranchModel = createModel(context, () => ChangeBranchModel());
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    inputFocusNode1?.dispose();
    inputController1?.dispose();

    inputFocusNode2?.dispose();
    inputController2?.dispose();

    inputFocusNode3?.dispose();
    inputController3?.dispose();

    changeBranchModel.dispose();
    inputFocusNode4?.dispose();
    inputController4?.dispose();

    inputFocusNode5?.dispose();
    inputController5?.dispose();

    inputFocusNode6?.dispose();
    inputController6?.dispose();

    inputFocusNode7?.dispose();
    inputController7?.dispose();

    inputFocusNode8?.dispose();
    inputController8?.dispose();

    inputFocusNode9?.dispose();
    inputController9?.dispose();

    inputFocusNode10?.dispose();
    inputController10?.dispose();

    inputFocusNode11?.dispose();
    inputController11?.dispose();

    inputFocusNode12?.dispose();
    inputController12?.dispose();

    inputFocusNode13?.dispose();
    inputController13?.dispose();

    inputFocusNode14?.dispose();
    inputController14?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
