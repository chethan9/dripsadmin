import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/media_management/remove_video/remove_video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'video_uploading_status1_model.dart';
export 'video_uploading_status1_model.dart';

class VideoUploadingStatus1Widget extends StatefulWidget {
  const VideoUploadingStatus1Widget({super.key});

  @override
  State<VideoUploadingStatus1Widget> createState() =>
      _VideoUploadingStatus1WidgetState();
}

class _VideoUploadingStatus1WidgetState
    extends State<VideoUploadingStatus1Widget> {
  late VideoUploadingStatus1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoUploadingStatus1Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      while (_model.initialValue! > 0) {
        _model.apiResult8ya123 = await FolderBasedVideoListCall.call(
          folderId: FFAppConstants.VdoChipher,
        );
        if ((_model.apiResult8ya123?.succeeded ?? true)) {
          await Future.delayed(const Duration(milliseconds: 1000));
        }
        await Future.delayed(const Duration(milliseconds: 2000));
        setState(() {
          _model.initialValue = _model.initialValue! + 1;
        });
      }
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

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) {
              final processingvideolist =
                  FolderBasedVideoListCall.isNotReadyList(
                        (_model.apiResult8ya123?.jsonBody ?? ''),
                      )?.toList() ??
                      [];
              return GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.sizeOf(context).width < 1200.0 ? 5 : 6,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: processingvideolist.length,
                itemBuilder: (context, processingvideolistIndex) {
                  final processingvideolistItem =
                      processingvideolist[processingvideolistIndex];
                  return Stack(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Lottie.asset(
                                'assets/lottie_animations/Drip-video-processing.json',
                                width: 200.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                                animate: true,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 4.0),
                                child: Text(
                                  getJsonField(
                                    processingvideolistItem,
                                    r'''$..title''',
                                  ).toString().maybeHandleOverflow(
                                        maxChars: 18,
                                        replacement: '…',
                                      ),
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Text(
                                    '${getJsonField(
                                      processingvideolistItem,
                                      r'''$..status''',
                                    ).toString()}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 12.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 4.0),
                                  child: Text(
                                    '${'Processing' == getJsonField(
                                          processingvideolistItem,
                                          r'''$..status''',
                                        ) ? ' Video is being processed, please check back later.' : ' '}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 12.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                              if (FFAppConstants.uploadTime <=
                                  (((DateTime.now()).difference(
                                          DateTime.fromMillisecondsSinceEpoch(
                                              getJsonField(
                                                    processingvideolistItem,
                                                    r'''$..upload_time''',
                                                  ) *
                                                  1000)))
                                      .inHours))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 4.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'qcjwtdz8' /* Upload Failed!!! */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontSize: 12.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsets.all(4.0),
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
                                        width: 400.0,
                                        child: RemoveVideoWidget(
                                          videoId: getJsonField(
                                            processingvideolistItem,
                                            r'''$..id''',
                                          ).toString(),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 3.0,
                              shape: const CircleBorder(),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
