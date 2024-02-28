import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_branch_model.dart';
export 'change_branch_model.dart';

class ChangeBranchWidget extends StatefulWidget {
  const ChangeBranchWidget({
    super.key,
    this.parameter1,
  });

  final DocumentReference? parameter1;

  @override
  State<ChangeBranchWidget> createState() => _ChangeBranchWidgetState();
}

class _ChangeBranchWidgetState extends State<ChangeBranchWidget> {
  late ChangeBranchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeBranchModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update(createUsersRecordData(
        courseLevel: createInstructorCourseLevelStruct(
          branchRef: widget.parameter1,
          clearUnsetFields: false,
        ),
      ));
      setState(() {
        FFAppState().branchChange = 1;
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

    return Text(
      FFLocalizations.of(context).getText(
        '0szhsa3f' /* * */,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium,
    );
  }
}
