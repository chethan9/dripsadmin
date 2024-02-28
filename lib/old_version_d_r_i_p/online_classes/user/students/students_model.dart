import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/marketing/s_m_smarketing/s_m_sfor_paricular_course/s_m_sfor_paricular_course_widget.dart';
import '/old_version_d_r_i_p/marketing/s_m_smarketing/user_phone_number_list_add_for_s_m_s/user_phone_number_list_add_for_s_m_s_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'students_widget.dart' show StudentsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class StudentsModel extends FlutterFlowModel<StudentsWidget> {
  ///  Local state fields for this page.

  Color? colorPaid = Color(0xFF4ADA96);

  Color? colorPending = Color(0xFFFFAB3D);

  Color? colorCancelled = Color(0xFFFB3E4B);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for Add_button component.
  late AddButtonModel addButtonModel1;
  // Model for Add_button component.
  late AddButtonModel addButtonModel2;
  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    addButtonModel1 = createModel(context, () => AddButtonModel());
    addButtonModel2 = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    addButtonModel1.dispose();
    addButtonModel2.dispose();
    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
