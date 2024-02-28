import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
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
import '/old_version_d_r_i_p/online_classes/batches/list_avilable_batches/list_avilable_batches_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_branch/change_branch_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_category/change_category_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_country/change_country_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_university/change_university_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'create_course_widget.dart' show CreateCourseWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CreateCourseModel extends FlutterFlowModel<CreateCourseWidget> {
  ///  Local state fields for this component.

  String countryLevelSet = 'unset';

  String universityLevelSet = 'unset';

  String categoryLevelSet = 'unset';

  String branchLevelSet = 'unset';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in preview widget.
  ApiCallResponse? apiResultff12;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7if3i9k3' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Subtitle widget.
  FocusNode? subtitleFocusNode;
  TextEditingController? subtitleController;
  String? Function(BuildContext, String?)? subtitleControllerValidator;
  // State field(s) for DropDownInstructor widget.
  String? dropDownInstructorValue;
  FormFieldController<String>? dropDownInstructorValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDownInstructor widget.
  UsersRecord? autherRef1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CountryRecord? countryRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CountryRecord? countryRslt;
  // Model for changeCountry component.
  late ChangeCountryModel changeCountryModel;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UniversityRecord? universityRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UniversityRecord? universityRslt;
  // Model for changeUniversity component.
  late ChangeUniversityModel changeUniversityModel;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CategoryRecord? categoryRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CategoryRecord? categoryRslt;
  // Model for changeCategory component.
  late ChangeCategoryModel changeCategoryModel;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  BranchRecord? branchRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  BranchRecord? branchRslt;
  // Model for changeBranch component.
  late ChangeBranchModel changeBranchModel;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for whatyouwilllearn widget.
  FocusNode? whatyouwilllearnFocusNode1;
  TextEditingController? whatyouwilllearnController1;
  String? Function(BuildContext, String?)? whatyouwilllearnController1Validator;
  // State field(s) for whatyouwilllearn widget.
  FocusNode? whatyouwilllearnFocusNode2;
  TextEditingController? whatyouwilllearnController2;
  String? Function(BuildContext, String?)? whatyouwilllearnController2Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputController;
  String? Function(BuildContext, String?)? inputControllerValidator;
  // State field(s) for TotalNumberofLesson widget.
  FocusNode? totalNumberofLessonFocusNode;
  TextEditingController? totalNumberofLessonController;
  String? Function(BuildContext, String?)?
      totalNumberofLessonControllerValidator;
  // State field(s) for BookingLimit widget.
  FocusNode? bookingLimitFocusNode;
  TextEditingController? bookingLimitController;
  String? Function(BuildContext, String?)? bookingLimitControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode1;
  TextEditingController? priceController1;
  String? Function(BuildContext, String?)? priceController1Validator;
  String? _priceController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wx34jl0b' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Price widget.
  FocusNode? priceFocusNode2;
  TextEditingController? priceController2;
  String? Function(BuildContext, String?)? priceController2Validator;
  // State field(s) for WhatsappGroupLink widget.
  FocusNode? whatsappGroupLinkFocusNode;
  TextEditingController? whatsappGroupLinkController;
  String? Function(BuildContext, String?)? whatsappGroupLinkControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Add_button widget.
  SettingsRecord? settingRslt1;
  // Stores action output result for [Backend Call - Create Document] action in Add_button widget.
  CourseRecord? courseNewRef;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    changeCountryModel = createModel(context, () => ChangeCountryModel());
    changeUniversityModel = createModel(context, () => ChangeUniversityModel());
    changeCategoryModel = createModel(context, () => ChangeCategoryModel());
    changeBranchModel = createModel(context, () => ChangeBranchModel());
    priceController1Validator = _priceController1Validator;
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    subtitleFocusNode?.dispose();
    subtitleController?.dispose();

    changeCountryModel.dispose();
    changeUniversityModel.dispose();
    changeCategoryModel.dispose();
    changeBranchModel.dispose();
    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    whatyouwilllearnFocusNode1?.dispose();
    whatyouwilllearnController1?.dispose();

    whatyouwilllearnFocusNode2?.dispose();
    whatyouwilllearnController2?.dispose();

    inputFocusNode?.dispose();
    inputController?.dispose();

    totalNumberofLessonFocusNode?.dispose();
    totalNumberofLessonController?.dispose();

    bookingLimitFocusNode?.dispose();
    bookingLimitController?.dispose();

    priceFocusNode1?.dispose();
    priceController1?.dispose();

    priceFocusNode2?.dispose();
    priceController2?.dispose();

    whatsappGroupLinkFocusNode?.dispose();
    whatsappGroupLinkController?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
