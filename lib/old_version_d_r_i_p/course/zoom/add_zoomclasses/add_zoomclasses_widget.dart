import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_zoomclasses_model.dart';
export 'add_zoomclasses_model.dart';

class AddZoomclassesWidget extends StatefulWidget {
  const AddZoomclassesWidget({
    super.key,
    required this.courseRef,
    required this.chapterRef,
    required this.lessonRef,
    required this.serialNum,
  });

  final DocumentReference? courseRef;
  final DocumentReference? chapterRef;
  final DocumentReference? lessonRef;
  final int? serialNum;

  @override
  State<AddZoomclassesWidget> createState() => _AddZoomclassesWidgetState();
}

class _AddZoomclassesWidgetState extends State<AddZoomclassesWidget> {
  late AddZoomclassesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddZoomclassesModel());

    _model.inputController1 ??= TextEditingController();
    _model.inputFocusNode1 ??= FocusNode();

    _model.inputController2 ??= TextEditingController();
    _model.inputFocusNode2 ??= FocusNode();

    _model.inputController3 ??= TextEditingController();
    _model.inputFocusNode3 ??= FocusNode();

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

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.5,
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
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
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
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 16.0, 15.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              child: TextFormField(
                                controller: _model.inputController1,
                                focusNode: _model.inputFocusNode1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'k6lv4yo5' /* Title */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 0.0, 24.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.inputController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 16.0, 15.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              child: TextFormField(
                                controller: _model.inputController2,
                                focusNode: _model.inputFocusNode2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '7bw77sha' /* Summary */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 0.0, 24.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                maxLines: null,
                                validator: _model.inputController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 16.0, 15.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final _datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                );

                                TimeOfDay? _datePickedTime;
                                if (_datePickedDate != null) {
                                  _datePickedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        getCurrentTimestamp),
                                  );
                                }

                                if (_datePickedDate != null &&
                                    _datePickedTime != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      _datePickedDate.year,
                                      _datePickedDate.month,
                                      _datePickedDate.day,
                                      _datePickedTime!.hour,
                                      _datePickedTime.minute,
                                    );
                                  });
                                }
                              },
                              child: Container(
                                width: 100.0,
                                height: 57.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.datePicked == null
                                              ? 'Choose Date & Time'
                                              : dateTimeFormat(
                                                  'd/M h:mm a',
                                                  _model.datePicked,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                          '.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 16.0, 15.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              child: TextFormField(
                                controller: _model.inputController3,
                                focusNode: _model.inputFocusNode3,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'bu1g80cy' /* Duration(mins) */,
                                  ),
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 0.0, 24.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                maxLength: 2,
                                buildCounter: (context,
                                        {required currentLength,
                                        required isFocused,
                                        maxLength}) =>
                                    null,
                                keyboardType: TextInputType.number,
                                validator: _model.inputController3Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
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
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        if (_model.datePicked == null) {
                          return;
                        }
                        _model.zoomAPIrsltCreat1Copy =
                            await CreateMeetingCall.call(
                          clientName: 'drip',
                          topic: _model.inputController1.text,
                          startTime: _model.datePicked?.toString(),
                          duration: int.tryParse(_model.inputController3.text),
                          agenda: _model.inputController2.text,
                        );
                        if ((_model.zoomAPIrsltCreat1Copy?.succeeded ?? true)) {
                          var zoomCourseRecordReference =
                              ZoomCourseRecord.collection.doc();
                          await zoomCourseRecordReference
                              .set(createZoomCourseRecordData(
                            courseRef: widget.courseRef,
                            chapterRef: widget.chapterRef,
                            lessonRef: widget.lessonRef,
                            serialNumber: (widget.serialNum!) + 1,
                            title: CreateMeetingCall.topic(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            bio: CreateMeetingCall.agenda(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            timezone: CreateMeetingCall.timezone(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            duration: CreateMeetingCall.duration(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            )?.toString(),
                            password: CreateMeetingCall.password(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            hostURL: CreateMeetingCall.starturl(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            joinURL: CreateMeetingCall.joinurl(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            meetingID: CreateMeetingCall.id(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            )?.toString(),
                            meetingPassword: CreateMeetingCall.password(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                            zoomDate: _model.datePicked,
                            startTime: CreateMeetingCall.starttime(
                              (_model.zoomAPIrsltCreat1Copy?.jsonBody ?? ''),
                            ),
                          ));
                          _model.zoomLessonResult1 =
                              ZoomCourseRecord.getDocumentFromData(
                                  createZoomCourseRecordData(
                                    courseRef: widget.courseRef,
                                    chapterRef: widget.chapterRef,
                                    lessonRef: widget.lessonRef,
                                    serialNumber: (widget.serialNum!) + 1,
                                    title: CreateMeetingCall.topic(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    bio: CreateMeetingCall.agenda(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    timezone: CreateMeetingCall.timezone(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    duration: CreateMeetingCall.duration(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    )?.toString(),
                                    password: CreateMeetingCall.password(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    hostURL: CreateMeetingCall.starturl(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    joinURL: CreateMeetingCall.joinurl(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    meetingID: CreateMeetingCall.id(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    )?.toString(),
                                    meetingPassword: CreateMeetingCall.password(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                    zoomDate: _model.datePicked,
                                    startTime: CreateMeetingCall.starttime(
                                      (_model.zoomAPIrsltCreat1Copy?.jsonBody ??
                                          ''),
                                    ),
                                  ),
                                  zoomCourseRecordReference);
                          _model.userIP1 = await actions.getUserIPaddress();
                          _model.userSession1 = await actions.getUserSessionID(
                            currentUserUid,
                          );

                          await ActivityLogRecord.collection.doc().set({
                            ...createActivityLogRecordData(
                              userRef: currentUserReference,
                              userIP: _model.userIP1,
                              userRole: valueOrDefault(
                                  currentUserDocument?.userRole, ''),
                              createdAt: getCurrentTimestamp,
                              eventType: 'Created',
                              object: 'Zoom Lesson',
                              eventId: _model.zoomLessonResult1?.reference.id,
                              eventTitle: _model.inputController1.text,
                              userSessionID: _model.userSession1,
                            ),
                            ...mapToFirestore(
                              {
                                'eventStatus': ['Create'],
                              },
                            ),
                          });
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Zoom Meeting Added successfully',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        } else {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Zoom Token Error!!..',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        setState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.addButtonModel,
                        updateCallback: () => setState(() {}),
                        child: AddButtonWidget(
                          text: FFLocalizations.of(context).getText(
                            '673ok57b' /* Save */,
                          ),
                          icon: Icon(
                            Icons.save_outlined,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 16.0,
                          ),
                          height: 45,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
