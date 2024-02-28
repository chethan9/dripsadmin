import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/course/reviews/all_edit_review/all_edit_review_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'all_review_widget.dart' show AllReviewWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AllReviewModel extends FlutterFlowModel<AllReviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for admin widget.

  PagingController<DocumentSnapshot?, ReviewRecord>? adminPagingController;
  Query? adminPagingQuery;
  List<StreamSubscription?> adminStreamSubscriptions = [];

  // State field(s) for instructor widget.

  PagingController<DocumentSnapshot?, ReviewRecord>? instructorPagingController;
  Query? instructorPagingQuery;
  List<StreamSubscription?> instructorStreamSubscriptions = [];

  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    mobileModel = createModel(context, () => MobileModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
    adminStreamSubscriptions.forEach((s) => s?.cancel());
    adminPagingController?.dispose();

    instructorStreamSubscriptions.forEach((s) => s?.cancel());
    instructorPagingController?.dispose();

    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, ReviewRecord> setAdminController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    adminPagingController ??= _createAdminController(query, parent);
    if (adminPagingQuery != query) {
      adminPagingQuery = query;
      adminPagingController?.refresh();
    }
    return adminPagingController!;
  }

  PagingController<DocumentSnapshot?, ReviewRecord> _createAdminController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ReviewRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryReviewRecordPage(
          queryBuilder: (_) => adminPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: adminStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, ReviewRecord> setInstructorController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    instructorPagingController ??= _createInstructorController(query, parent);
    if (instructorPagingQuery != query) {
      instructorPagingQuery = query;
      instructorPagingController?.refresh();
    }
    return instructorPagingController!;
  }

  PagingController<DocumentSnapshot?, ReviewRecord> _createInstructorController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ReviewRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryReviewRecordPage(
          queryBuilder: (_) => instructorPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: instructorStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
