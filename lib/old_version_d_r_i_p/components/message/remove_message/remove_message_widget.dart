import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/course/log_details/pwd_couse_status/pwd_couse_status_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'remove_message_model.dart';
export 'remove_message_model.dart';

class RemoveMessageWidget extends StatefulWidget {
  const RemoveMessageWidget({
    super.key,
    this.courseRef,
    this.courseCatRef,
    this.countryRef,
    this.universityRef,
    this.branchRef,
    this.chapterRef,
    this.lessonRef,
    this.meetingRef,
    this.meetingBookedRef,
    this.instructorRef,
    this.courseStatus,
  });

  final CourseRecord? courseRef;
  final CourseCategoryRecord? courseCatRef;
  final CountryRecord? countryRef;
  final UniversityRecord? universityRef;
  final BranchRecord? branchRef;
  final ChapterRecord? chapterRef;
  final LessonsRecord? lessonRef;
  final MeetingRecord? meetingRef;
  final MeetingBookedRecord? meetingBookedRef;
  final InstructorUserRequestRecord? instructorRef;
  final String? courseStatus;

  @override
  State<RemoveMessageWidget> createState() => _RemoveMessageWidgetState();
}

class _RemoveMessageWidgetState extends State<RemoveMessageWidget> {
  late RemoveMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RemoveMessageModel());

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

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 6.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0x4D000000),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 530.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x19000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'yah1isbf' /* Remove! */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleLargeFamily),
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '0i8klchr' /* Do you want remove this.. */,
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '4itn91rg' /* Cancel */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 160.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          fontSize: 16.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if ((widget.courseRef != null) == true) {
                                        Navigator.pop(context);
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: PwdCouseStatusWidget(
                                                  status: widget.courseStatus!,
                                                  courseRef: widget.courseRef!,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      } else {
                                        if ((widget.courseCatRef != null) ==
                                            true) {
                                          _model.userIP2 =
                                              await actions.getUserIPaddress();
                                          _model.userSession2 =
                                              await actions.getUserSessionID(
                                            currentUserUid,
                                          );

                                          await ActivityLogRecord.collection
                                              .doc()
                                              .set({
                                            ...createActivityLogRecordData(
                                              userRef: currentUserReference,
                                              userIP: _model.userIP2,
                                              userRole: valueOrDefault(
                                                  currentUserDocument?.userRole,
                                                  ''),
                                              createdAt: getCurrentTimestamp,
                                              eventType: 'Deleted',
                                              object: 'Course Category',
                                              eventId: widget
                                                  .courseCatRef?.reference.id,
                                              eventTitle:
                                                  widget.courseCatRef?.name,
                                              userSessionID:
                                                  _model.userSession2,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'eventStatus': ['Delete'],
                                              },
                                            ),
                                          });
                                          await widget.courseCatRef!.reference
                                              .delete();
                                          Navigator.pop(context);
                                        } else {
                                          if ((widget.countryRef != null) ==
                                              true) {
                                            await widget.countryRef!.reference
                                                .delete();
                                            Navigator.pop(context);
                                          } else {
                                            if ((widget.universityRef !=
                                                    null) ==
                                                true) {
                                              await widget
                                                  .universityRef!.reference
                                                  .delete();
                                              Navigator.pop(context);
                                            } else {
                                              if ((widget.branchRef != null) ==
                                                  true) {
                                                _model.userIP5 = await actions
                                                    .getUserIPaddress();
                                                _model.userSession5 =
                                                    await actions
                                                        .getUserSessionID(
                                                  currentUserUid,
                                                );

                                                await ActivityLogRecord
                                                    .collection
                                                    .doc()
                                                    .set({
                                                  ...createActivityLogRecordData(
                                                    userRef:
                                                        currentUserReference,
                                                    userIP: _model.userIP5,
                                                    userRole: valueOrDefault(
                                                        currentUserDocument
                                                            ?.userRole,
                                                        ''),
                                                    createdAt:
                                                        getCurrentTimestamp,
                                                    eventType: 'Deleted',
                                                    object: 'Branch',
                                                    eventId: widget.branchRef
                                                        ?.reference.id,
                                                    eventTitle:
                                                        widget.branchRef?.name,
                                                    userSessionID:
                                                        _model.userSession5,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'eventStatus': ['Delete'],
                                                    },
                                                  ),
                                                });
                                                await widget
                                                    .branchRef!.reference
                                                    .delete();
                                                Navigator.pop(context);
                                              } else {
                                                if ((widget.chapterRef !=
                                                        null) ==
                                                    true) {
                                                  _model.userIP3 = await actions
                                                      .getUserIPaddress();
                                                  _model.userSession3 =
                                                      await actions
                                                          .getUserSessionID(
                                                    currentUserUid,
                                                  );

                                                  await ActivityLogRecord
                                                      .collection
                                                      .doc()
                                                      .set({
                                                    ...createActivityLogRecordData(
                                                      userRef:
                                                          currentUserReference,
                                                      userIP: _model.userIP3,
                                                      userRole: valueOrDefault(
                                                          currentUserDocument
                                                              ?.userRole,
                                                          ''),
                                                      createdAt:
                                                          getCurrentTimestamp,
                                                      eventType: 'Deleted',
                                                      object: 'Chapter',
                                                      eventId: widget.chapterRef
                                                          ?.reference.id,
                                                      eventTitle: widget
                                                          .chapterRef?.name,
                                                      userSessionID:
                                                          _model.userSession3,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'eventStatus': [
                                                          'Delete'
                                                        ],
                                                      },
                                                    ),
                                                  });
                                                  await widget
                                                      .chapterRef!.reference
                                                      .delete();
                                                  Navigator.pop(context);
                                                } else {
                                                  if ((widget.lessonRef !=
                                                          null) ==
                                                      true) {
                                                    _model.userIP4 =
                                                        await actions
                                                            .getUserIPaddress();
                                                    _model.userSession4 =
                                                        await actions
                                                            .getUserSessionID(
                                                      currentUserUid,
                                                    );

                                                    await ActivityLogRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createActivityLogRecordData(
                                                        userRef:
                                                            currentUserReference,
                                                        userIP: _model.userIP4,
                                                        userRole: valueOrDefault(
                                                            currentUserDocument
                                                                ?.userRole,
                                                            ''),
                                                        createdAt:
                                                            getCurrentTimestamp,
                                                        eventType: 'Deleted',
                                                        object: 'Lesson',
                                                        eventId: widget
                                                            .lessonRef
                                                            ?.reference
                                                            .id,
                                                        eventTitle: widget
                                                            .lessonRef?.name,
                                                        userSessionID:
                                                            _model.userSession4,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'eventStatus': [
                                                            'Deleted'
                                                          ],
                                                        },
                                                      ),
                                                    });
                                                    await widget
                                                        .lessonRef!.reference
                                                        .delete();
                                                    Navigator.pop(context);
                                                  } else {
                                                    if ((widget.meetingRef !=
                                                            null) ==
                                                        true) {
                                                      _model.userIP6 =
                                                          await actions
                                                              .getUserIPaddress();
                                                      _model.userSession6 =
                                                          await actions
                                                              .getUserSessionID(
                                                        currentUserUid,
                                                      );

                                                      await ActivityLogRecord
                                                          .collection
                                                          .doc()
                                                          .set({
                                                        ...createActivityLogRecordData(
                                                          userRef:
                                                              currentUserReference,
                                                          userIP:
                                                              _model.userIP6,
                                                          userRole: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userRole,
                                                              ''),
                                                          createdAt:
                                                              getCurrentTimestamp,
                                                          eventType: 'Deleted',
                                                          object: 'Meeting',
                                                          eventId: widget
                                                              .meetingRef
                                                              ?.reference
                                                              .id,
                                                          eventTitle: widget
                                                              .meetingRef
                                                              ?.title,
                                                          userSessionID: _model
                                                              .userSession6,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'eventStatus': [
                                                              'Delete'
                                                            ],
                                                          },
                                                        ),
                                                      });
                                                      await widget
                                                          .meetingRef!.reference
                                                          .delete();
                                                      Navigator.pop(context);
                                                    } else {
                                                      if ((widget.meetingBookedRef !=
                                                              null) ==
                                                          true) {
                                                        await widget
                                                            .meetingBookedRef!
                                                            .reference
                                                            .delete();
                                                        Navigator.pop(context);
                                                      } else {
                                                        if ((widget.instructorRef !=
                                                                null) ==
                                                            true) {
                                                          await widget
                                                              .instructorRef!
                                                              .reference
                                                              .delete();
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      setState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '6c6xdkrw' /* Remove */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 160.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFFF0000),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
