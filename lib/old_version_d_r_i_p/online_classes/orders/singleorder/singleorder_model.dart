import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'singleorder_widget.dart' show SingleorderWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SingleorderModel extends FlutterFlowModel<SingleorderWidget> {
  ///  Local state fields for this page.

  int? paymentProcess = 1;

  List<OrderProductStruct> orderItems = [];
  void addToOrderItems(OrderProductStruct item) => orderItems.add(item);
  void removeFromOrderItems(OrderProductStruct item) => orderItems.remove(item);
  void removeAtIndexFromOrderItems(int index) => orderItems.removeAt(index);
  void insertAtIndexInOrderItems(int index, OrderProductStruct item) =>
      orderItems.insert(index, item);
  void updateOrderItemsAtIndex(
          int index, Function(OrderProductStruct) updateFn) =>
      orderItems[index] = updateFn(orderItems[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for attributeDropdown widget.
  String? attributeDropdownValue;
  FormFieldController<String>? attributeDropdownValueController;
  // Stores action output result for [Backend Call - Read Document] action in save widget.
  CourseRecord? courseRslt1;
  // Stores action output result for [Firestore Query - Query a collection] action in save widget.
  SubscriptionRecord? userSubscriptionRslt1;
  // Stores action output result for [Backend Call - Read Document] action in save widget.
  UsersRecord? userSubRslt;
  // Stores action output result for [Backend Call - Read Document] action in save widget.
  OrdersRecord? orderRslt1;
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
    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
