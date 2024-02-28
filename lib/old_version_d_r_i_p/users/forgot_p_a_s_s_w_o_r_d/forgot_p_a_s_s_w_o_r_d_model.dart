import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'forgot_p_a_s_s_w_o_r_d_widget.dart' show ForgotPASSWORDWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPASSWORDModel extends FlutterFlowModel<ForgotPASSWORDWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Button-Login widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Button-Login widget.
  String? userSession1;
  // Model for Mobile component.
  late MobileModel mobileModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileModel = createModel(context, () => MobileModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    mobileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
