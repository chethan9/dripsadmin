import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_message1_model.dart';
export 'delete_message1_model.dart';

class DeleteMessage1Widget extends StatefulWidget {
  const DeleteMessage1Widget({
    super.key,
    this.userRef,
    this.annRef,
    this.reviewRef,
    this.zoomLessonRef,
    this.subscriptionRef,
    this.bugreportRef,
    this.pollRef,
    this.pollAnswerRef,
    this.classesZoomRef,
    this.zoomIndex,
    this.courseZoomRef,
  });

  final UsersRecord? userRef;
  final AnnouncementRecord? annRef;
  final ReviewRecord? reviewRef;
  final ZoomCourseRecord? zoomLessonRef;
  final SubscriptionRecord? subscriptionRef;
  final BugreportRecord? bugreportRef;
  final PollRecord? pollRef;
  final PollAnswerRecord? pollAnswerRef;
  final ClassesRecord? classesZoomRef;
  final int? zoomIndex;
  final CourseRecord? courseZoomRef;

  @override
  State<DeleteMessage1Widget> createState() => _DeleteMessage1WidgetState();
}

class _DeleteMessage1WidgetState extends State<DeleteMessage1Widget> {
  late DeleteMessage1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteMessage1Model());

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

    return Padding(
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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'hujiy9x9' /* Delete! */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '37xnadqz' /* Do you want delete this.. */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'y7qhe7gp' /* Cancel */,
                        ),
                        options: FFButtonOptions(
                          width: 160.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                fontSize: 16.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.userIP1 = await actions.getUserIPaddress();
                          _model.userSession1 = await actions.getUserSessionID(
                            currentUserUid,
                          );
                          if ((widget.userRef != null) == true) {
                            await widget.userRef!.reference.delete();
                            await actions.findDeleteUserRefAll(
                              widget.userRef!.reference,
                            );
                            Navigator.pop(context);
                          } else {
                            if ((widget.annRef != null) == true) {
                              await ActivityLogRecord.collection.doc().set({
                                ...createActivityLogRecordData(
                                  userRef: currentUserReference,
                                  userIP: _model.userIP1,
                                  userRole: valueOrDefault(
                                      currentUserDocument?.userRole, ''),
                                  createdAt: getCurrentTimestamp,
                                  eventType: 'Deleted',
                                  object: 'Announcement',
                                  eventId: widget.annRef?.reference.id,
                                  eventTitle: widget.annRef?.title,
                                  userSessionID: _model.userSession1,
                                ),
                                ...mapToFirestore(
                                  {
                                    'eventStatus': ['Delete'],
                                  },
                                ),
                              });
                              await widget.annRef!.reference.delete();
                              Navigator.pop(context);
                            } else {
                              if ((widget.reviewRef != null) == true) {
                                await ActivityLogRecord.collection.doc().set({
                                  ...createActivityLogRecordData(
                                    userRef: currentUserReference,
                                    userIP: _model.userIP1,
                                    userRole: valueOrDefault(
                                        currentUserDocument?.userRole, ''),
                                    createdAt: getCurrentTimestamp,
                                    eventType: 'Deleted',
                                    object: 'Review',
                                    eventId: widget.reviewRef?.reference.id,
                                    eventTitle: widget.reviewRef?.rplyComments,
                                    userSessionID: _model.userSession1,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'eventStatus': ['Delete Rply'],
                                    },
                                  ),
                                });

                                await widget.reviewRef!.reference
                                    .update(createReviewRecordData(
                                  rplyStatus: '',
                                ));
                                Navigator.pop(context);
                              } else {
                                if ((widget.zoomLessonRef != null) == true) {
                                  await ActivityLogRecord.collection.doc().set({
                                    ...createActivityLogRecordData(
                                      userRef: currentUserReference,
                                      userIP: _model.userIP1,
                                      userRole: valueOrDefault(
                                          currentUserDocument?.userRole, ''),
                                      createdAt: getCurrentTimestamp,
                                      eventType: 'Deleted',
                                      object: 'Zoom Lesson',
                                      eventId:
                                          widget.zoomLessonRef?.reference.id,
                                      eventTitle: widget.zoomLessonRef?.title,
                                      userSessionID: _model.userSession1,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'eventStatus': ['Delete'],
                                      },
                                    ),
                                  });
                                  await widget.zoomLessonRef!.reference
                                      .delete();
                                  await DeleteMeetingCall.call(
                                    clientName: 'drip',
                                    meetingId: widget.zoomLessonRef?.meetingID,
                                  );
                                  Navigator.pop(context);
                                } else {
                                  if ((widget.subscriptionRef != null) ==
                                      true) {
                                    _model.userResult1 =
                                        await UsersRecord.getDocumentOnce(
                                            widget.subscriptionRef!.userRef!);

                                    await ActivityLogRecord.collection
                                        .doc()
                                        .set({
                                      ...createActivityLogRecordData(
                                        userRef: currentUserReference,
                                        userIP: _model.userIP1,
                                        userRole: valueOrDefault(
                                            currentUserDocument?.userRole, ''),
                                        createdAt: getCurrentTimestamp,
                                        eventType: 'Deleted',
                                        object: 'Subscription',
                                        eventId: widget
                                            .subscriptionRef?.reference.id,
                                        eventTitle:
                                            _model.userResult1?.displayName,
                                        userSessionID: _model.userSession1,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'eventStatus': ['Delete'],
                                        },
                                      ),
                                    });
                                    await widget.subscriptionRef!.reference
                                        .delete();
                                    Navigator.pop(context);
                                  } else {
                                    if ((widget.bugreportRef != null) == true) {
                                      await ActivityLogRecord.collection
                                          .doc()
                                          .set({
                                        ...createActivityLogRecordData(
                                          userRef: currentUserReference,
                                          userIP: _model.userIP1,
                                          userRole: valueOrDefault(
                                              currentUserDocument?.userRole,
                                              ''),
                                          createdAt: getCurrentTimestamp,
                                          eventType: 'Deleted',
                                          object: 'Bug Report',
                                          eventId:
                                              widget.bugreportRef?.reference.id,
                                          eventTitle:
                                              widget.bugreportRef?.title,
                                          userSessionID: _model.userSession1,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'eventStatus': ['Delete'],
                                          },
                                        ),
                                      });
                                      await widget.bugreportRef!.reference
                                          .delete();
                                      Navigator.pop(context);
                                    } else {
                                      if ((widget.pollRef != null) == true) {
                                        await widget.pollRef!.reference
                                            .delete();
                                        await actions.findDeleteUnderPoll(
                                          widget.pollRef!.reference,
                                        );

                                        await ActivityLogRecord.collection
                                            .doc()
                                            .set({
                                          ...createActivityLogRecordData(
                                            userRef: currentUserReference,
                                            userIP: _model.userIP1,
                                            userRole: valueOrDefault(
                                                currentUserDocument?.userRole,
                                                ''),
                                            createdAt: getCurrentTimestamp,
                                            eventType: 'Deleted',
                                            object: 'Poll',
                                            eventId:
                                                widget.pollRef?.reference.id,
                                            eventTitle: widget.pollRef?.title,
                                            userSessionID: _model.userSession1,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'eventStatus': ['Delete'],
                                            },
                                          ),
                                        });
                                        Navigator.pop(context);
                                      } else {
                                        if ((widget.pollAnswerRef != null) ==
                                            true) {
                                          await widget.pollAnswerRef!.reference
                                              .delete();

                                          await ActivityLogRecord.collection
                                              .doc()
                                              .set({
                                            ...createActivityLogRecordData(
                                              userRef: currentUserReference,
                                              userIP: _model.userIP1,
                                              userRole: valueOrDefault(
                                                  currentUserDocument?.userRole,
                                                  ''),
                                              createdAt: getCurrentTimestamp,
                                              eventType: 'Deleted',
                                              object: 'Poll Answer',
                                              eventId: widget
                                                  .pollAnswerRef?.reference.id,
                                              eventTitle:
                                                  widget.pollAnswerRef?.answer,
                                              userSessionID:
                                                  _model.userSession1,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'eventStatus': ['Delete'],
                                              },
                                            ),
                                          });
                                          Navigator.pop(context);
                                        } else {
                                          if ((widget.classesZoomRef != null) ==
                                              true) {
                                            FFAppState()
                                                .removeAtIndexFromZoomClass(
                                                    widget.zoomIndex!);

                                            await widget
                                                .classesZoomRef!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'zoomClassList':
                                                      getZoomClassesListFirestoreData(
                                                    FFAppState().zoomClass,
                                                  ),
                                                },
                                              ),
                                            });
                                            FFAppState().zoomClass = [];

                                            await ActivityLogRecord.collection
                                                .doc()
                                                .set({
                                              ...createActivityLogRecordData(
                                                userRef: currentUserReference,
                                                userIP: _model.userIP1,
                                                userRole: valueOrDefault(
                                                    currentUserDocument
                                                        ?.userRole,
                                                    ''),
                                                createdAt: getCurrentTimestamp,
                                                eventType: 'Deleted',
                                                object: 'Zoom Online Class',
                                                eventId: widget.classesZoomRef
                                                    ?.reference.id,
                                                eventTitle: widget
                                                    .pollAnswerRef?.answer,
                                                userSessionID:
                                                    _model.userSession1,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'eventStatus': ['Delete'],
                                                },
                                              ),
                                            });
                                            Navigator.pop(context);

                                            context.pushNamed(
                                              'Classes',
                                              queryParameters: {
                                                'courseRef': serializeParam(
                                                  widget.courseZoomRef,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'courseRef':
                                                    widget.courseZoomRef,
                                              },
                                            );
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
                          '6g0o86j6' /* Delete */,
                        ),
                        options: FFButtonOptions(
                          width: 160.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFF0000),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: Colors.white,
                                fontSize: 16.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
