import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'zoomclasses_f_o_r_m_model.dart';
export 'zoomclasses_f_o_r_m_model.dart';

class ZoomclassesFORMWidget extends StatefulWidget {
  const ZoomclassesFORMWidget({
    super.key,
    this.chapterRef,
    this.courseRef,
    this.lessonRef,
    required this.zoomLessonRef,
  });

  final ChapterRecord? chapterRef;
  final CourseRecord? courseRef;
  final LessonsRecord? lessonRef;
  final ZoomCourseRecord? zoomLessonRef;

  @override
  State<ZoomclassesFORMWidget> createState() => _ZoomclassesFORMWidgetState();
}

class _ZoomclassesFORMWidgetState extends State<ZoomclassesFORMWidget> {
  late ZoomclassesFORMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZoomclassesFORMModel());

    _model.inputController1 ??=
        TextEditingController(text: widget.zoomLessonRef?.title);
    _model.inputFocusNode1 ??= FocusNode();

    _model.inputController2 ??=
        TextEditingController(text: widget.zoomLessonRef?.duration);
    _model.inputFocusNode2 ??= FocusNode();

    _model.inputController3 ??=
        TextEditingController(text: widget.zoomLessonRef?.bio);
    _model.inputFocusNode3 ??= FocusNode();

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
        title: 'ZoomclassesFORM',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ) &&
                    !isWeb
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    automaticallyImplyLeading: false,
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '8a5ev4z3' /* Customers */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          wrapWithModel(
                            model: _model.webNavModel,
                            updateCallback: () => setState(() {}),
                            child: WebNavWidget(
                              colorBgOne: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              colorBgTwo: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              colorBgThree: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              colorBgFour: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textOne:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textTwo: FlutterFlowTheme.of(context).primaryText,
                              textThree:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textFour:
                                  FlutterFlowTheme.of(context).secondaryText,
                              colorBgFive: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textFive:
                                  FlutterFlowTheme.of(context).secondaryText,
                              colorBgSix: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              expand: false,
                              colorBgPrimarydropdown:
                                  FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.chevron_left,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          widget.zoomLessonRef!.title,
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.6,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 16.0, 15.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                child: TextFormField(
                                                  controller:
                                                      _model.inputController1,
                                                  focusNode:
                                                      _model.inputFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ojkn5slo' /* Title */,
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                24.0,
                                                                0.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .inputController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.6,
                                            decoration: BoxDecoration(),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.6,
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                16.0,
                                                                15.0,
                                                                0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        final _datePickedDate =
                                                            await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              getCurrentTimestamp,
                                                          firstDate:
                                                              getCurrentTimestamp,
                                                          lastDate:
                                                              DateTime(2050),
                                                        );

                                                        TimeOfDay?
                                                            _datePickedTime;
                                                        if (_datePickedDate !=
                                                            null) {
                                                          _datePickedTime =
                                                              await showTimePicker(
                                                            context: context,
                                                            initialTime: TimeOfDay
                                                                .fromDateTime(
                                                                    getCurrentTimestamp),
                                                          );
                                                        }

                                                        if (_datePickedDate !=
                                                                null &&
                                                            _datePickedTime !=
                                                                null) {
                                                          safeSetState(() {
                                                            _model.datePicked =
                                                                DateTime(
                                                              _datePickedDate
                                                                  .year,
                                                              _datePickedDate
                                                                  .month,
                                                              _datePickedDate
                                                                  .day,
                                                              _datePickedTime!
                                                                  .hour,
                                                              _datePickedTime
                                                                  .minute,
                                                            );
                                                          });
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 57.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model.datePicked ==
                                                                          null
                                                                      ? widget
                                                                          .zoomLessonRef
                                                                          ?.zoomDate
                                                                          ?.toString()
                                                                      : _model
                                                                          .datePicked
                                                                          ?.toString(),
                                                                  '.',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                16.0,
                                                                15.0,
                                                                0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.3,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .inputController2,
                                                        focusNode: _model
                                                            .inputFocusNode2,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'ghqp2lyb' /* Duration(mins) */,
                                                          ),
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      24.0,
                                                                      0.0,
                                                                      24.0),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        validator: _model
                                                            .inputController2Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.6,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 16.0, 15.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                child: TextFormField(
                                                  controller:
                                                      _model.inputController3,
                                                  focusNode:
                                                      _model.inputFocusNode3,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'hhe4djsc' /* Summary */,
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                24.0,
                                                                0.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  maxLines: 3,
                                                  validator: _model
                                                      .inputController3Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      _model.zoomUpdateRslt =
                                          await UpdateMeetingCall.call(
                                        clientName: 'drip',
                                        meetingId:
                                            widget.zoomLessonRef?.meetingID,
                                        topic: _model.inputController1.text,
                                        startTime:
                                            _model.datePicked?.toString(),
                                        duration: _model.inputController2.text,
                                        agenda: _model.inputController3.text,
                                      );
                                      _model.zoomGetRslt =
                                          await RetrieveMeetingCall.call(
                                        clientName: 'drip',
                                        meetingId:
                                            widget.zoomLessonRef?.meetingID,
                                      );
                                      if ((_model.zoomGetRslt?.succeeded ??
                                          true)) {
                                        await widget.zoomLessonRef!.reference
                                            .update(createZoomCourseRecordData(
                                          courseRef:
                                              widget.zoomLessonRef?.courseRef,
                                          chapterRef:
                                              widget.zoomLessonRef?.chapterRef,
                                          lessonRef:
                                              widget.zoomLessonRef?.lessonRef,
                                          serialNumber: widget
                                              .zoomLessonRef?.serialNumber,
                                          title: RetrieveMeetingCall.topic(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                          bio: RetrieveMeetingCall.agenda(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                          timezone:
                                              RetrieveMeetingCall.timezone(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                          duration:
                                              RetrieveMeetingCall.duration(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          )?.toString(),
                                          hostURL: RetrieveMeetingCall.starturl(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                          joinURL: RetrieveMeetingCall.joinurl(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                          meetingID: RetrieveMeetingCall.id(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          )?.toString(),
                                          meetingPassword:
                                              RetrieveMeetingCall.password(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                          zoomDate: _model.datePicked == null
                                              ? widget.zoomLessonRef?.zoomDate
                                              : _model.datePicked,
                                          startTime:
                                              RetrieveMeetingCall.starttime(
                                            (_model.zoomGetRslt?.jsonBody ??
                                                ''),
                                          ),
                                        ));
                                        _model.userIP1 =
                                            await actions.getUserIPaddress();
                                        _model.userSession1 =
                                            await actions.getUserSessionID(
                                          currentUserUid,
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
                                            eventType: 'Modified',
                                            object: 'Zoom Lesson',
                                            eventId: widget
                                                .zoomLessonRef?.reference.id,
                                            eventTitle:
                                                _model.inputController1.text,
                                            userSessionID: _model.userSession1,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'eventStatus': ['Modify'],
                                            },
                                          ),
                                        });

                                        context.pushNamed(
                                          'Zoom_classes',
                                          queryParameters: {
                                            'courseRef': serializeParam(
                                              widget.courseRef,
                                              ParamType.Document,
                                            ),
                                            'chapterRef': serializeParam(
                                              widget.chapterRef,
                                              ParamType.Document,
                                            ),
                                            'lessonRef': serializeParam(
                                              widget.lessonRef,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'courseRef': widget.courseRef,
                                            'chapterRef': widget.chapterRef,
                                            'lessonRef': widget.lessonRef,
                                          },
                                        );

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Zoom Meeting Updated successfully',
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
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Zoom : GET error',
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

                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.addButtonModel,
                                      updateCallback: () => setState(() {}),
                                      child: AddButtonWidget(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'vkhij0kw' /* Update */,
                                        ),
                                        icon: Icon(
                                          Icons.save_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          size: 16.0,
                                        ),
                                        height: 36,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  wrapWithModel(
                    model: _model.mobileModel,
                    updateCallback: () => setState(() {}),
                    child: MobileWidget(),
                  ),
                  wrapWithModel(
                    model: _model.initialUserStatusCheckModel,
                    updateCallback: () => setState(() {}),
                    child: InitialUserStatusCheckWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
