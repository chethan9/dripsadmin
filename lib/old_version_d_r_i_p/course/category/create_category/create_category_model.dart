import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_branch/change_branch_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_category/change_category_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_country/change_country_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_university/change_university_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'create_category_widget.dart' show CreateCategoryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CreateCategoryModel extends FlutterFlowModel<CreateCategoryWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CountryRecord? countryRslt;
  // Model for changeCountry component.
  late ChangeCountryModel changeCountryModel;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UniversityRecord? universityRslt;
  // Model for changeUniversity component.
  late ChangeUniversityModel changeUniversityModel;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  CategoryRecord? categoryRslt;
  // Model for changeCategory component.
  late ChangeCategoryModel changeCategoryModel;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  BranchRecord? branchRslt;
  // Model for changeBranch component.
  late ChangeBranchModel changeBranchModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputController;
  String? Function(BuildContext, String?)? inputControllerValidator;
  // State field(s) for CheckboxListTile widget.

  Map<CourseRecord, bool> checkboxListTileValueMap = {};
  List<CourseRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Backend Call - Create Document] action in Add_button widget.
  CourseCategoryRecord? catResult1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    changeCountryModel = createModel(context, () => ChangeCountryModel());
    changeUniversityModel = createModel(context, () => ChangeUniversityModel());
    changeCategoryModel = createModel(context, () => ChangeCategoryModel());
    changeBranchModel = createModel(context, () => ChangeBranchModel());
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    changeCountryModel.dispose();
    changeUniversityModel.dispose();
    changeCategoryModel.dispose();
    changeBranchModel.dispose();
    inputFocusNode?.dispose();
    inputController?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
