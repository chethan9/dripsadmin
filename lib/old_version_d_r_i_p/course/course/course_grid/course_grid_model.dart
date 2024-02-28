import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/message/remove_message/remove_message_widget.dart';
import '/old_version_d_r_i_p/course/course/course_grid_popup/course_grid_popup_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/list_avilable_batches/list_avilable_batches_widget.dart';
import 'course_grid_widget.dart' show CourseGridWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CourseGridModel extends FlutterFlowModel<CourseGridWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  BatchesRecord? batchRslt1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
