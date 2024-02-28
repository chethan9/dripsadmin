import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_message_model.dart';
export 'delete_message_model.dart';

class DeleteMessageWidget extends StatefulWidget {
  const DeleteMessageWidget({
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
    this.userRef,
    this.formRef,
    this.questionRef,
    this.coursePlan,
    this.classesRef,
    this.bookedClassRef,
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
  final UsersRecord? userRef;
  final FormRecord? formRef;
  final QuestionRecord? questionRef;
  final CoursePlanRecord? coursePlan;
  final ClassesRecord? classesRef;
  final BookedClassesRecord? bookedClassRef;

  @override
  State<DeleteMessageWidget> createState() => _DeleteMessageWidgetState();
}

class _DeleteMessageWidgetState extends State<DeleteMessageWidget> {
  late DeleteMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteMessageModel());

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

    return Column(
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
                      '5sateaw4' /* Delete! */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleLargeFamily),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'z3gsl6yu' /* Do you want delete this.. */,
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
                              '8ntnf1av' /* Cancel */,
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
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                              elevation: 2.0,
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.userIP1 = await actions.getUserIPaddress();
                              _model.userSession1 =
                                  await actions.getUserSessionID(
                                currentUserUid,
                              );
                              if ((widget.courseRef != null) == true) {
                                await widget.courseRef!.reference.delete();
                                Navigator.pop(context);
                              } else {
                                if ((widget.courseCatRef != null) == true) {
                                  await ActivityLogRecord.collection.doc().set({
                                    ...createActivityLogRecordData(
                                      userRef: currentUserReference,
                                      userIP: _model.userIP1,
                                      userRole: valueOrDefault(
                                          currentUserDocument?.userRole, ''),
                                      createdAt: getCurrentTimestamp,
                                      eventType: 'Deleted',
                                      object: 'Coures Category',
                                      eventId:
                                          widget.courseCatRef?.reference.id,
                                      eventTitle: widget.courseCatRef?.name,
                                      userSessionID: _model.userSession1,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'eventStatus': ['Delete'],
                                      },
                                    ),
                                  });
                                  await widget.courseCatRef!.reference.delete();
                                  Navigator.pop(context);
                                } else {
                                  if ((widget.countryRef != null) == true) {
                                    _model.universityRssltCountry1 =
                                        await queryUniversityRecordOnce(
                                      queryBuilder: (universityRecord) =>
                                          universityRecord.where(
                                        'countryRef',
                                        isEqualTo: widget.countryRef?.reference,
                                      ),
                                    );
                                    await widget.countryRef!.reference.delete();
                                    Navigator.pop(context);
                                  } else {
                                    if ((widget.universityRef != null) ==
                                        true) {
                                      await widget.universityRef!.reference
                                          .delete();
                                      Navigator.pop(context);
                                    } else {
                                      if ((widget.branchRef != null) == true) {
                                        await widget.branchRef!.reference
                                            .delete();
                                        Navigator.pop(context);
                                      } else {
                                        if ((widget.chapterRef != null) ==
                                            true) {
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
                                              object: 'Chapter',
                                              eventId: widget
                                                  .chapterRef?.reference.id,
                                              eventTitle:
                                                  widget.chapterRef?.name,
                                              userSessionID:
                                                  _model.userSession1,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'eventStatus': ['Delete'],
                                              },
                                            ),
                                          });
                                          await widget.chapterRef!.reference
                                              .delete();
                                          Navigator.pop(context);
                                        } else {
                                          if ((widget.lessonRef != null) ==
                                              true) {
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
                                                object: 'Lesson',
                                                eventId: widget
                                                    .lessonRef?.reference.id,
                                                eventTitle:
                                                    widget.lessonRef?.name,
                                                userSessionID:
                                                    _model.userSession1,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'eventStatus': ['Delete'],
                                                },
                                              ),
                                            });
                                            await widget.lessonRef!.reference
                                                .delete();
                                            Navigator.pop(context);
                                          } else {
                                            if ((widget.meetingRef != null) ==
                                                true) {
                                              await widget.meetingRef!.reference
                                                  .delete();
                                              Navigator.pop(context);
                                            } else {
                                              if ((widget.meetingBookedRef !=
                                                      null) ==
                                                  true) {
                                                await widget
                                                    .meetingBookedRef!.reference
                                                    .delete();
                                                Navigator.pop(context);
                                              } else {
                                                if ((widget.instructorRef !=
                                                        null) ==
                                                    true) {
                                                  await widget
                                                      .instructorRef!.reference
                                                      .delete();
                                                  Navigator.pop(context);
                                                } else {
                                                  if ((widget.userRef !=
                                                          null) ==
                                                      true) {
                                                    await widget
                                                        .userRef!.reference
                                                        .update(
                                                            createUsersRecordData(
                                                      status: 'Archived',
                                                      updatedAt:
                                                          getCurrentTimestamp,
                                                    ));

                                                    await ActivityLogRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createActivityLogRecordData(
                                                        userRef:
                                                            currentUserReference,
                                                        userIP: _model.userIP1,
                                                        userRole: valueOrDefault(
                                                            currentUserDocument
                                                                ?.userRole,
                                                            ''),
                                                        createdAt:
                                                            getCurrentTimestamp,
                                                        eventType: 'Archived',
                                                        object: 'User',
                                                        eventId: widget.userRef
                                                            ?.reference.id,
                                                        eventTitle: widget
                                                            .userRef
                                                            ?.displayName,
                                                        userSessionID:
                                                            _model.userSession1,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'eventStatus': [
                                                            'Archive'
                                                          ],
                                                        },
                                                      ),
                                                    });
                                                    Navigator.pop(context);
                                                  } else {
                                                    if ((widget.formRef !=
                                                            null) ==
                                                        true) {
                                                      await widget
                                                          .formRef!.reference
                                                          .delete();

                                                      await ActivityLogRecord
                                                          .collection
                                                          .doc()
                                                          .set({
                                                        ...createActivityLogRecordData(
                                                          userRef:
                                                              currentUserReference,
                                                          userIP:
                                                              _model.userIP1,
                                                          userRole: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userRole,
                                                              ''),
                                                          createdAt:
                                                              getCurrentTimestamp,
                                                          eventType: 'Archived',
                                                          object: 'Form',
                                                          eventId: widget
                                                              .formRef
                                                              ?.reference
                                                              .id,
                                                          eventTitle: widget
                                                              .userRef
                                                              ?.displayName,
                                                          userSessionID: _model
                                                              .userSession1,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'eventStatus': [
                                                              'Archive'
                                                            ],
                                                          },
                                                        ),
                                                      });
                                                      Navigator.pop(context);
                                                    } else {
                                                      if ((widget.questionRef !=
                                                              null) ==
                                                          true) {
                                                        await widget
                                                            .questionRef!
                                                            .reference
                                                            .delete();

                                                        await ActivityLogRecord
                                                            .collection
                                                            .doc()
                                                            .set({
                                                          ...createActivityLogRecordData(
                                                            userRef:
                                                                currentUserReference,
                                                            userIP:
                                                                _model.userIP1,
                                                            userRole: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.userRole,
                                                                ''),
                                                            createdAt:
                                                                getCurrentTimestamp,
                                                            eventType:
                                                                'Archived',
                                                            object: 'Question',
                                                            eventId: widget
                                                                .questionRef
                                                                ?.reference
                                                                .id,
                                                            eventTitle: widget
                                                                .userRef
                                                                ?.displayName,
                                                            userSessionID: _model
                                                                .userSession1,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'eventStatus': [
                                                                'Archive'
                                                              ],
                                                            },
                                                          ),
                                                        });
                                                        Navigator.pop(context);
                                                      } else {
                                                        if ((widget.coursePlan !=
                                                                null) ==
                                                            true) {
                                                          await widget
                                                              .coursePlan!
                                                              .reference
                                                              .delete();

                                                          await ActivityLogRecord
                                                              .collection
                                                              .doc()
                                                              .set({
                                                            ...createActivityLogRecordData(
                                                              userRef:
                                                                  currentUserReference,
                                                              userIP: _model
                                                                  .userIP1,
                                                              userRole: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.userRole,
                                                                  ''),
                                                              createdAt:
                                                                  getCurrentTimestamp,
                                                              eventType:
                                                                  'Archived',
                                                              object:
                                                                  'Course Plan',
                                                              eventId: widget
                                                                  .coursePlan
                                                                  ?.reference
                                                                  .id,
                                                              eventTitle: widget
                                                                  .userRef
                                                                  ?.displayName,
                                                              userSessionID: _model
                                                                  .userSession1,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'eventStatus': [
                                                                  'Archive'
                                                                ],
                                                              },
                                                            ),
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                        } else {
                                                          if ((widget.classesRef !=
                                                                  null) ==
                                                              true) {
                                                            await widget
                                                                .classesRef!
                                                                .reference
                                                                .update(
                                                                    createClassesRecordData(
                                                              status: 'Archive',
                                                            ));

                                                            await ActivityLogRecord
                                                                .collection
                                                                .doc()
                                                                .set({
                                                              ...createActivityLogRecordData(
                                                                userRef:
                                                                    currentUserReference,
                                                                userIP: _model
                                                                    .userIP1,
                                                                userRole: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.userRole,
                                                                    ''),
                                                                createdAt:
                                                                    getCurrentTimestamp,
                                                                eventType:
                                                                    'Archived',
                                                                object:
                                                                    'Course Classes',
                                                                eventId: widget
                                                                    .classesRef
                                                                    ?.reference
                                                                    .id,
                                                                eventTitle: widget
                                                                    .userRef
                                                                    ?.displayName,
                                                                userSessionID:
                                                                    _model
                                                                        .userSession1,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'eventStatus':
                                                                      [
                                                                    'Archive'
                                                                  ],
                                                                },
                                                              ),
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                          } else {
                                                            if ((widget.bookedClassRef !=
                                                                    null) ==
                                                                true) {
                                                              await widget
                                                                  .bookedClassRef!
                                                                  .reference
                                                                  .delete();

                                                              await ActivityLogRecord
                                                                  .collection
                                                                  .doc()
                                                                  .set({
                                                                ...createActivityLogRecordData(
                                                                  userRef:
                                                                      currentUserReference,
                                                                  userIP: _model
                                                                      .userIP1,
                                                                  userRole: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.userRole,
                                                                      ''),
                                                                  createdAt:
                                                                      getCurrentTimestamp,
                                                                  eventType:
                                                                      'Archived',
                                                                  object:
                                                                      'Booked Class',
                                                                  eventId: widget
                                                                      .bookedClassRef
                                                                      ?.reference
                                                                      .id,
                                                                  eventTitle: widget
                                                                      .userRef
                                                                      ?.displayName,
                                                                  userSessionID:
                                                                      _model
                                                                          .userSession1,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'eventStatus':
                                                                        [
                                                                      'Archive'
                                                                    ],
                                                                  },
                                                                ),
                                                              });
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
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              setState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              's22gvnp1' /* Delete */,
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
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                              elevation: 2.0,
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
        ),
      ],
    );
  }
}
