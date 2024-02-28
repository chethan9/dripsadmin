import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/media_management/video_preview/video_preview_widget.dart';
import 'list_available_video_widget.dart' show ListAvailableVideoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ListAvailableVideoModel
    extends FlutterFlowModel<ListAvailableVideoWidget> {
  ///  Local state fields for this component.

  String instructorVideolist = 'Pending';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in ListAvailableVideo widget.
  UsersRecord? userAuthRslt2;
  // Stores action output result for [Backend Call - API (InstructorBasedVideoList)] action in ListAvailableVideo widget.
  ApiCallResponse? userFolderVideoListRslt1;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in preview widget.
  ApiCallResponse? apiResultffl;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in Icon widget.
  ApiCallResponse? apiResultdeq1;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in preview widget.
  ApiCallResponse? apiResultffl1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
