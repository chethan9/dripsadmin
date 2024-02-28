import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batches_course_chapter_lock_process/batches_course_chapter_lock_process_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batches_status_effect2_subscriber/batches_status_effect2_subscriber_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'batch_chng_course_proces_model.dart';
export 'batch_chng_course_proces_model.dart';

class BatchChngCourseProcesWidget extends StatefulWidget {
  const BatchChngCourseProcesWidget({
    super.key,
    required this.courseRef,
    required this.prevBatchesRef,
    required this.prevBatchesStatus,
    required this.presentBatchRef,
    required this.presentBatchesStatus,
  });

  final CourseRecord? courseRef;
  final DocumentReference? prevBatchesRef;
  final String? prevBatchesStatus;
  final DocumentReference? presentBatchRef;
  final String? presentBatchesStatus;

  @override
  State<BatchChngCourseProcesWidget> createState() =>
      _BatchChngCourseProcesWidgetState();
}

class _BatchChngCourseProcesWidgetState
    extends State<BatchChngCourseProcesWidget> {
  late BatchChngCourseProcesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BatchChngCourseProcesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 5000));

      context.goNamed(
        'Course',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'batchChngCourseProces',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  if (MediaQuery.sizeOf(context).width > 1070.0)
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Lottie.asset(
                            'assets/lottie_animations/animation_lk0ujcxl.json',
                            width: 500.0,
                            height: 500.0,
                            fit: BoxFit.cover,
                            reverse: true,
                            animate: true,
                          ),
                        ),
                        FutureBuilder<List<ChapterRecord>>(
                          future: queryChapterRecordOnce(
                            queryBuilder: (chapterRecord) =>
                                chapterRecord.where(
                              'courseRef',
                              isEqualTo: widget.courseRef?.reference,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 10.0,
                                  height: 10.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0x00DF473F),
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<ChapterRecord> rowChapterRecordList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    rowChapterRecordList.length, (rowIndex) {
                                  final rowChapterRecord =
                                      rowChapterRecordList[rowIndex];
                                  return BatchesCourseChapterLockProcessWidget(
                                    key: Key(
                                        'Key9mm_${rowIndex}_of_${rowChapterRecordList.length}'),
                                    parameter1: rowChapterRecord.reference,
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                        FutureBuilder<List<SubscriptionRecord>>(
                          future: querySubscriptionRecordOnce(
                            queryBuilder: (subscriptionRecord) =>
                                subscriptionRecord
                                    .where(
                                      'courseRef',
                                      isEqualTo: widget.courseRef?.reference,
                                    )
                                    .where(
                                      'batchesRef',
                                      isEqualTo: widget.prevBatchesRef,
                                    ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 10.0,
                                  height: 10.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0x00DF473F),
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<SubscriptionRecord> rowSubscriptionRecordList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    rowSubscriptionRecordList.length,
                                    (rowIndex) {
                                  final rowSubscriptionRecord =
                                      rowSubscriptionRecordList[rowIndex];
                                  return BatchesStatusEffect2SubscriberWidget(
                                    key: Key(
                                        'Keyg1e_${rowIndex}_of_${rowSubscriptionRecordList.length}'),
                                    parameter1: rowSubscriptionRecord.reference,
                                    status: widget.prevBatchesStatus!,
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                        FutureBuilder<List<SubscriptionRecord>>(
                          future: querySubscriptionRecordOnce(
                            queryBuilder: (subscriptionRecord) =>
                                subscriptionRecord
                                    .where(
                                      'courseRef',
                                      isEqualTo: widget.courseRef?.reference,
                                    )
                                    .where(
                                      'batchesRef',
                                      isEqualTo: widget.presentBatchRef,
                                    ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 10.0,
                                  height: 10.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0x00DF473F),
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<SubscriptionRecord>
                                presentSubscriberSubscriptionRecordList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    presentSubscriberSubscriptionRecordList
                                        .length, (presentSubscriberIndex) {
                                  final presentSubscriberSubscriptionRecord =
                                      presentSubscriberSubscriptionRecordList[
                                          presentSubscriberIndex];
                                  return BatchesStatusEffect2SubscriberWidget(
                                    key: Key(
                                        'Key3rl_${presentSubscriberIndex}_of_${presentSubscriberSubscriptionRecordList.length}'),
                                    parameter1:
                                        presentSubscriberSubscriptionRecord
                                            .reference,
                                    status: widget.presentBatchesStatus!,
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  wrapWithModel(
                    model: _model.mobileModel,
                    updateCallback: () => setState(() {}),
                    child: MobileWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
