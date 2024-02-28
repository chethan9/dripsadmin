import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/drip/classes/add_online_zoom_class/add_online_zoom_class_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'online_zoom_class_list_widget.dart' show OnlineZoomClassListWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OnlineZoomClassListModel
    extends FlutterFlowModel<OnlineZoomClassListWidget> {
  ///  Local state fields for this page.

  int? serialNum = 1;

  int? enrolCount = 0;

  List<String> enrollEmail = [];
  void addToEnrollEmail(String item) => enrollEmail.add(item);
  void removeFromEnrollEmail(String item) => enrollEmail.remove(item);
  void removeAtIndexFromEnrollEmail(int index) => enrollEmail.removeAt(index);
  void insertAtIndexInEnrollEmail(int index, String item) =>
      enrollEmail.insert(index, item);
  void updateEnrollEmailAtIndex(int index, Function(String) updateFn) =>
      enrollEmail[index] = updateFn(enrollEmail[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in OnlineZoomClassList widget.
  List<SubscriptionRecord>? userSubRslt1;
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for Add_button component.
  late AddButtonModel addButtonModel1;
  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    addButtonModel1 = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    addButtonModel1.dispose();
    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
