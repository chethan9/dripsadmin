import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_course_submenu/web_nav_course_submenu_widget.dart';
import '/old_version_d_r_i_p/course/course/course_grid/course_grid_widget.dart';
import '/old_version_d_r_i_p/course/course/create_course/create_course_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'course_model.dart';
export 'course_model.dart';

class CourseWidget extends StatefulWidget {
  const CourseWidget({super.key});

  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  late CourseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseModel());

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
        title: 'Course',
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
                        '114q3b80' /* Customers */,
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
                            updateOnChange: true,
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
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.12,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.webNavCourseSubmenuModel,
                            updateCallback: () => setState(() {}),
                            child: WebNavCourseSubmenuWidget(
                              color1: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Container(
                                    width: double.infinity,
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 16.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'tse7gu5e' /* Course */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().videoRef = null;
                                            FFAppState().courseImgFeature = '';
                                            FFAppState().courseImgGallery = [];

                                            await currentUserReference!
                                                .update(createUsersRecordData(
                                              courseLevel:
                                                  createInstructorCourseLevelStruct(
                                                fieldValues: {
                                                  'coutryRef':
                                                      FieldValue.delete(),
                                                  'universityRef':
                                                      FieldValue.delete(),
                                                  'branchRef':
                                                      FieldValue.delete(),
                                                  'categoryRef':
                                                      FieldValue.delete(),
                                                },
                                                clearUnsetFields: false,
                                              ),
                                            ));
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.8,
                                                        child:
                                                            CreateCourseWidget(),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.addButtonModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: AddButtonWidget(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'xqn06mdr' /* Add */,
                                              ),
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                              height: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.courseState =
                                                    'Published';
                                              });
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1goqyict' /* Published */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: _model
                                                                .courseState ==
                                                            'Published'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .accent2,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: FutureBuilder<int>(
                                                future: queryCourseRecordCount(
                                                  queryBuilder:
                                                      (courseRecord) =>
                                                          courseRecord.where(
                                                    'status',
                                                    isEqualTo: 'Publish',
                                                  ),
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
                                                  int textCount =
                                                      snapshot.data!;
                                                  return Text(
                                                    '(${textCount.toString()})',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 24.0,
                                        child: VerticalDivider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.courseState = 'Draft';
                                              });
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'enwlj0ds' /* Draft */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: _model.courseState ==
                                                            'Draft'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .accent2,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: FutureBuilder<int>(
                                                future: queryCourseRecordCount(
                                                  queryBuilder:
                                                      (courseRecord) =>
                                                          courseRecord
                                                              .where(
                                                                'status',
                                                                isEqualTo:
                                                                    'Draft',
                                                              )
                                                              .where(
                                                                'authorRef',
                                                                isEqualTo:
                                                                    currentUserReference,
                                                              ),
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
                                                  int textCount =
                                                      snapshot.data!;
                                                  return Text(
                                                    '(${textCount.toString()})',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 24.0,
                                        child: VerticalDivider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.courseState = 'Archived';
                                              });
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9uyihlk3' /* Archived */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: _model.courseState ==
                                                            'Archived'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .accent2,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                '()',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 4.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (valueOrDefault<bool>(
                                              FFAppState().currentUserRole ==
                                                  'Admin',
                                              true,
                                            ) &&
                                            (_model.courseState == 'Published'))
                                          StreamBuilder<List<CourseRecord>>(
                                            stream: queryCourseRecord(
                                              queryBuilder: (courseRecord) =>
                                                  courseRecord.where(
                                                'status',
                                                isEqualTo: 'Publish',
                                              ),
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
                                                  publishAdminCourseRecordList =
                                                  snapshot.data!;
                                              if (publishAdminCourseRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child: EmptyMessageWidget(),
                                                );
                                              }
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    publishAdminCourseRecordList
                                                        .length,
                                                    (publishAdminIndex) {
                                                  final publishAdminCourseRecord =
                                                      publishAdminCourseRecordList[
                                                          publishAdminIndex];
                                                  return Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 320.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: CourseGridWidget(
                                                        key: Key(
                                                            'Key8i9_${publishAdminIndex}_of_${publishAdminCourseRecordList.length}'),
                                                        courseRef:
                                                            publishAdminCourseRecord,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        if ((FFAppState().currentUserRole !=
                                                'Admin') &&
                                            (_model.courseState == 'Published'))
                                          StreamBuilder<List<CourseRecord>>(
                                            stream: queryCourseRecord(
                                              queryBuilder: (courseRecord) =>
                                                  courseRecord
                                                      .where(
                                                        'status',
                                                        isEqualTo: 'Publish',
                                                      )
                                                      .where(
                                                        'authorRef',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      ),
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
                                                  publishInstrctorCourseRecordList =
                                                  snapshot.data!;
                                              if (publishInstrctorCourseRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child: EmptyMessageWidget(),
                                                );
                                              }
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    publishInstrctorCourseRecordList
                                                        .length,
                                                    (publishInstrctorIndex) {
                                                  final publishInstrctorCourseRecord =
                                                      publishInstrctorCourseRecordList[
                                                          publishInstrctorIndex];
                                                  return Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 320.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: CourseGridWidget(
                                                        key: Key(
                                                            'Key8o3_${publishInstrctorIndex}_of_${publishInstrctorCourseRecordList.length}'),
                                                        courseRef:
                                                            publishInstrctorCourseRecord,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        if (valueOrDefault<bool>(
                                              FFAppState().currentUserRole ==
                                                  'Admin',
                                              true,
                                            ) &&
                                            (_model.courseState == 'Draft'))
                                          StreamBuilder<List<CourseRecord>>(
                                            stream: queryCourseRecord(
                                              queryBuilder: (courseRecord) =>
                                                  courseRecord.where(
                                                'status',
                                                isEqualTo: 'Draft',
                                              ),
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
                                                  draftAdminCourseRecordList =
                                                  snapshot.data!;
                                              if (draftAdminCourseRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child: EmptyMessageWidget(),
                                                );
                                              }
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    draftAdminCourseRecordList
                                                        .length,
                                                    (draftAdminIndex) {
                                                  final draftAdminCourseRecord =
                                                      draftAdminCourseRecordList[
                                                          draftAdminIndex];
                                                  return Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 320.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: CourseGridWidget(
                                                        key: Key(
                                                            'Keyqqm_${draftAdminIndex}_of_${draftAdminCourseRecordList.length}'),
                                                        courseRef:
                                                            draftAdminCourseRecord,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        if ((FFAppState().currentUserRole !=
                                                'Admin') &&
                                            (_model.courseState == 'Draft'))
                                          StreamBuilder<List<CourseRecord>>(
                                            stream: queryCourseRecord(
                                              queryBuilder: (courseRecord) =>
                                                  courseRecord
                                                      .where(
                                                        'status',
                                                        isEqualTo: 'Draft',
                                                      )
                                                      .where(
                                                        'authorRef',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      ),
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
                                                  draftInstructorCourseRecordList =
                                                  snapshot.data!;
                                              if (draftInstructorCourseRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child: EmptyMessageWidget(),
                                                );
                                              }
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    draftInstructorCourseRecordList
                                                        .length,
                                                    (draftInstructorIndex) {
                                                  final draftInstructorCourseRecord =
                                                      draftInstructorCourseRecordList[
                                                          draftInstructorIndex];
                                                  return Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 320.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: CourseGridWidget(
                                                        key: Key(
                                                            'Keyfo2_${draftInstructorIndex}_of_${draftInstructorCourseRecordList.length}'),
                                                        courseRef:
                                                            draftInstructorCourseRecord,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        if (valueOrDefault<bool>(
                                              FFAppState().currentUserRole ==
                                                  'Admin',
                                              true,
                                            ) &&
                                            (_model.courseState == 'Archived'))
                                          StreamBuilder<List<CourseRecord>>(
                                            stream: queryCourseRecord(
                                              queryBuilder: (courseRecord) =>
                                                  courseRecord.where(
                                                'status',
                                                isEqualTo: 'Archived',
                                              ),
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
                                                  archivedCourseRecordList =
                                                  snapshot.data!;
                                              if (archivedCourseRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child: EmptyMessageWidget(),
                                                );
                                              }
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    archivedCourseRecordList
                                                        .length,
                                                    (archivedIndex) {
                                                  final archivedCourseRecord =
                                                      archivedCourseRecordList[
                                                          archivedIndex];
                                                  return Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 320.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: CourseGridWidget(
                                                        key: Key(
                                                            'Key7vb_${archivedIndex}_of_${archivedCourseRecordList.length}'),
                                                        courseRef:
                                                            archivedCourseRecord,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        if ((FFAppState().currentUserRole !=
                                                'Admin') &&
                                            (_model.courseState == 'Archived'))
                                          StreamBuilder<List<CourseRecord>>(
                                            stream: queryCourseRecord(
                                              queryBuilder: (courseRecord) =>
                                                  courseRecord
                                                      .where(
                                                        'status',
                                                        isEqualTo: 'Archived',
                                                      )
                                                      .where(
                                                        'authorRef',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      ),
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
                                                  archivedInstructorCourseRecordList =
                                                  snapshot.data!;
                                              if (archivedInstructorCourseRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child: EmptyMessageWidget(),
                                                );
                                              }
                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: List.generate(
                                                    archivedInstructorCourseRecordList
                                                        .length,
                                                    (archivedInstructorIndex) {
                                                  final archivedInstructorCourseRecord =
                                                      archivedInstructorCourseRecordList[
                                                          archivedInstructorIndex];
                                                  return Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: 320.0,
                                                    ),
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: CourseGridWidget(
                                                        key: Key(
                                                            'Keyeb3_${archivedInstructorIndex}_of_${archivedInstructorCourseRecordList.length}'),
                                                        courseRef:
                                                            archivedInstructorCourseRecord,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                      ],
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
