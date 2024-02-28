import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_horizontal/web_nav_horizontal_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'edit_class_widget.dart' show EditClassWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditClassModel extends FlutterFlowModel<EditClassWidget> {
  ///  Local state fields for this page.

  String uploadStatus = 'Pending';

  DateTime? start;

  DateTime? end;

  List<FfSessionClassesPlanStruct> planList = [];
  void addToPlanList(FfSessionClassesPlanStruct item) => planList.add(item);
  void removeFromPlanList(FfSessionClassesPlanStruct item) =>
      planList.remove(item);
  void removeAtIndexFromPlanList(int index) => planList.removeAt(index);
  void insertAtIndexInPlanList(int index, FfSessionClassesPlanStruct item) =>
      planList.insert(index, item);
  void updatePlanListAtIndex(
          int index, Function(FfSessionClassesPlanStruct) updateFn) =>
      planList[index] = updateFn(planList[index]);

  FfSessionClassesPlanStruct? editPlan;
  void updateEditPlanStruct(Function(FfSessionClassesPlanStruct) updateFn) =>
      updateFn(editPlan ??= FfSessionClassesPlanStruct());

  int? editPlanIndex;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  String? _titleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'iaeynw69' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for limit widget.
  FocusNode? limitFocusNode;
  TextEditingController? limitController;
  String? Function(BuildContext, String?)? limitControllerValidator;
  String? _limitControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bnovrwhx' /* Field is required */,
      );
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for plan_name widget.
  FocusNode? planNameFocusNode;
  TextEditingController? planNameController;
  String? Function(BuildContext, String?)? planNameControllerValidator;
  String? _planNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fq1yrelu' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for plan_price widget.
  FocusNode? planPriceFocusNode;
  TextEditingController? planPriceController;
  String? Function(BuildContext, String?)? planPriceControllerValidator;
  String? _planPriceControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'euy6wdhb' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for noclass widget.
  FocusNode? noclassFocusNode;
  TextEditingController? noclassController;
  String? Function(BuildContext, String?)? noclassControllerValidator;
  String? _noclassControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hy6fmgh8' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for RadioButton1 widget.
  FormFieldController<String>? radioButton1ValueController;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
    titleControllerValidator = _titleControllerValidator;
    limitControllerValidator = _limitControllerValidator;
    planNameControllerValidator = _planNameControllerValidator;
    planPriceControllerValidator = _planPriceControllerValidator;
    noclassControllerValidator = _noclassControllerValidator;
    mobileModel = createModel(context, () => MobileModel());
    webNavHorizontalModel = createModel(context, () => WebNavHorizontalModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    titleFocusNode?.dispose();
    titleController?.dispose();

    limitFocusNode?.dispose();
    limitController?.dispose();

    planNameFocusNode?.dispose();
    planNameController?.dispose();

    planPriceFocusNode?.dispose();
    planPriceController?.dispose();

    noclassFocusNode?.dispose();
    noclassController?.dispose();

    mobileModel.dispose();
    webNavHorizontalModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButton1Value => radioButton1ValueController?.value;
}
