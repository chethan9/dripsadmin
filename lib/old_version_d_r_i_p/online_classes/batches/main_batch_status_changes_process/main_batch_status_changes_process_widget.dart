import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batches_course_chapter_lock_process/batches_course_chapter_lock_process_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batches_status_effect2_subscriber/batches_status_effect2_subscriber_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/batchesbased_course_process/batchesbased_course_process_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'main_batch_status_changes_process_model.dart';
export 'main_batch_status_changes_process_model.dart';

class MainBatchStatusChangesProcessWidget extends StatefulWidget {
  const MainBatchStatusChangesProcessWidget({
    super.key,
    required this.batchesRef,
    required this.batchesStatus,
  });

  final BatchesRecord? batchesRef;
  final String? batchesStatus;

  @override
  State<MainBatchStatusChangesProcessWidget> createState() =>
      _MainBatchStatusChangesProcessWidgetState();
}

class _MainBatchStatusChangesProcessWidgetState
    extends State<MainBatchStatusChangesProcessWidget> {
  late MainBatchStatusChangesProcessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainBatchStatusChangesProcessModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 10000));

      context.pushNamed('Batch');
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
        title: 'mainBatchStatusChangesProcess',
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final courseList1 =
                                  widget.batchesRef?.courseRef?.toList() ?? [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: courseList1.length,
                                itemBuilder: (context, courseList1Index) {
                                  final courseList1Item =
                                      courseList1[courseList1Index];
                                  return FutureBuilder<List<ChapterRecord>>(
                                    future: queryChapterRecordOnce(
                                      queryBuilder: (chapterRecord) =>
                                          chapterRecord.where(
                                        'courseRef',
                                        isEqualTo: courseList1Item,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                              rowChapterRecordList.length,
                                              (rowIndex) {
                                            final rowChapterRecord =
                                                rowChapterRecordList[rowIndex];
                                            return BatchesCourseChapterLockProcessWidget(
                                              key: Key(
                                                  'Key1zo_${rowIndex}_of_${rowChapterRecordList.length}'),
                                              parameter1:
                                                  rowChapterRecord.reference,
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final courseList1 =
                                  widget.batchesRef?.courseRef?.toList() ?? [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: courseList1.length,
                                itemBuilder: (context, courseList1Index) {
                                  final courseList1Item =
                                      courseList1[courseList1Index];
                                  return StreamBuilder<CourseRecord>(
                                    stream: CourseRecord.getDocument(
                                        courseList1Item),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 10.0,
                                            height: 10.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0x00DF473F),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final rowCourseRecord = snapshot.data!;
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            BatchesbasedCourseProcessWidget(
                                              key: Key(
                                                  'Keyz80_${courseList1Index}_of_${courseList1.length}'),
                                              parameter1:
                                                  widget.batchesRef?.reference,
                                              parameter2:
                                                  rowCourseRecord.batchesRef,
                                              parameter3: widget.batchesStatus!,
                                              parameter4:
                                                  rowCourseRecord.reference,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final courseList2 =
                                  widget.batchesRef?.courseRef?.toList() ?? [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: courseList2.length,
                                itemBuilder: (context, courseList2Index) {
                                  final courseList2Item =
                                      courseList2[courseList2Index];
                                  return FutureBuilder<
                                      List<SubscriptionRecord>>(
                                    future: querySubscriptionRecordOnce(
                                      queryBuilder: (subscriptionRecord) =>
                                          subscriptionRecord
                                              .where(
                                                'batchesRef',
                                                isEqualTo: widget
                                                    .batchesRef?.reference,
                                              )
                                              .where(
                                                'courseRef',
                                                isEqualTo: courseList2Item,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0x00DF473F),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<SubscriptionRecord>
                                          rowSubscriptionRecordList =
                                          snapshot.data!;
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                              rowSubscriptionRecordList.length,
                                              (rowIndex) {
                                            final rowSubscriptionRecord =
                                                rowSubscriptionRecordList[
                                                    rowIndex];
                                            return BatchesStatusEffect2SubscriberWidget(
                                              key: Key(
                                                  'Keycqd_${rowIndex}_of_${rowSubscriptionRecordList.length}'),
                                              status: widget.batchesStatus!,
                                              parameter1: rowSubscriptionRecord
                                                  .reference,
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
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
