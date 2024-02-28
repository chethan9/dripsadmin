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
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_horizontal/web_nav_horizontal_widget.dart';
import '/old_version_d_r_i_p/media_management/list_available_video/list_available_video_widget.dart';
import '/old_version_d_r_i_p/media_management/video_preview/video_preview_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/present_batchin_course/present_batchin_course_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/pwd_couse_batch/pwd_couse_batch_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_branch/change_branch_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'course_f_o_r_m_widget.dart' show CourseFORMWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CourseFORMModel extends FlutterFlowModel<CourseFORMWidget> {
  ///  Local state fields for this page.

  String countryName = '';

  String universityName = '';

  String categoryName = '';

  String branchName = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputController1;
  String? Function(BuildContext, String?)? inputController1Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode2;
  TextEditingController? inputController2;
  String? Function(BuildContext, String?)? inputController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CountryRecord? countryRslt;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UniversityRecord? universityRslt;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CategoryRecord? categoryRslt;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  BranchRecord? branchRslt;
  // Model for changeBranch component.
  late ChangeBranchModel changeBranchModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode3;
  TextEditingController? inputController3;
  String? Function(BuildContext, String?)? inputController3Validator;
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
  // State field(s) for RadioButtonPaymentType widget.
  FormFieldController<String>? radioButtonPaymentTypeValueController;
  // State field(s) for input widget.
  FocusNode? inputFocusNode9;
  TextEditingController? inputController9;
  String? Function(BuildContext, String?)? inputController9Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode10;
  TextEditingController? inputController10;
  String? Function(BuildContext, String?)? inputController10Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode11;
  TextEditingController? inputController11;
  String? Function(BuildContext, String?)? inputController11Validator;
  // State field(s) for DropDownInstructor widget.
  String? dropDownInstructorValue;
  FormFieldController<String>? dropDownInstructorValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDownBatches widget.
  String? dropDownBatchesValue;
  FormFieldController<String>? dropDownBatchesValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

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
  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for webNavHorizontal component.
  late WebNavHorizontalModel webNavHorizontalModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    changeBranchModel = createModel(context, () => ChangeBranchModel());
    addButtonModel = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
    webNavHorizontalModel = createModel(context, () => WebNavHorizontalModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    inputFocusNode1?.dispose();
    inputController1?.dispose();

    inputFocusNode2?.dispose();
    inputController2?.dispose();

    changeBranchModel.dispose();
    inputFocusNode3?.dispose();
    inputController3?.dispose();

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

    addButtonModel.dispose();
    mobileModel.dispose();
    webNavHorizontalModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonPaymentTypeValue =>
      radioButtonPaymentTypeValueController?.value;
}
