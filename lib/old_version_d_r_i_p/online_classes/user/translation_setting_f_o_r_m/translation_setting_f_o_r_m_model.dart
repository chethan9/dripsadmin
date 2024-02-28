import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/navigation/web_nav_translate_submenu/web_nav_translate_submenu_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_horizontal/web_nav_horizontal_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'translation_setting_f_o_r_m_widget.dart'
    show TranslationSettingFORMWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TranslationSettingFORMModel
    extends FlutterFlowModel<TranslationSettingFORMWidget> {
  ///  Local state fields for this page.

  bool textpopupstatus = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for webNavTranslateSubmenu component.
  late WebNavTranslateSubmenuModel webNavTranslateSubmenuModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
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
  // Model for Add_button component.
  late AddButtonModel addButtonModel1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;
  // State field(s) for input widget.
  FocusNode? inputFocusNode10;
  TextEditingController? inputController10;
  String? Function(BuildContext, String?)? inputController10Validator;
  // State field(s) for inputAddressEN widget.
  FocusNode? inputAddressENFocusNode;
  TextEditingController? inputAddressENController;
  String? Function(BuildContext, String?)? inputAddressENControllerValidator;
  // State field(s) for inputAddressAR widget.
  FocusNode? inputAddressARFocusNode;
  TextEditingController? inputAddressARController;
  String? Function(BuildContext, String?)? inputAddressARControllerValidator;
  // Model for Add_button component.
  late AddButtonModel addButtonModel2;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP3;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession3;
  // State field(s) for input widget.
  FocusNode? inputFocusNode11;
  TextEditingController? inputController11;
  String? Function(BuildContext, String?)? inputController11Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode12;
  TextEditingController? inputController12;
  String? Function(BuildContext, String?)? inputController12Validator;
  // State field(s) for inputHSen widget.
  FocusNode? inputHSenFocusNode;
  TextEditingController? inputHSenController;
  String? Function(BuildContext, String?)? inputHSenControllerValidator;
  // State field(s) for inputHSar widget.
  FocusNode? inputHSarFocusNode;
  TextEditingController? inputHSarController;
  String? Function(BuildContext, String?)? inputHSarControllerValidator;
  // State field(s) for inputHSsen widget.
  FocusNode? inputHSsenFocusNode;
  TextEditingController? inputHSsenController;
  String? Function(BuildContext, String?)? inputHSsenControllerValidator;
  // State field(s) for inputHSsar widget.
  FocusNode? inputHSsarFocusNode;
  TextEditingController? inputHSsarController;
  String? Function(BuildContext, String?)? inputHSsarControllerValidator;
  // Model for Add_button component.
  late AddButtonModel addButtonModel3;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP4;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession4;
  // State field(s) for input widget.
  FocusNode? inputFocusNode13;
  TextEditingController? inputController13;
  String? Function(BuildContext, String?)? inputController13Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode14;
  TextEditingController? inputController14;
  String? Function(BuildContext, String?)? inputController14Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode15;
  TextEditingController? inputController15;
  String? Function(BuildContext, String?)? inputController15Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode16;
  TextEditingController? inputController16;
  String? Function(BuildContext, String?)? inputController16Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode17;
  TextEditingController? inputController17;
  String? Function(BuildContext, String?)? inputController17Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode18;
  TextEditingController? inputController18;
  String? Function(BuildContext, String?)? inputController18Validator;
  // Model for Add_button component.
  late AddButtonModel addButtonModel4;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP2;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession2;
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
    webNavTranslateSubmenuModel =
        createModel(context, () => WebNavTranslateSubmenuModel());
    addButtonModel1 = createModel(context, () => AddButtonModel());
    addButtonModel2 = createModel(context, () => AddButtonModel());
    addButtonModel3 = createModel(context, () => AddButtonModel());
    addButtonModel4 = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
    webNavHorizontalModel = createModel(context, () => WebNavHorizontalModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    webNavTranslateSubmenuModel.dispose();
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

    inputFocusNode6?.dispose();
    inputController6?.dispose();

    inputFocusNode7?.dispose();
    inputController7?.dispose();

    inputFocusNode8?.dispose();
    inputController8?.dispose();

    inputFocusNode9?.dispose();
    inputController9?.dispose();

    addButtonModel1.dispose();
    inputFocusNode10?.dispose();
    inputController10?.dispose();

    inputAddressENFocusNode?.dispose();
    inputAddressENController?.dispose();

    inputAddressARFocusNode?.dispose();
    inputAddressARController?.dispose();

    addButtonModel2.dispose();
    inputFocusNode11?.dispose();
    inputController11?.dispose();

    inputFocusNode12?.dispose();
    inputController12?.dispose();

    inputHSenFocusNode?.dispose();
    inputHSenController?.dispose();

    inputHSarFocusNode?.dispose();
    inputHSarController?.dispose();

    inputHSsenFocusNode?.dispose();
    inputHSsenController?.dispose();

    inputHSsarFocusNode?.dispose();
    inputHSsarController?.dispose();

    addButtonModel3.dispose();
    inputFocusNode13?.dispose();
    inputController13?.dispose();

    inputFocusNode14?.dispose();
    inputController14?.dispose();

    inputFocusNode15?.dispose();
    inputController15?.dispose();

    inputFocusNode16?.dispose();
    inputController16?.dispose();

    inputFocusNode17?.dispose();
    inputController17?.dispose();

    inputFocusNode18?.dispose();
    inputController18?.dispose();

    addButtonModel4.dispose();
    mobileModel.dispose();
    webNavHorizontalModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
