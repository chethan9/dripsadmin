import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_university_model.dart';
export 'change_university_model.dart';

class ChangeUniversityWidget extends StatefulWidget {
  const ChangeUniversityWidget({
    super.key,
    this.parameter1,
  });

  final DocumentReference? parameter1;

  @override
  State<ChangeUniversityWidget> createState() => _ChangeUniversityWidgetState();
}

class _ChangeUniversityWidgetState extends State<ChangeUniversityWidget> {
  late ChangeUniversityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeUniversityModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update(createUsersRecordData(
        courseLevel: createInstructorCourseLevelStruct(
          universityRef: widget.parameter1,
          fieldValues: {
            'branchRef': FieldValue.delete(),
            'categoryRef': FieldValue.delete(),
          },
          clearUnsetFields: false,
        ),
      ));
      setState(() {
        FFAppState().universityChange = 1;
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
        'c88npaj3' /* * */,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium,
    );
  }
}
