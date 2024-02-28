import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'course_category_f_o_r_m_model.dart';
export 'course_category_f_o_r_m_model.dart';

class CourseCategoryFORMWidget extends StatefulWidget {
  const CourseCategoryFORMWidget({
    super.key,
    this.courseCategoryRef,
  });

  final CourseCategoryRecord? courseCategoryRef;

  @override
  State<CourseCategoryFORMWidget> createState() =>
      _CourseCategoryFORMWidgetState();
}

class _CourseCategoryFORMWidgetState extends State<CourseCategoryFORMWidget> {
  late CourseCategoryFORMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseCategoryFORMModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().currentUserRole != 'Admin') {
        context.pushNamed(
          'Course',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      }

      await currentUserReference!.update(createUsersRecordData(
        courseLevel: createInstructorCourseLevelStruct(delete: true),
      ));

      await currentUserReference!.update(createUsersRecordData(
        courseLevel: createInstructorCourseLevelStruct(
          coutryRef: widget.courseCategoryRef?.countryRef,
          universityRef: widget.courseCategoryRef?.universityRef,
          branchRef: widget.courseCategoryRef?.branchRef,
          categoryRef: widget.courseCategoryRef?.categoryRef,
          clearUnsetFields: false,
        ),
      ));
    });

    _model.inputFocusNode ??= FocusNode();

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
        title: 'CourseCategoryFORM',
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
                        'r335smeg' /* Customers */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: Stack(
              children: [
                if ((MediaQuery.sizeOf(context).width > 1070.0) &&
                    responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
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
                            colorBgTwo:
                                FlutterFlowTheme.of(context).primaryBackground,
                            colorBgThree: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            colorBgFour: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textOne: FlutterFlowTheme.of(context).secondaryText,
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
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: StreamBuilder<CourseCategoryRecord>(
                                stream: CourseCategoryRecord.getDocument(
                                    widget.courseCategoryRef!.reference),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 10.0,
                                        height: 10.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0x00DF473F),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final columnCourseCategoryRecord =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 60.0,
                                                  icon: Icon(
                                                    Icons.chevron_left,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'CourseCategory',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    (columnCourseCategoryRecord !=
                                                                null) ==
                                                            true
                                                        ? columnCourseCategoryRecord
                                                            .name
                                                        : 'Add Course Category',
                                                    'Add Course Category',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 16.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: StreamBuilder<
                                                                CountryRecord>(
                                                              stream: CountryRecord
                                                                  .getDocument(widget
                                                                      .courseCategoryRef!
                                                                      .countryRef!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          10.0,
                                                                      height:
                                                                          10.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          Color(
                                                                              0x00DF473F),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final countryListCountryRecord =
                                                                    snapshot
                                                                        .data!;
                                                                return Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              16.0,
                                                                              15.0,
                                                                              0.0),
                                                                          child:
                                                                              StreamBuilder<List<CountryRecord>>(
                                                                            stream:
                                                                                queryCountryRecord(),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 10.0,
                                                                                    height: 10.0,
                                                                                    child: CircularProgressIndicator(
                                                                                      valueColor: AlwaysStoppedAnimation<Color>(
                                                                                        Color(0x00DF473F),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              List<CountryRecord> dropDownCountryRecordList = snapshot.data!;
                                                                              return FlutterFlowDropDown<String>(
                                                                                controller: _model.dropDownValueController1 ??= FormFieldController<String>(
                                                                                  _model.dropDownValue1 ??= countryListCountryRecord.name,
                                                                                ),
                                                                                options: dropDownCountryRecordList.map((e) => e.name).toList(),
                                                                                onChanged: (val) async {
                                                                                  setState(() => _model.dropDownValue1 = val);
                                                                                  _model.countryRslt = await queryCountryRecordOnce(
                                                                                    queryBuilder: (countryRecord) => countryRecord.where(
                                                                                      'name',
                                                                                      isEqualTo: _model.dropDownValue1,
                                                                                    ),
                                                                                    singleRecord: true,
                                                                                  ).then((s) => s.firstOrNull);

                                                                                  await currentUserReference!.update(createUsersRecordData(
                                                                                    courseLevel: createInstructorCourseLevelStruct(
                                                                                      countryName: _model.dropDownValue1,
                                                                                      coutryRef: _model.countryRslt?.reference,
                                                                                      fieldValues: {
                                                                                        'universityRef': FieldValue.delete(),
                                                                                        'branchRef': FieldValue.delete(),
                                                                                        'categoryRef': FieldValue.delete(),
                                                                                      },
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));

                                                                                  setState(() {});
                                                                                },
                                                                                width: 300.0,
                                                                                height: 50.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                hintText: FFLocalizations.of(context).getText(
                                                                                  '90t4axcs' /* Select country... */,
                                                                                ),
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 2.0,
                                                                                borderColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderWidth: 2.0,
                                                                                borderRadius: 8.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          if (currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.coutryRef
                                                                      ?.id !=
                                                                  null &&
                                                              currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.coutryRef
                                                                      ?.id !=
                                                                  '')
                                                            Expanded(
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                builder: (context) =>
                                                                    StreamBuilder<
                                                                        UniversityRecord>(
                                                                  stream: UniversityRecord
                                                                      .getDocument(widget
                                                                          .courseCategoryRef!
                                                                          .universityRef!),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              10.0,
                                                                          height:
                                                                              10.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              Color(0x00DF473F),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final university1UniversityRecord =
                                                                        snapshot
                                                                            .data!;
                                                                    return Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 16.0, 15.0, 0.0),
                                                                              child: StreamBuilder<List<UniversityRecord>>(
                                                                                stream: queryUniversityRecord(
                                                                                  queryBuilder: (universityRecord) => universityRecord.where(
                                                                                    'countryRef',
                                                                                    isEqualTo: currentUserDocument?.courseLevel?.coutryRef,
                                                                                  ),
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 10.0,
                                                                                        height: 10.0,
                                                                                        child: CircularProgressIndicator(
                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                            Color(0x00DF473F),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  List<UniversityRecord> dropDownUniversityRecordList = snapshot.data!;
                                                                                  return FlutterFlowDropDown<String>(
                                                                                    controller: _model.dropDownValueController2 ??= FormFieldController<String>(
                                                                                      _model.dropDownValue2 ??= university1UniversityRecord.name,
                                                                                    ),
                                                                                    options: dropDownUniversityRecordList.map((e) => e.name).toList(),
                                                                                    onChanged: (val) async {
                                                                                      setState(() => _model.dropDownValue2 = val);
                                                                                      _model.universityRslt = await queryUniversityRecordOnce(
                                                                                        queryBuilder: (universityRecord) => universityRecord.where(
                                                                                          'name',
                                                                                          isEqualTo: _model.dropDownValue2,
                                                                                        ),
                                                                                        singleRecord: true,
                                                                                      ).then((s) => s.firstOrNull);

                                                                                      await currentUserReference!.update(createUsersRecordData(
                                                                                        courseLevel: createInstructorCourseLevelStruct(
                                                                                          universityName: _model.dropDownValue2,
                                                                                          universityRef: _model.universityRslt?.reference,
                                                                                          fieldValues: {
                                                                                            'branchRef': FieldValue.delete(),
                                                                                            'categoryRef': FieldValue.delete(),
                                                                                          },
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));

                                                                                      setState(() {});
                                                                                    },
                                                                                    width: 300.0,
                                                                                    height: 50.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: FFLocalizations.of(context).getText(
                                                                                      'e2ap9bm3' /* Select university... */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    elevation: 2.0,
                                                                                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderWidth: 2.0,
                                                                                    borderRadius: 8.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                    isMultiSelect: false,
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          if (currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.categoryRef
                                                                      ?.id !=
                                                                  null &&
                                                              currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.categoryRef
                                                                      ?.id !=
                                                                  '')
                                                            Expanded(
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                builder: (context) =>
                                                                    StreamBuilder<
                                                                        CategoryRecord>(
                                                                  stream: CategoryRecord
                                                                      .getDocument(widget
                                                                          .courseCategoryRef!
                                                                          .categoryRef!),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              10.0,
                                                                          height:
                                                                              10.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              Color(0x00DF473F),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final category1CategoryRecord =
                                                                        snapshot
                                                                            .data!;
                                                                    return Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 16.0, 15.0, 0.0),
                                                                              child: StreamBuilder<List<CategoryRecord>>(
                                                                                stream: queryCategoryRecord(
                                                                                  queryBuilder: (categoryRecord) => categoryRecord.where(
                                                                                    'countryRef',
                                                                                    isEqualTo: currentUserDocument?.courseLevel?.coutryRef,
                                                                                  ),
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 10.0,
                                                                                        height: 10.0,
                                                                                        child: CircularProgressIndicator(
                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                            Color(0x00DF473F),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  List<CategoryRecord> dropDownCategoryRecordList = snapshot.data!;
                                                                                  return FlutterFlowDropDown<String>(
                                                                                    controller: _model.dropDownValueController3 ??= FormFieldController<String>(
                                                                                      _model.dropDownValue3 ??= category1CategoryRecord.name,
                                                                                    ),
                                                                                    options: dropDownCategoryRecordList.map((e) => e.name).toList(),
                                                                                    onChanged: (val) async {
                                                                                      setState(() => _model.dropDownValue3 = val);
                                                                                      _model.categoryRslt = await queryCategoryRecordOnce(
                                                                                        queryBuilder: (categoryRecord) => categoryRecord.where(
                                                                                          'name',
                                                                                          isEqualTo: _model.dropDownValue3,
                                                                                        ),
                                                                                        singleRecord: true,
                                                                                      ).then((s) => s.firstOrNull);

                                                                                      await currentUserReference!.update(createUsersRecordData(
                                                                                        courseLevel: createInstructorCourseLevelStruct(
                                                                                          categoryName: _model.dropDownValue3,
                                                                                          categoryRef: _model.categoryRslt?.reference,
                                                                                          fieldValues: {
                                                                                            'branchRef': FieldValue.delete(),
                                                                                          },
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));

                                                                                      setState(() {});
                                                                                    },
                                                                                    width: 300.0,
                                                                                    height: 50.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: FFLocalizations.of(context).getText(
                                                                                      'hb454py3' /* Select category... */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    elevation: 2.0,
                                                                                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderWidth: 2.0,
                                                                                    borderRadius: 8.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                    isMultiSelect: false,
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          if (currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.categoryRef
                                                                      ?.id !=
                                                                  null &&
                                                              currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.categoryRef
                                                                      ?.id !=
                                                                  '')
                                                            Expanded(
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                builder: (context) =>
                                                                    StreamBuilder<
                                                                        BranchRecord>(
                                                                  stream: BranchRecord
                                                                      .getDocument(widget
                                                                          .courseCategoryRef!
                                                                          .branchRef!),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              10.0,
                                                                          height:
                                                                              10.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              Color(0x00DF473F),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final branch1BranchRecord =
                                                                        snapshot
                                                                            .data!;
                                                                    return Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 16.0, 15.0, 0.0),
                                                                              child: StreamBuilder<List<BranchRecord>>(
                                                                                stream: queryBranchRecord(
                                                                                  queryBuilder: (branchRecord) => branchRecord.where(
                                                                                    'categoryRef',
                                                                                    isEqualTo: currentUserDocument?.courseLevel?.categoryRef,
                                                                                  ),
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 10.0,
                                                                                        height: 10.0,
                                                                                        child: CircularProgressIndicator(
                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                            Color(0x00DF473F),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  List<BranchRecord> dropDownBranchRecordList = snapshot.data!;
                                                                                  return FlutterFlowDropDown<String>(
                                                                                    controller: _model.dropDownValueController4 ??= FormFieldController<String>(
                                                                                      _model.dropDownValue4 ??= branch1BranchRecord.name,
                                                                                    ),
                                                                                    options: dropDownBranchRecordList.map((e) => e.name).toList(),
                                                                                    onChanged: (val) async {
                                                                                      setState(() => _model.dropDownValue4 = val);
                                                                                      _model.branchRslt = await queryBranchRecordOnce(
                                                                                        queryBuilder: (branchRecord) => branchRecord.where(
                                                                                          'name',
                                                                                          isEqualTo: _model.dropDownValue3,
                                                                                        ),
                                                                                        singleRecord: true,
                                                                                      ).then((s) => s.firstOrNull);

                                                                                      await currentUserReference!.update(createUsersRecordData(
                                                                                        courseLevel: createInstructorCourseLevelStruct(
                                                                                          branchName: _model.dropDownValue4,
                                                                                          branchRef: _model.branchRslt?.reference,
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));

                                                                                      setState(() {});
                                                                                    },
                                                                                    width: 300.0,
                                                                                    height: 50.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    hintText: FFLocalizations.of(context).getText(
                                                                                      'kvzvboqt' /* Select branch... */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_arrow_down_rounded,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    elevation: 2.0,
                                                                                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderWidth: 2.0,
                                                                                    borderRadius: 8.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    hidesUnderline: true,
                                                                                    isSearchable: false,
                                                                                    isMultiSelect: false,
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      16.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                      .inputController ??=
                                                                  TextEditingController(
                                                                text:
                                                                    columnCourseCategoryRecord
                                                                        .name,
                                                              ),
                                                              focusNode: _model
                                                                  .inputFocusNode,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  '1gspub0l' /* Title */,
                                                                ),
                                                                labelStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                hintStyle: FlutterFlowTheme.of(
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
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                contentPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                              validator: _model
                                                                  .inputControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.6,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder: (context) =>
                                                                StreamBuilder<
                                                                    List<
                                                                        CourseRecord>>(
                                                              stream:
                                                                  queryCourseRecord(
                                                                queryBuilder: (courseRecord) =>
                                                                    courseRecord
                                                                        .where(
                                                                          'branchRef',
                                                                          isEqualTo: currentUserDocument
                                                                              ?.courseLevel
                                                                              ?.branchRef,
                                                                        )
                                                                        .where(
                                                                          'categoryRef',
                                                                          isEqualTo: currentUserDocument
                                                                              ?.courseLevel
                                                                              ?.categoryRef,
                                                                        )
                                                                        .where(
                                                                          'universityRef',
                                                                          isEqualTo: currentUserDocument
                                                                              ?.courseLevel
                                                                              ?.universityRef,
                                                                        )
                                                                        .where(
                                                                          'countryRef',
                                                                          isEqualTo: currentUserDocument
                                                                              ?.courseLevel
                                                                              ?.coutryRef,
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
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          10.0,
                                                                      height:
                                                                          10.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          Color(
                                                                              0x00DF473F),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<CourseRecord>
                                                                    listViewCourseRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewCourseRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewCourseRecord =
                                                                        listViewCourseRecordList[
                                                                            listViewIndex];
                                                                    return Theme(
                                                                      data:
                                                                          ThemeData(
                                                                        checkboxTheme:
                                                                            CheckboxThemeData(
                                                                          visualDensity:
                                                                              VisualDensity.compact,
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize.shrinkWrap,
                                                                        ),
                                                                        unselectedWidgetColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                      ),
                                                                      child:
                                                                          CheckboxListTile(
                                                                        value: _model
                                                                            .checkboxListTileValueMap[listViewCourseRecord] ??= columnCourseCategoryRecord.courseListRef
                                                                                .contains(listViewCourseRecord.reference) ==
                                                                            true,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          setState(() =>
                                                                              _model.checkboxListTileValueMap[listViewCourseRecord] = newValue!);
                                                                        },
                                                                        title:
                                                                            Text(
                                                                          listViewCourseRecord
                                                                              .name,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        activeColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        checkColor:
                                                                            Colors.white,
                                                                        dense:
                                                                            false,
                                                                        controlAffinity:
                                                                            ListTileControlAffinity.trailing,
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.22,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(20.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if ((widget.courseCategoryRef
                                                                    ?.image !=
                                                                '') ||
                                                            (_model.uploadedFileUrl !=
                                                                ''))
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnCourseCategoryRecord
                                                                    .image,
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                                              ),
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 210.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  final selectedMedia =
                                                                      await selectMediaWithSourceBottomSheet(
                                                                    context:
                                                                        context,
                                                                    maxWidth:
                                                                        1500.00,
                                                                    maxHeight:
                                                                        1500.00,
                                                                    allowPhoto:
                                                                        true,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    setState(() =>
                                                                        _model.isDataUploading =
                                                                            true);
                                                                    var selectedUploadedFiles =
                                                                        <FFUploadedFile>[];

                                                                    var downloadUrls =
                                                                        <String>[];
                                                                    try {
                                                                      selectedUploadedFiles = selectedMedia
                                                                          .map((m) => FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();

                                                                      downloadUrls = (await Future
                                                                              .wait(
                                                                        selectedMedia
                                                                            .map(
                                                                          (m) async => await uploadData(
                                                                              m.storagePath,
                                                                              m.bytes),
                                                                        ),
                                                                      ))
                                                                          .where((u) =>
                                                                              u !=
                                                                              null)
                                                                          .map((u) =>
                                                                              u!)
                                                                          .toList();
                                                                    } finally {
                                                                      _model.isDataUploading =
                                                                          false;
                                                                    }
                                                                    if (selectedUploadedFiles.length ==
                                                                            selectedMedia
                                                                                .length &&
                                                                        downloadUrls.length ==
                                                                            selectedMedia.length) {
                                                                      setState(
                                                                          () {
                                                                        _model.uploadedLocalFile =
                                                                            selectedUploadedFiles.first;
                                                                        _model.uploadedFileUrl =
                                                                            downloadUrls.first;
                                                                      });
                                                                    } else {
                                                                      setState(
                                                                          () {});
                                                                      return;
                                                                    }
                                                                  }

                                                                  await widget
                                                                      .courseCategoryRef!
                                                                      .reference
                                                                      .update(
                                                                          createCourseCategoryRecordData(
                                                                    image: _model
                                                                        .uploadedFileUrl,
                                                                  ));
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .refresh = 1;
                                                                  });
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            AlertDialog(
                                                                          content:
                                                                              Text('Photo is updated successfully'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'pmrlukha' /* Add Photo */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Lexend Deca'),
                                                                      ),
                                                                  elevation:
                                                                      1.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                              ),
                                                            ),
                                                            if ((widget.courseCategoryRef
                                                                        ?.image !=
                                                                    '') ||
                                                                (_model.uploadedFileUrl !=
                                                                    ''))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: Container(
                                                                                height: 200.0,
                                                                                child: RemoveWidget(
                                                                                  courseCatRef: widget.courseCategoryRef?.reference,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'fypizz9v' /* Remove */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        40.0,
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Lexend Deca'),
                                                                        ),
                                                                    elevation:
                                                                        1.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
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
                                        Wrap(
                                          spacing: 0.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
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
                                                    await widget
                                                        .courseCategoryRef!
                                                        .reference
                                                        .update({
                                                      ...createCourseCategoryRecordData(
                                                        name: _model
                                                            .inputController
                                                            .text,
                                                        branchRef:
                                                            currentUserDocument
                                                                ?.courseLevel
                                                                ?.branchRef,
                                                        universityRef:
                                                            currentUserDocument
                                                                ?.courseLevel
                                                                ?.universityRef,
                                                        countryRef:
                                                            currentUserDocument
                                                                ?.courseLevel
                                                                ?.coutryRef,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'courseListRef': _model
                                                              .checkboxListTileCheckedItems
                                                              .map((e) =>
                                                                  e.reference)
                                                              .toList(),
                                                        },
                                                      ),
                                                    });
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
                                                        userIP: _model.userIP1,
                                                        userRole: valueOrDefault(
                                                            currentUserDocument
                                                                ?.userRole,
                                                            ''),
                                                        createdAt:
                                                            getCurrentTimestamp,
                                                        eventType: 'Modified',
                                                        object:
                                                            'Course Category',
                                                        eventId: widget
                                                            .courseCategoryRef
                                                            ?.reference
                                                            .id,
                                                        eventTitle: _model
                                                            .inputController
                                                            .text,
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

                                                    context.pushNamed(
                                                        'CourseCategory');

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Successfully updated',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );

                                                    setState(() {});
                                                  },
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.addButtonModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: AddButtonWidget(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ykij98ei' /* Update */,
                                                      ),
                                                      icon: Icon(
                                                        Icons.save_outlined,
                                                        color: Colors.white,
                                                        size: 16.0,
                                                      ),
                                                      height: 45,
                                                      width: 120,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
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
        ));
  }
}
