import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/message/remove_message/remove_message_widget.dart';
import '/old_version_d_r_i_p/course/course/course_grid_popup/course_grid_popup_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/list_avilable_batches/list_avilable_batches_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'course_grid_model.dart';
export 'course_grid_model.dart';

class CourseGridWidget extends StatefulWidget {
  const CourseGridWidget({
    super.key,
    required this.courseRef,
  });

  final CourseRecord? courseRef;

  @override
  State<CourseGridWidget> createState() => _CourseGridWidgetState();
}

class _CourseGridWidgetState extends State<CourseGridWidget> {
  late CourseGridModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseGridModel());

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

    return Builder(
      builder: (context) => Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: AlignmentDirectional(0.0, 0.0)
                      .resolve(Directionality.of(context)),
                  child: WebViewAware(
                    child: Container(
                      width: 500.0,
                      child: CourseGridPopupWidget(
                        courseRef: widget.courseRef!,
                      ),
                    ),
                  ),
                );
              },
            ).then((value) => setState(() {}));
          },
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 250.0,
              maxHeight: 250.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x20000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.courseRef!.name.maybeHandleOverflow(
                      maxChars: 15,
                      replacement: '…',
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 150.0,
                    ),
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          widget.courseRef?.image,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-r-i-p-admin-new-g8kal3/assets/17869rverbza/Placeholder.png',
                        ),
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AlignedTooltip(
                        content: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '3xid6hb8' /* Edit */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    fontSize: 12.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            )),
                        offset: 4.0,
                        preferredDirection: AxisDirection.down,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 50),
                        showDuration: Duration(milliseconds: 100),
                        triggerMode: TooltipTriggerMode.tap,
                        child: Builder(
                          builder: (context) => FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            borderWidth: 1.0,
                            buttonSize: 36.0,
                            fillColor: Color(0xFFF5910F),
                            icon: Icon(
                              Icons.edit_outlined,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 18.0,
                            ),
                            onPressed: () async {
                              if (widget.courseRef?.batchesRef != null) {
                                _model.batchRslt1 =
                                    await BatchesRecord.getDocumentOnce(
                                        widget.courseRef!.batchesRef!);
                                if ((_model.batchRslt1?.status == 'Ongoing') &&
                                    (_model.batchRslt1?.courseRef?.contains(
                                            widget.courseRef?.reference) ==
                                        true)) {
                                  setState(() {
                                    FFAppState().videoRef = null;
                                  });

                                  context.pushNamed(
                                    'CourseFORM',
                                    queryParameters: {
                                      'courseRef': serializeParam(
                                        widget.courseRef,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'courseRef': widget.courseRef,
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child: Container(
                                            width: 400.0,
                                            child: ListAvilableBatchesWidget(
                                              courseRef: widget.courseRef!,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: Container(
                                          width: 400.0,
                                          child: ListAvilableBatchesWidget(
                                            courseRef: widget.courseRef!,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              }

                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      AlignedTooltip(
                        content: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '5942cd8r' /* Preview */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    fontSize: 12.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            )),
                        offset: 4.0,
                        preferredDirection: AxisDirection.down,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 50),
                        showDuration: Duration(milliseconds: 100),
                        triggerMode: TooltipTriggerMode.tap,
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 35.0,
                          fillColor: Color(0xFF1AA6FF),
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 16.0,
                          ),
                          onPressed: () async {
                            await launchURL(
                                'https://dripholisticfitness.com/session?courseRef=${widget.courseRef?.reference.id}');
                          },
                        ),
                      ),
                      AlignedTooltip(
                        content: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'e3gilek6' /* Menu */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    fontSize: 12.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            )),
                        offset: 4.0,
                        preferredDirection: AxisDirection.down,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 50),
                        showDuration: Duration(milliseconds: 100),
                        triggerMode: TooltipTriggerMode.tap,
                        child: Builder(
                          builder: (context) => FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            borderWidth: 1.0,
                            buttonSize: 36.0,
                            fillColor: FlutterFlowTheme.of(context).accent3,
                            icon: Icon(
                              Icons.menu,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 18.0,
                            ),
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: Container(
                                        width: 500.0,
                                        child: CourseGridPopupWidget(
                                          courseRef: widget.courseRef!,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                          ),
                        ),
                      ),
                      if (widget.courseRef?.status != 'Archived')
                        AlignedTooltip(
                          content: Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'g61dyres' /* Delete */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      fontSize: 12.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              )),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 50),
                          showDuration: Duration(milliseconds: 100),
                          triggerMode: TooltipTriggerMode.tap,
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            borderWidth: 1.0,
                            buttonSize: 35.0,
                            icon: Icon(
                              Icons.delete_outlined,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Color(0x00FFFFFF),
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: Container(
                                        height: 200.0,
                                        child: RemoveMessageWidget(
                                          courseRef: widget.courseRef,
                                          courseStatus: 'Archived',
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ),
                      if (widget.courseRef?.status == 'Archived')
                        AlignedTooltip(
                          content: Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'unxqzwh2' /* Move to draft */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      fontSize: 12.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              )),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 50),
                          showDuration: Duration(milliseconds: 100),
                          triggerMode: TooltipTriggerMode.tap,
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            borderWidth: 1.0,
                            buttonSize: 35.0,
                            fillColor: Color(0xFFEB0000),
                            icon: Icon(
                              Icons.publish,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Color(0x00FFFFFF),
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: Container(
                                        height: 200.0,
                                        child: RemoveMessageWidget(
                                          courseRef: widget.courseRef,
                                          courseStatus: 'Draft',
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
