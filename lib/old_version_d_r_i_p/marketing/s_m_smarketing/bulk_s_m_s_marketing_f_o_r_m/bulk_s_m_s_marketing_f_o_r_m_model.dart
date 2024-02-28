import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_s_m_s_submenu/web_nav_s_m_s_submenu_widget.dart';
import '/old_version_d_r_i_p/marketing/s_m_smarketing/bulk_sms_confirmation/bulk_sms_confirmation_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'bulk_s_m_s_marketing_f_o_r_m_widget.dart'
    show BulkSMSMarketingFORMWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BulkSMSMarketingFORMModel
    extends FlutterFlowModel<BulkSMSMarketingFORMWidget> {
  ///  Local state fields for this page.

  int? smsTextLength;

  List<String> checkAllStatus = [];
  void addToCheckAllStatus(String item) => checkAllStatus.add(item);
  void removeFromCheckAllStatus(String item) => checkAllStatus.remove(item);
  void removeAtIndexFromCheckAllStatus(int index) =>
      checkAllStatus.removeAt(index);
  void insertAtIndexInCheckAllStatus(int index, String item) =>
      checkAllStatus.insert(index, item);
  void updateCheckAllStatusAtIndex(int index, Function(String) updateFn) =>
      checkAllStatus[index] = updateFn(checkAllStatus[index]);

  String selectStatus = 'Unselected';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for webNavSMSSubmenu component.
  late WebNavSMSSubmenuModel webNavSMSSubmenuModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputController;
  String? Function(BuildContext, String?)? inputControllerValidator;
  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Add_button widget.
  SettingsRecord? mainSettingRslt;
  // Stores action output result for [Custom Action - messageCount] action in Add_button widget.
  int? msgCountRslt;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.

  Map<UsersRecord, bool> checkboxValueMap2 = {};
  List<UsersRecord> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.

  Map<UsersRecord, bool> checkboxValueMap3 = {};
  List<UsersRecord> get checkboxCheckedItems3 => checkboxValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    webNavSMSSubmenuModel = createModel(context, () => WebNavSMSSubmenuModel());
    addButtonModel = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    webNavSMSSubmenuModel.dispose();
    inputFocusNode?.dispose();
    inputController?.dispose();

    addButtonModel.dispose();
    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
