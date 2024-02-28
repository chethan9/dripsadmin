import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/old_version_d_r_i_p/users/edit_profile_photo/edit_profile_photo_widget.dart';
import '/old_version_d_r_i_p/users/student_blocking/student_blocking_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'edit_user_widget.dart' show EditUserWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EditUserModel extends FlutterFlowModel<EditUserWidget> {
  ///  Local state fields for this page.

  Color colorPaid = Color(0xFF4ADA96);

  Color? colorPending = Color(0xFFFFAB3D);

  Color? colorCancelled = Color(0xFFFB3E4B);

  String prevURL = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for reason widget.
  FocusNode? reasonFocusNode;
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameController3;
  String? Function(BuildContext, String?)? yourNameController3Validator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for yourPhn widget.
  FocusNode? yourPhnFocusNode;
  TextEditingController? yourPhnController;
  String? Function(BuildContext, String?)? yourPhnControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  OrdersRecord? orderRslt1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in button widget.
  String? userSession1;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;
  // Model for Mobile component.
  late MobileModel mobileModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
    mobileModel = createModel(context, () => MobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    reasonFocusNode?.dispose();
    reasonController?.dispose();

    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameController3?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();

    yourPhnFocusNode?.dispose();
    yourPhnController?.dispose();

    initialUserStatusCheckModel.dispose();
    mobileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
