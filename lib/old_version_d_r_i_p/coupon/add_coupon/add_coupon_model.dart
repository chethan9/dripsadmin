import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_coupon_widget.dart' show AddCouponWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddCouponModel extends FlutterFlowModel<AddCouponWidget> {
  ///  Local state fields for this component.

  String componentLevelRefresh = 'No';

  List<DocumentReference> selectedCourseRefList = [];
  void addToSelectedCourseRefList(DocumentReference item) =>
      selectedCourseRefList.add(item);
  void removeFromSelectedCourseRefList(DocumentReference item) =>
      selectedCourseRefList.remove(item);
  void removeAtIndexFromSelectedCourseRefList(int index) =>
      selectedCourseRefList.removeAt(index);
  void insertAtIndexInSelectedCourseRefList(
          int index, DocumentReference item) =>
      selectedCourseRefList.insert(index, item);
  void updateSelectedCourseRefListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedCourseRefList[index] = updateFn(selectedCourseRefList[index]);

  String listLevelShow = 'Pending';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode1;
  TextEditingController? yourEmailController1;
  String? Function(BuildContext, String?)? yourEmailController1Validator;
  String? _yourEmailController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9r6z44d3' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode2;
  TextEditingController? yourEmailController2;
  String? Function(BuildContext, String?)? yourEmailController2Validator;
  String? _yourEmailController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pej7jnmr' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode3;
  TextEditingController? yourEmailController3;
  String? Function(BuildContext, String?)? yourEmailController3Validator;
  String? _yourEmailController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'q3qrswxz' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode4;
  TextEditingController? yourEmailController4;
  String? Function(BuildContext, String?)? yourEmailController4Validator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode5;
  TextEditingController? yourEmailController5;
  String? Function(BuildContext, String?)? yourEmailController5Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  List<CourseRecord> simpleSearchResults = [];
  // State field(s) for CheckboxListTile widget.

  Map<CourseRecord, bool> checkboxListTileValueMap1 = {};
  List<CourseRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.

  Map<CourseRecord, bool> checkboxListTileValueMap2 = {};
  List<CourseRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Backend Call - Create Document] action in Add_button widget.
  CouponRecord? couponResult1;
  // Stores action output result for [Custom Action - getUserIPaddress] action in Add_button widget.
  String? userIP1;
  // Stores action output result for [Custom Action - getUserSessionID] action in Add_button widget.
  String? userSession1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    yourEmailController1Validator = _yourEmailController1Validator;
    yourEmailController2Validator = _yourEmailController2Validator;
    yourEmailController3Validator = _yourEmailController3Validator;
    addButtonModel = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    yourEmailFocusNode1?.dispose();
    yourEmailController1?.dispose();

    yourEmailFocusNode2?.dispose();
    yourEmailController2?.dispose();

    yourEmailFocusNode3?.dispose();
    yourEmailController3?.dispose();

    yourEmailFocusNode4?.dispose();
    yourEmailController4?.dispose();

    yourEmailFocusNode5?.dispose();
    yourEmailController5?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();

    addButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
