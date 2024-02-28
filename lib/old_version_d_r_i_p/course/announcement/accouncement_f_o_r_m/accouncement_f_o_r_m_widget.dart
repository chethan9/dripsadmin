import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'accouncement_f_o_r_m_model.dart';
export 'accouncement_f_o_r_m_model.dart';

class AccouncementFORMWidget extends StatefulWidget {
  const AccouncementFORMWidget({
    super.key,
    required this.annRef,
  });

  final AnnouncementRecord? annRef;

  @override
  State<AccouncementFORMWidget> createState() => _AccouncementFORMWidgetState();
}

class _AccouncementFORMWidgetState extends State<AccouncementFORMWidget> {
  late AccouncementFORMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccouncementFORMModel());

    _model.yourEmailController ??=
        TextEditingController(text: widget.annRef?.title);
    _model.yourEmailFocusNode ??= FocusNode();

    _model.yourNameController ??=
        TextEditingController(text: widget.annRef?.bio);
    _model.yourNameFocusNode ??= FocusNode();

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
        title: 'AccouncementFORM',
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
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: wrapWithModel(
                                  model: _model.webNavModel,
                                  updateCallback: () => setState(() {}),
                                  child: WebNavWidget(
                                    colorBgTwo: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    expand: false,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ),
                                    child: StreamBuilder<CourseRecord>(
                                      stream: CourseRecord.getDocument(
                                          widget.annRef!.courseRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 10.0,
                                              height: 10.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0x00DF473F),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final columnCourseRecord =
                                            snapshot.data!;
                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 60.0,
                                                      icon: Icon(
                                                        Icons.chevron_left,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.safePop();
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0,
                                                                16.0, 0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wry2tcz0' /* Edit Announcement */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              if (FFAppState()
                                                      .currentUserRole ==
                                                  'Admin')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(25.0, 25.0,
                                                          25.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: StreamBuilder<
                                                          List<CourseRecord>>(
                                                        stream:
                                                            queryCourseRecord(
                                                          queryBuilder:
                                                              (courseRecord) =>
                                                                  courseRecord
                                                                      .where(
                                                            'status',
                                                            isEqualTo:
                                                                'Publish',
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 10.0,
                                                                height: 10.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    Color(
                                                                        0x00DF473F),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<CourseRecord>
                                                              dropDownCourseRecordList =
                                                              snapshot.data!;
                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownValue ??=
                                                                  columnCourseRecord
                                                                      .name,
                                                            ),
                                                            options:
                                                                dropDownCourseRecordList
                                                                    .map((e) =>
                                                                        e.name)
                                                                    .toList(),
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownValue =
                                                                        val),
                                                            height: 50.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              '055dos8v' /* Select Course... */,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                            borderWidth: 0.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        4.0,
                                                                        12.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (FFAppState()
                                                      .currentUserRole ==
                                                  'Instructor')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(25.0, 25.0,
                                                          25.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: StreamBuilder<
                                                          List<CourseRecord>>(
                                                        stream:
                                                            queryCourseRecord(
                                                          queryBuilder:
                                                              (courseRecord) =>
                                                                  courseRecord
                                                                      .where(
                                                                        'authorRef',
                                                                        isEqualTo:
                                                                            currentUserReference,
                                                                      )
                                                                      .where(
                                                                        'status',
                                                                        isEqualTo:
                                                                            'Publish',
                                                                      ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 10.0,
                                                                height: 10.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    Color(
                                                                        0x00DF473F),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<CourseRecord>
                                                              dropDownInsCourseRecordList =
                                                              snapshot.data!;
                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownInsValueController ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownInsValue ??=
                                                                  columnCourseRecord
                                                                      .name,
                                                            ),
                                                            options:
                                                                dropDownInsCourseRecordList
                                                                    .map((e) =>
                                                                        e.name)
                                                                    .toList(),
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownInsValue =
                                                                        val),
                                                            height: 50.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              '5awb79bb' /* Select Course... */,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                            borderWidth: 0.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        4.0,
                                                                        12.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    16.0),
                                                        child: Container(
                                                          width: 66.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .yourEmailController,
                                                            focusNode: _model
                                                                .yourEmailFocusNode,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                'xwni540g' /* Title */,
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
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
                                                                          20.0,
                                                                          24.0,
                                                                          0.0,
                                                                          24.0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                            maxLines: null,
                                                            validator: _model
                                                                .yourEmailControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  16.0),
                                                      child: Container(
                                                        width: 55.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .yourNameController,
                                                          focusNode: _model
                                                              .yourNameFocusNode,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'zzg5o6fa' /* Summary */,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
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
                                                                        20.0,
                                                                        24.0,
                                                                        0.0,
                                                                        24.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          maxLines: 3,
                                                          validator: _model
                                                              .yourNameControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              StreamBuilder<List<CourseRecord>>(
                                                stream: queryCourseRecord(
                                                  queryBuilder:
                                                      (courseRecord) =>
                                                          courseRecord.where(
                                                    'name',
                                                    isEqualTo: FFAppState()
                                                                .currentUserRole ==
                                                            'Admin'
                                                        ? _model.dropDownValue
                                                        : _model
                                                            .dropDownInsValue,
                                                  ),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 10.0,
                                                        height: 10.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            Color(0x00DF473F),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CourseRecord>
                                                      wrapCourseRecordList =
                                                      snapshot.data!;
                                                  final wrapCourseRecord =
                                                      wrapCourseRecordList
                                                              .isNotEmpty
                                                          ? wrapCourseRecordList
                                                              .first
                                                          : null;
                                                  return Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }

                                                            await widget.annRef!
                                                                .reference
                                                                .update(
                                                                    createAnnouncementRecordData(
                                                              courseRef:
                                                                  wrapCourseRecord
                                                                      ?.reference,
                                                              title: _model
                                                                  .yourEmailController
                                                                  .text,
                                                              bio: _model
                                                                  .yourNameController
                                                                  .text,
                                                            ));
                                                            _model.userIP1 =
                                                                await actions
                                                                    .getUserIPaddress();
                                                            _model.userSession1 =
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
                                                                userIP: _model
                                                                    .userIP1,
                                                                userRole: valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.userRole,
                                                                    ''),
                                                                createdAt:
                                                                    getCurrentTimestamp,
                                                                eventType:
                                                                    'Modified',
                                                                object:
                                                                    'Announcement',
                                                                eventId: widget
                                                                    .annRef
                                                                    ?.reference
                                                                    .id,
                                                                eventTitle: _model
                                                                    .yourEmailController
                                                                    .text,
                                                                userSessionID:
                                                                    _model
                                                                        .userSession1,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'eventStatus':
                                                                      [
                                                                    'Modify'
                                                                  ],
                                                                },
                                                              ),
                                                            });

                                                            context.pushNamed(
                                                                'Announcement');

                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Announcement updated successfuly',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                              ),
                                                            );

                                                            setState(() {});
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .addButtonModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                AddButtonWidget(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '5qw16ks8' /* Update */,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .save_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  wrapWithModel(
                    model: _model.initialUserStatusCheckModel,
                    updateCallback: () => setState(() {}),
                    child: InitialUserStatusCheckWidget(),
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
