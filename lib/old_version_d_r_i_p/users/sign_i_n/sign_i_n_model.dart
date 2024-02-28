import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'sign_i_n_widget.dart' show SignINWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SignINModel extends FlutterFlowModel<SignINWidget> {
  ///  Local state fields for this page.

  String googleStatus = 'Hide';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Stores action output result for [Custom Action - getUserIPaddress] action in password widget.
  String? userIP1Copy;
  // Stores action output result for [Custom Action - getUserSessionID] action in password widget.
  String? userSession1Copy;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Button-Login widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Button-Login widget.
  String? userSession1;
  // Model for Mobile component.
  late MobileModel mobileModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    mobileModel = createModel(context, () => MobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    mobileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
