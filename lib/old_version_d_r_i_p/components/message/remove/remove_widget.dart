import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'remove_model.dart';
export 'remove_model.dart';

class RemoveWidget extends StatefulWidget {
  const RemoveWidget({
    super.key,
    this.image,
    this.video,
    this.file,
    this.chapterRef,
    this.courseRef,
    this.lessonRef,
    this.courseCatRef,
    this.pollRef,
    this.appointmentRef,
    this.branchRef,
    this.countryRef,
    this.universirtRef,
    this.batchesRef,
    this.courseBatchListRef,
    this.videoRef,
    this.categoryRef,
    this.memberRef,
  });

  final int? image;
  final int? video;
  final int? file;
  final DocumentReference? chapterRef;
  final DocumentReference? courseRef;
  final DocumentReference? lessonRef;
  final DocumentReference? courseCatRef;
  final DocumentReference? pollRef;
  final DocumentReference? appointmentRef;
  final DocumentReference? branchRef;
  final DocumentReference? countryRef;
  final DocumentReference? universirtRef;
  final BatchesRecord? batchesRef;
  final DocumentReference? courseBatchListRef;
  final VideosRecord? videoRef;
  final CategoryRecord? categoryRef;
  final MemberRecord? memberRef;

  @override
  State<RemoveWidget> createState() => _RemoveWidgetState();
}

class _RemoveWidgetState extends State<RemoveWidget> {
  late RemoveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RemoveModel());

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
                            'xmn3tbe6' /* Remove! */,
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
                              '0groranu' /* Do you want remove this.. */,
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
                                    if (widget.videoRef != null) {
                                      _model.apiResultdeq11 =
                                          await NEWgetOTPandPBICall.call(
                                        videoId: widget.videoRef?.videoId,
                                        userName: currentUserEmail,
                                        userid: currentUserUid,
                                      );
                                      if ((_model.apiResultdeq11?.succeeded ??
                                          true)) {
                                        context.pushNamed(
                                          'VideoFORM',
                                          queryParameters: {
                                            'videoRef': serializeParam(
                                              widget.videoRef,
                                              ParamType.Document,
                                            ),
                                            'otp': serializeParam(
                                              NEWgetOTPandPBICall.otp(
                                                (_model.apiResultdeq11
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                            'playbackinfo': serializeParam(
                                              NEWgetOTPandPBICall.playbackInfo(
                                                (_model.apiResultdeq11
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'videoRef': widget.videoRef,
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'API Failed',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }
                                    } else {
                                      Navigator.pop(context);
                                    }

                                    setState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '734uodgk' /* Cancel */,
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
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.userIP1 =
                                        await actions.getUserIPaddress();
                                    _model.userSession1 =
                                        await actions.getUserSessionID(
                                      currentUserUid,
                                    );
                                    if (widget.courseRef != null) {
                                      if (widget.image == 1) {
                                        await widget.courseRef!
                                            .update(createCourseRecordData(
                                          image: '',
                                        ));
                                        _model.courseRsltMain1 =
                                            await CourseRecord.getDocumentOnce(
                                                widget.courseRef!);

                                        context.pushNamed(
                                          'CourseFORM',
                                          queryParameters: {
                                            'courseRef': serializeParam(
                                              _model.courseRsltMain1,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'courseRef': _model.courseRsltMain1,
                                          },
                                        );

                                        FFAppState().update(() {
                                          FFAppState().courseImgFeature = '';
                                        });
                                        Navigator.pop(context);

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
                                            eventType: 'Modified',
                                            object: 'Course (Image)',
                                            eventId: widget.courseRef?.id,
                                            eventTitle:
                                                widget.image?.toString(),
                                            userSessionID: _model.userSession1,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'eventStatus': ['Modify'],
                                            },
                                          ),
                                        });
                                      } else {
                                        await widget.courseRef!.update({
                                          ...mapToFirestore(
                                            {
                                              'videoRef': FieldValue.delete(),
                                            },
                                          ),
                                        });
                                        _model.courseRsltMain2 =
                                            await CourseRecord.getDocumentOnce(
                                                widget.courseRef!);

                                        context.pushNamed(
                                          'CourseFORM',
                                          queryParameters: {
                                            'courseRef': serializeParam(
                                              _model.courseRsltMain2,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'courseRef': _model.courseRsltMain2,
                                          },
                                        );

                                        FFAppState().update(() {
                                          FFAppState().video = '';
                                          FFAppState().videoRef = null;
                                        });
                                        Navigator.pop(context);
                                        _model.courseRslt =
                                            await CourseRecord.getDocumentOnce(
                                                widget.courseRef!);
                                        _model.videoRsult1 =
                                            await VideosRecord.getDocumentOnce(
                                                _model.courseRslt!.videoRef!);

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
                                            eventType: 'Modified',
                                            object: 'Course (Video)',
                                            eventId: widget.courseRef?.id,
                                            eventTitle:
                                                _model.videoRsult1?.title,
                                            userSessionID: _model.userSession1,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'eventStatus': ['Delete'],
                                            },
                                          ),
                                        });
                                      }
                                    } else {
                                      if (widget.lessonRef != null) {
                                        if (widget.image == 1) {
                                          await widget.lessonRef!
                                              .update(createLessonsRecordData(
                                            image: '',
                                          ));
                                          _model.lesonRsltLes1 =
                                              await LessonsRecord
                                                  .getDocumentOnce(
                                                      widget.lessonRef!);
                                          _model.coursRsltLes1 =
                                              await CourseRecord
                                                  .getDocumentOnce(_model
                                                      .lesonRsltLes1!
                                                      .courseRef!);
                                          _model.chpRsltLes1 =
                                              await ChapterRecord
                                                  .getDocumentOnce(_model
                                                      .lesonRsltLes1!
                                                      .chapterRef!);

                                          context.pushNamed(
                                            'LessonFORM',
                                            queryParameters: {
                                              'chapterRef': serializeParam(
                                                _model.chpRsltLes1,
                                                ParamType.Document,
                                              ),
                                              'courseRef': serializeParam(
                                                _model.coursRsltLes1,
                                                ParamType.Document,
                                              ),
                                              'lessonRef': serializeParam(
                                                _model.lesonRsltLes1,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'chapterRef': _model.chpRsltLes1,
                                              'courseRef': _model.coursRsltLes1,
                                              'lessonRef': _model.lesonRsltLes1,
                                            },
                                          );

                                          FFAppState().update(() {
                                            FFAppState().courseImgFeature = '';
                                          });
                                          Navigator.pop(context);

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
                                              eventType: 'Modified',
                                              object: 'Lesson (Image)',
                                              eventId: widget.lessonRef?.id,
                                              eventTitle:
                                                  widget.image?.toString(),
                                              userSessionID:
                                                  _model.userSession1,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'eventStatus': ['Modify'],
                                              },
                                            ),
                                          });
                                        } else {
                                          if (widget.video == 1) {
                                            await widget.lessonRef!.update({
                                              ...mapToFirestore(
                                                {
                                                  'videoRef':
                                                      FieldValue.delete(),
                                                },
                                              ),
                                            });
                                            _model.lesonRsltLes2 =
                                                await LessonsRecord
                                                    .getDocumentOnce(
                                                        widget.lessonRef!);
                                            _model.coursRsltLes2 =
                                                await CourseRecord
                                                    .getDocumentOnce(_model
                                                        .lesonRsltLes2!
                                                        .courseRef!);
                                            _model.chpRsltLes2 =
                                                await ChapterRecord
                                                    .getDocumentOnce(_model
                                                        .lesonRsltLes2!
                                                        .chapterRef!);

                                            context.pushNamed(
                                              'LessonFORM',
                                              queryParameters: {
                                                'chapterRef': serializeParam(
                                                  _model.chpRsltLes2,
                                                  ParamType.Document,
                                                ),
                                                'courseRef': serializeParam(
                                                  _model.coursRsltLes2,
                                                  ParamType.Document,
                                                ),
                                                'lessonRef': serializeParam(
                                                  _model.lesonRsltLes2,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'chapterRef':
                                                    _model.chpRsltLes2,
                                                'courseRef':
                                                    _model.coursRsltLes2,
                                                'lessonRef':
                                                    _model.lesonRsltLes2,
                                              },
                                            );

                                            FFAppState().update(() {
                                              FFAppState().video = '';
                                              FFAppState().videoRef = null;
                                            });
                                            Navigator.pop(context);
                                            _model.lessonSult1 =
                                                await LessonsRecord
                                                    .getDocumentOnce(
                                                        widget.lessonRef!);
                                            _model.lessonVideoRslt1 =
                                                await VideosRecord
                                                    .getDocumentOnce(_model
                                                        .lessonSult1!
                                                        .videoRef!);

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
                                                eventType: 'Modified',
                                                object: 'Lesson (Video)',
                                                eventId: widget.lessonRef?.id,
                                                eventTitle: _model
                                                    .lessonVideoRslt1?.title,
                                                userSessionID:
                                                    _model.userSession1,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'eventStatus': ['Modify'],
                                                },
                                              ),
                                            });
                                          } else {
                                            await widget.lessonRef!
                                                .update(createLessonsRecordData(
                                              file: '',
                                            ));
                                            _model.lesonRsltLes3 =
                                                await LessonsRecord
                                                    .getDocumentOnce(
                                                        widget.lessonRef!);
                                            _model.coursRsltLes3 =
                                                await CourseRecord
                                                    .getDocumentOnce(_model
                                                        .lesonRsltLes3!
                                                        .courseRef!);
                                            _model.chpRsltLes3 =
                                                await ChapterRecord
                                                    .getDocumentOnce(_model
                                                        .lesonRsltLes3!
                                                        .chapterRef!);

                                            context.pushNamed(
                                              'LessonFORM',
                                              queryParameters: {
                                                'chapterRef': serializeParam(
                                                  _model.chpRsltLes3,
                                                  ParamType.Document,
                                                ),
                                                'courseRef': serializeParam(
                                                  _model.coursRsltLes3,
                                                  ParamType.Document,
                                                ),
                                                'lessonRef': serializeParam(
                                                  _model.lesonRsltLes3,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'chapterRef':
                                                    _model.chpRsltLes3,
                                                'courseRef':
                                                    _model.coursRsltLes3,
                                                'lessonRef':
                                                    _model.lesonRsltLes3,
                                              },
                                            );

                                            FFAppState().update(() {
                                              FFAppState().file = '';
                                            });
                                            Navigator.pop(context);
                                            _model.lesoonRslt1 =
                                                await LessonsRecord
                                                    .getDocumentOnce(
                                                        widget.lessonRef!);

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
                                                eventType: 'Modified',
                                                object: 'Lesson (Document)',
                                                eventId: widget.lessonRef?.id,
                                                eventTitle:
                                                    _model.lesoonRslt1?.file,
                                                userSessionID:
                                                    _model.userSession1,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'eventStatus': ['Modify'],
                                                },
                                              ),
                                            });
                                            FFAppState().update(() {
                                              FFAppState().video = '';
                                            });
                                          }
                                        }
                                      } else {
                                        if (widget.courseCatRef != null) {
                                          await widget.courseCatRef!.update(
                                              createCourseCategoryRecordData(
                                            image: '',
                                          ));
                                          FFAppState().update(() {
                                            FFAppState().courseImgFeature = '';
                                          });
                                          Navigator.pop(context);

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
                                              eventType: 'Modified',
                                              object: 'Course Category (Image)',
                                              eventId: widget.courseCatRef?.id,
                                              eventTitle:
                                                  widget.image?.toString(),
                                              userSessionID:
                                                  _model.userSession1,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'eventStatus': ['Modify'],
                                              },
                                            ),
                                          });
                                        } else {
                                          if (widget.pollRef != null) {
                                            await widget.pollRef!
                                                .update(createPollRecordData(
                                              image: '',
                                            ));
                                            FFAppState().update(() {
                                              FFAppState().courseImgFeature =
                                                  '';
                                            });
                                            Navigator.pop(context);

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
                                                eventType: 'Modified',
                                                object: 'Poll (Image)',
                                                eventId: widget.pollRef?.id,
                                                eventTitle:
                                                    widget.image?.toString(),
                                                userSessionID:
                                                    _model.userSession1,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'eventStatus': ['Modify'],
                                                },
                                              ),
                                            });
                                          } else {
                                            if (widget.appointmentRef != null) {
                                              await widget.appointmentRef!
                                                  .update(
                                                      createMeetingRecordData(
                                                image: '',
                                              ));
                                              FFAppState().update(() {
                                                FFAppState().courseImgFeature =
                                                    '';
                                              });
                                              Navigator.pop(context);

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
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                  eventType: 'Modified',
                                                  object: 'Appointment (Image)',
                                                  eventId:
                                                      widget.appointmentRef?.id,
                                                  eventTitle:
                                                      widget.image?.toString(),
                                                  userSessionID:
                                                      _model.userSession1,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'eventStatus': ['Modify'],
                                                  },
                                                ),
                                              });
                                            } else {
                                              if (widget.branchRef != null) {
                                                await widget.branchRef!.update(
                                                    createBranchRecordData(
                                                  image: '',
                                                ));
                                                FFAppState().update(() {
                                                  FFAppState()
                                                      .courseImgFeature = '';
                                                });
                                                Navigator.pop(context);

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
                                                    eventType: 'Modified',
                                                    object: 'Branch (Image)',
                                                    eventId:
                                                        widget.branchRef?.id,
                                                    eventTitle: widget.image
                                                        ?.toString(),
                                                    userSessionID:
                                                        _model.userSession1,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'eventStatus': ['Modify'],
                                                    },
                                                  ),
                                                });
                                              } else {
                                                if (widget.countryRef != null) {
                                                  await widget.countryRef!.update(
                                                      createCountryRecordData(
                                                    image: '',
                                                  ));
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                        .courseImgFeature = '';
                                                  });
                                                  Navigator.pop(context);

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
                                                      eventType: 'Modified',
                                                      object: 'Country (Image)',
                                                      eventId:
                                                          widget.countryRef?.id,
                                                      eventTitle: widget.image
                                                          ?.toString(),
                                                      userSessionID:
                                                          _model.userSession1,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'eventStatus': [
                                                          'Modify'
                                                        ],
                                                      },
                                                    ),
                                                  });
                                                } else {
                                                  if (widget.universirtRef !=
                                                      null) {
                                                    await widget.universirtRef!
                                                        .update(
                                                            createUniversityRecordData(
                                                      image: '',
                                                    ));
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .courseImgFeature = '';
                                                    });
                                                    Navigator.pop(context);

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
                                                        eventType: 'Modified',
                                                        object:
                                                            'University (Image)',
                                                        eventId: widget
                                                            .universirtRef?.id,
                                                        eventTitle: widget.image
                                                            ?.toString(),
                                                        userSessionID:
                                                            _model.userSession1,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'eventStatus': [
                                                            'Modify'
                                                          ],
                                                        },
                                                      ),
                                                    });
                                                  } else {
                                                    if (widget.batchesRef !=
                                                        null) {
                                                      if (widget
                                                              .courseBatchListRef ==
                                                          null) {
                                                        await widget.batchesRef!
                                                            .reference
                                                            .update(
                                                                createBatchesRecordData(
                                                          image: '',
                                                        ));
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .courseImgFeature = '';
                                                        });
                                                        Navigator.pop(context);

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
                                                                'Modified',
                                                            object:
                                                                'Batch (Image)',
                                                            eventId: widget
                                                                .batchesRef
                                                                ?.reference
                                                                .id,
                                                            eventTitle: widget
                                                                .image
                                                                ?.toString(),
                                                            userSessionID: _model
                                                                .userSession1,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'eventStatus': [
                                                                'Modify'
                                                              ],
                                                            },
                                                          ),
                                                        });
                                                      } else {
                                                        await widget.batchesRef!
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'courseRef':
                                                                  FieldValue
                                                                      .arrayRemove([
                                                                widget
                                                                    .courseBatchListRef
                                                              ]),
                                                              'archiveCourseRef':
                                                                  FieldValue
                                                                      .arrayUnion([
                                                                widget
                                                                    .courseBatchListRef
                                                              ]),
                                                            },
                                                          ),
                                                        });
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .courseImgFeature = '';
                                                        });
                                                        Navigator.pop(context);

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
                                                            object:
                                                                'Batch (Course Archive)',
                                                            eventId: widget
                                                                .courseBatchListRef
                                                                ?.id,
                                                            eventTitle: widget
                                                                .batchesRef
                                                                ?.name,
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
                                                      }
                                                    } else {
                                                      if (widget.videoRef !=
                                                          null) {
                                                        await DeleteUploadVideoCall
                                                            .call(
                                                          videoId: widget
                                                              .videoRef
                                                              ?.videoId,
                                                        );
                                                        Navigator.pop(context);
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .courseImgFeature = '';
                                                        });

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
                                                                'Deleted',
                                                            object: 'Video',
                                                            eventId: widget
                                                                .videoRef
                                                                ?.reference
                                                                .id,
                                                            eventTitle: widget
                                                                .videoRef
                                                                ?.title,
                                                            userSessionID: _model
                                                                .userSession1,
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
                                                            .videoRef!.reference
                                                            .delete();

                                                        context.pushNamed(
                                                          'Video_management',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      } else {
                                                        if (widget
                                                                .categoryRef !=
                                                            null) {
                                                          await widget
                                                              .categoryRef!
                                                              .reference
                                                              .delete();
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                .courseImgFeature = '';
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                        } else {
                                                          if (widget
                                                                  .memberRef !=
                                                              null) {
                                                            await widget
                                                                .memberRef!
                                                                .reference
                                                                .delete();
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                  .courseImgFeature = '';
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                          } else {
                                                            if (widget.image ==
                                                                1) {
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                    .courseImgFeature = '';
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            } else {
                                                              if (widget
                                                                      .video ==
                                                                  1) {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                      .video = '';
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              } else {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                      .file = '';
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

                                    setState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'hntv0zap' /* Delete */,
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
