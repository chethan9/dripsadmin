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
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'add_class_widget.dart' show AddClassWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddClassModel extends FlutterFlowModel<AddClassWidget> {
  ///  Local state fields for this page.

  int classStep = 1;

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
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for class_type widget.
  FormFieldController<String>? classTypeValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  String? _titleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fpukdbi2' /* Field is required */,
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
        '847chksy' /* Field is required */,
      );
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FfSessionClassesRecord? sessionClassResult1;
  // State field(s) for plan_name widget.
  FocusNode? planNameFocusNode;
  TextEditingController? planNameController;
  String? Function(BuildContext, String?)? planNameControllerValidator;
  String? _planNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5akgi1on' /* Field is required */,
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
        'fypergwr' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for no_class widget.
  FocusNode? noClassFocusNode;
  TextEditingController? noClassController;
  String? Function(BuildContext, String?)? noClassControllerValidator;
  String? _noClassControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'llfq136i' /* Field is required */,
      );
    }

    return null;
  }

  // Model for Mobile component.
  late MobileModel mobileModel;
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
    noClassControllerValidator = _noClassControllerValidator;
    mobileModel = createModel(context, () => MobileModel());
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

    noClassFocusNode?.dispose();
    noClassController?.dispose();

    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get classTypeValue => classTypeValueController?.value;
}
