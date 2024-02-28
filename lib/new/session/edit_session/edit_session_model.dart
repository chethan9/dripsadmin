import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_horizontal/web_nav_horizontal_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'edit_session_widget.dart' show EditSessionWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditSessionModel extends FlutterFlowModel<EditSessionWidget> {
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
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0p926oz8' /* Field is required */,
      );
    }

    return null;
  }

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
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for r_price widget.
  FocusNode? rPriceFocusNode;
  TextEditingController? rPriceController;
  String? Function(BuildContext, String?)? rPriceControllerValidator;
  String? _rPriceControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8tfz21l0' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for input widget.
  FocusNode? inputFocusNode3;
  TextEditingController? inputController3;
  String? Function(BuildContext, String?)? inputController3Validator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Read Document] action in Image widget.
  FfPostRecord? sessionRslt1;
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
    nameControllerValidator = _nameControllerValidator;
    rPriceControllerValidator = _rPriceControllerValidator;
    mobileModel = createModel(context, () => MobileModel());
    webNavHorizontalModel = createModel(context, () => WebNavHorizontalModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    inputFocusNode1?.dispose();
    inputController1?.dispose();

    inputFocusNode2?.dispose();
    inputController2?.dispose();

    rPriceFocusNode?.dispose();
    rPriceController?.dispose();

    inputFocusNode3?.dispose();
    inputController3?.dispose();

    mobileModel.dispose();
    webNavHorizontalModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
