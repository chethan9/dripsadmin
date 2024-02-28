import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batches_course_chapter_lock_process/batches_course_chapter_lock_process_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batches_status_effect2_subscriber/batches_status_effect2_subscriber_widget.dart';
import 'batch_course_list_proces_widget.dart' show BatchCourseListProcesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class BatchCourseListProcesModel
    extends FlutterFlowModel<BatchCourseListProcesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Mobile component.
  late MobileModel mobileModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileModel = createModel(context, () => MobileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
