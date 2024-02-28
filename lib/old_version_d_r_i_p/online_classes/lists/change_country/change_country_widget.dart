import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_country_model.dart';
export 'change_country_model.dart';

class ChangeCountryWidget extends StatefulWidget {
  const ChangeCountryWidget({
    super.key,
    this.countryRef,
  });

  final DocumentReference? countryRef;

  @override
  State<ChangeCountryWidget> createState() => _ChangeCountryWidgetState();
}

class _ChangeCountryWidgetState extends State<ChangeCountryWidget> {
  late ChangeCountryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeCountryModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update(createUsersRecordData(
        courseLevel: createInstructorCourseLevelStruct(
          coutryRef: widget.countryRef,
          fieldValues: {
            'universityRef': FieldValue.delete(),
            'branchRef': FieldValue.delete(),
            'categoryRef': FieldValue.delete(),
          },
          clearUnsetFields: false,
        ),
      ));
      setState(() {
        FFAppState().countryChange = 1;
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
        '14wdqq77' /* * */,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium,
    );
  }
}
