import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/media_management/video_preview/video_preview_widget.dart';
import '/old_version_d_r_i_p/media_management/video_uploading_status1/video_uploading_status1_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'video_management_widget.dart' show VideoManagementWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class VideoManagementModel extends FlutterFlowModel<VideoManagementWidget> {
  ///  Local state fields for this page.

  int? videoProgress;

  String instructorVideoList = 'pending';

  String uploadWidget = 'Hide';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in Video_management widget.
  UsersRecord? userAuthRslt1;
  // Stores action output result for [Backend Call - API (InstructorFolderStatus)] action in Video_management widget.
  ApiCallResponse? userFolderStatusRslt1;
  // Stores action output result for [Backend Call - API (InstructorFolderCreation)] action in Video_management widget.
  ApiCallResponse? userFolderCreationRslt1;
  // Stores action output result for [Backend Call - Read Document] action in Video_management widget.
  UsersRecord? userAuthRslt2;
  // Stores action output result for [Backend Call - API (InstructorBasedVideoList)] action in Video_management widget.
  ApiCallResponse? userFolderVideoListRslt1;
  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for Add_button component.
  late AddButtonModel addButtonModel1;
  // Model for Add_button component.
  late AddButtonModel addButtonModel2;
  // Model for videoUploadingStatus1 component.
  late VideoUploadingStatus1Model videoUploadingStatus1Model;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in Container widget.
  ApiCallResponse? apiResultdeqCopy;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in Icon widget.
  ApiCallResponse? apiResultdeq;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in Column widget.
  ApiCallResponse? apiResultdeqCopyCopy;
  // Stores action output result for [Backend Call - API (NEWgetOTPandPBI)] action in Icon widget.
  ApiCallResponse? apiResultdeq1;
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
    videoUploadingStatus1Model =
        createModel(context, () => VideoUploadingStatus1Model());
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
    videoUploadingStatus1Model.dispose();
    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
