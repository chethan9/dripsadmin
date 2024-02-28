import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_phone_number_list_add_for_s_m_s_model.dart';
export 'user_phone_number_list_add_for_s_m_s_model.dart';

class UserPhoneNumberListAddForSMSWidget extends StatefulWidget {
  const UserPhoneNumberListAddForSMSWidget({
    super.key,
    required this.phoneNumber,
    required this.userRef,
  });

  final String? phoneNumber;
  final DocumentReference? userRef;

  @override
  State<UserPhoneNumberListAddForSMSWidget> createState() =>
      _UserPhoneNumberListAddForSMSWidgetState();
}

class _UserPhoneNumberListAddForSMSWidgetState
    extends State<UserPhoneNumberListAddForSMSWidget> {
  late UserPhoneNumberListAddForSMSModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserPhoneNumberListAddForSMSModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.updatePage(() {
        FFAppState().addToUserPhoneList(widget.phoneNumber!);
        FFAppState().addToUserRefList(widget.userRef!);
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
    );
  }
}
