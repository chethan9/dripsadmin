import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'batches_course_chapter_lock_process_model.dart';
export 'batches_course_chapter_lock_process_model.dart';

class BatchesCourseChapterLockProcessWidget extends StatefulWidget {
  const BatchesCourseChapterLockProcessWidget({
    super.key,
    this.parameter1,
  });

  final DocumentReference? parameter1;

  @override
  State<BatchesCourseChapterLockProcessWidget> createState() =>
      _BatchesCourseChapterLockProcessWidgetState();
}

class _BatchesCourseChapterLockProcessWidgetState
    extends State<BatchesCourseChapterLockProcessWidget> {
  late BatchesCourseChapterLockProcessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatchesCourseChapterLockProcessModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await widget.parameter1!.update(createChapterRecordData(
        status: true,
      ));
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

    return Container();
  }
}
