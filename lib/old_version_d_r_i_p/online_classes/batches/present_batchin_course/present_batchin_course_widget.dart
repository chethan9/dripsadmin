import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/pwd_couse_batch/pwd_couse_batch_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'present_batchin_course_model.dart';
export 'present_batchin_course_model.dart';

class PresentBatchinCourseWidget extends StatefulWidget {
  const PresentBatchinCourseWidget({
    super.key,
    required this.courseRef,
    required this.newBatchesName,
    required this.prevBatchesRef,
  });

  final CourseRecord? courseRef;
  final String? newBatchesName;
  final DocumentReference? prevBatchesRef;

  @override
  State<PresentBatchinCourseWidget> createState() =>
      _PresentBatchinCourseWidgetState();
}

class _PresentBatchinCourseWidgetState
    extends State<PresentBatchinCourseWidget> {
  late PresentBatchinCourseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PresentBatchinCourseModel());

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

    return StreamBuilder<BatchesRecord>(
      stream: BatchesRecord.getDocument(widget.courseRef!.batchesRef!),
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
        final containerBatchesRecord = snapshot.data!;
        return Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '38b57s33' /* Present batch details */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            '${containerBatchesRecord.name} (${containerBatchesRecord.status})',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            '${dateTimeFormat(
                              'yMMMd',
                              containerBatchesRecord.startDate,
                              locale: FFLocalizations.of(context).languageCode,
                            )} - ${dateTimeFormat(
                              'yMMMd',
                              containerBatchesRecord.endDate,
                              locale: FFLocalizations.of(context).languageCode,
                            )}',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(0.0, 0.0),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<SettingsRecord>>(
                            stream: querySettingsRecord(
                              singleRecord: true,
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
                              List<SettingsRecord> wrapSettingsRecordList =
                                  snapshot.data!;
                              final wrapSettingsRecord =
                                  wrapSettingsRecordList.isNotEmpty
                                      ? wrapSettingsRecordList.first
                                      : null;
                              return Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 20.0, 5.0, 20.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              Navigator.pop(context);
                                            },
                                            child: wrapWithModel(
                                              model: _model.addButtonModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: AddButtonWidget(
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '8wruw2ps' /* Cancel */,
                                                ),
                                                icon: Icon(
                                                  Icons.cancel_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  size: 16.0,
                                                ),
                                                bg1: Color(0xFFAC0900),
                                                bg2: Color(0xFFEB0000),
                                                height: 45,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Builder(
                                          builder: (context) => Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 20.0, 5.0, 20.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                Navigator.pop(context);
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: Container(
                                                          width: 400.0,
                                                          child:
                                                              PwdCouseBatchWidget(
                                                            courseRef: widget
                                                                .courseRef!,
                                                            newBatchesName: widget
                                                                .newBatchesName!,
                                                            prevBatchesStatus:
                                                                'Archived',
                                                            prevBatchesRef: widget
                                                                .prevBatchesRef,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model: _model.addButtonModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: AddButtonWidget(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'j9bd5ypn' /* Update */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.save_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 16.0,
                                                  ),
                                                  height: 45,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
