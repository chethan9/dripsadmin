import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'class_f_o_r_m_widget.dart' show ClassFORMWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ClassFORMModel extends FlutterFlowModel<ClassFORMWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputController1;
  String? Function(BuildContext, String?)? inputController1Validator;
  String? _inputController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e1cxkzey' /* Field is required */,
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
        '2pjaedj9' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for input widget.
  FocusNode? inputFocusNode3;
  TextEditingController? inputController3;
  String? Function(BuildContext, String?)? inputController3Validator;
  String? _inputController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lfkcuk0s' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for input widget.
  FocusNode? inputFocusNode4;
  TextEditingController? inputController4;
  String? Function(BuildContext, String?)? inputController4Validator;
  String? _inputController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hh0d1zuo' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for input widget.
  FocusNode? inputFocusNode5;
  TextEditingController? inputController5;
  String? Function(BuildContext, String?)? inputController5Validator;
  String? _inputController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'y1ewxdp8' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // State field(s) for DropDownBatches widget.
  String? dropDownBatchesValue;
  FormFieldController<String>? dropDownBatchesValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;
  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    inputController1Validator = _inputController1Validator;
    inputController2Validator = _inputController2Validator;
    inputController3Validator = _inputController3Validator;
    inputController4Validator = _inputController4Validator;
    inputController5Validator = _inputController5Validator;
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    addButtonModel = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
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

    inputFocusNode3?.dispose();
    inputController3?.dispose();

    inputFocusNode4?.dispose();
    inputController4?.dispose();

    inputFocusNode5?.dispose();
    inputController5?.dispose();

    addButtonModel.dispose();
    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
