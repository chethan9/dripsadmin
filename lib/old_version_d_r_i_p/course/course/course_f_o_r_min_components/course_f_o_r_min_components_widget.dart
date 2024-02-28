import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/media_management/list_available_video/list_available_video_widget.dart';
import '/old_version_d_r_i_p/media_management/video_preview/video_preview_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/present_batchin_course/present_batchin_course_widget.dart';
import '/old_version_d_r_i_p/online_classes/batches/pwd_couse_batch/pwd_couse_batch_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_branch/change_branch_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'course_f_o_r_min_components_model.dart';
export 'course_f_o_r_min_components_model.dart';

class CourseFORMinComponentsWidget extends StatefulWidget {
  const CourseFORMinComponentsWidget({
    super.key,
    this.courseRef,
    this.batchesRef,
  });

  final CourseRecord? courseRef;
  final DocumentReference? batchesRef;

  @override
  State<CourseFORMinComponentsWidget> createState() =>
      _CourseFORMinComponentsWidgetState();
}

class _CourseFORMinComponentsWidgetState
    extends State<CourseFORMinComponentsWidget> {
  late CourseFORMinComponentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseFORMinComponentsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    _model.inputFocusNode1 ??= FocusNode();

    _model.inputFocusNode2 ??= FocusNode();

    _model.inputFocusNode3 ??= FocusNode();

    _model.inputFocusNode4 ??= FocusNode();

    _model.inputFocusNode5 ??= FocusNode();

    _model.inputFocusNode6 ??= FocusNode();

    _model.inputFocusNode7 ??= FocusNode();

    _model.inputFocusNode8 ??= FocusNode();

    _model.inputFocusNode9 ??= FocusNode();

    _model.inputFocusNode10 ??= FocusNode();

    _model.inputFocusNode11 ??= FocusNode();

    _model.inputFocusNode12 ??= FocusNode();

    _model.inputFocusNode13 ??= FocusNode();

    _model.inputFocusNode14 ??= FocusNode();

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                  child: Text(
                    widget.courseRef!.name,
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
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
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: StreamBuilder<CourseRecord>(
                stream: CourseRecord.getDocument(widget.courseRef!.reference),
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
                  final columnCourseRecord = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.6,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController1 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord.name,
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'mx4qsb66' /* Title */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .inputController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.6,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController2 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord.name,
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode2,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'jlt1aumm' /* Title */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .inputController2Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.6,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController3 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord
                                                      .subtitle,
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode3,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'xydse8nb' /* Subtitle */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                maxLines: null,
                                                validator: _model
                                                    .inputController3Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 16.0,
                                                          15.0, 0.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) =>
                                                        StreamBuilder<
                                                            List<
                                                                CountryRecord>>(
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
                                                        List<CountryRecord>
                                                            dropDownCountryRecordList =
                                                            snapshot.data!;
                                                        return FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController1 ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownValue1 ??=
                                                                () {
                                                              if (_model
                                                                      .cName !=
                                                                  '') {
                                                                return _model
                                                                    .cName;
                                                              } else if (currentUserDocument
                                                                          ?.courseLevel
                                                                          ?.countryName !=
                                                                      null &&
                                                                  currentUserDocument
                                                                          ?.courseLevel
                                                                          ?.countryName !=
                                                                      '') {
                                                                return currentUserDocument
                                                                    ?.courseLevel
                                                                    ?.countryName;
                                                              } else {
                                                                return ' ';
                                                              }
                                                            }(),
                                                          ),
                                                          options:
                                                              dropDownCountryRecordList
                                                                  .map((e) =>
                                                                      e.name)
                                                                  .toList(),
                                                          onChanged:
                                                              (val) async {
                                                            setState(() => _model
                                                                    .dropDownValue1 =
                                                                val);
                                                            if (_model
                                                                    .countryLevelSet ==
                                                                'unset') {
                                                              _model.countryRslt1 =
                                                                  await queryCountryRecordOnce(
                                                                queryBuilder:
                                                                    (countryRecord) =>
                                                                        countryRecord
                                                                            .where(
                                                                  'name',
                                                                  isEqualTo: _model
                                                                      .dropDownValue1,
                                                                ),
                                                                singleRecord:
                                                                    true,
                                                              ).then((s) => s
                                                                      .firstOrNull);

                                                              await currentUserReference!
                                                                  .update(
                                                                      createUsersRecordData(
                                                                courseLevel:
                                                                    createInstructorCourseLevelStruct(
                                                                  countryName:
                                                                      _model
                                                                          .dropDownValue1,
                                                                  coutryRef: _model
                                                                      .countryRslt1
                                                                      ?.reference,
                                                                  universityName:
                                                                      'Please select..',
                                                                  branchName:
                                                                      'Please select..',
                                                                  categoryName:
                                                                      'Please select..',
                                                                  fieldValues: {
                                                                    'universityRef':
                                                                        FieldValue
                                                                            .delete(),
                                                                    'branchRef':
                                                                        FieldValue
                                                                            .delete(),
                                                                    'categoryRef':
                                                                        FieldValue
                                                                            .delete(),
                                                                  },
                                                                  clearUnsetFields:
                                                                      false,
                                                                ),
                                                              ));
                                                              setState(() {
                                                                _model
                                                                    .dropDownValueController2
                                                                    ?.reset();
                                                                _model
                                                                    .dropDownValueController3
                                                                    ?.reset();
                                                                _model
                                                                    .dropDownValueController4
                                                                    ?.reset();
                                                              });
                                                              setState(() {
                                                                _model.countryLevelSet =
                                                                    'set';
                                                                _model.cName =
                                                                    _model
                                                                        .dropDownValue1!;
                                                                _model.uName =
                                                                    '';
                                                                _model.ccName =
                                                                    '';
                                                                _model.bName =
                                                                    '';
                                                              });
                                                            } else {
                                                              _model.countryRslt =
                                                                  await queryCountryRecordOnce(
                                                                queryBuilder:
                                                                    (countryRecord) =>
                                                                        countryRecord
                                                                            .where(
                                                                  'name',
                                                                  isEqualTo: _model
                                                                      .dropDownValue1,
                                                                ),
                                                                singleRecord:
                                                                    true,
                                                              ).then((s) => s
                                                                      .firstOrNull);

                                                              await currentUserReference!
                                                                  .update(
                                                                      createUsersRecordData(
                                                                courseLevel:
                                                                    createInstructorCourseLevelStruct(
                                                                  countryName:
                                                                      _model
                                                                          .dropDownValue1,
                                                                  coutryRef: _model
                                                                      .countryRslt
                                                                      ?.reference,
                                                                  universityName:
                                                                      'Please select..',
                                                                  branchName:
                                                                      'Please select..',
                                                                  categoryName:
                                                                      'Please select..',
                                                                  fieldValues: {
                                                                    'universityRef':
                                                                        FieldValue
                                                                            .delete(),
                                                                    'branchRef':
                                                                        FieldValue
                                                                            .delete(),
                                                                    'categoryRef':
                                                                        FieldValue
                                                                            .delete(),
                                                                  },
                                                                  clearUnsetFields:
                                                                      false,
                                                                ),
                                                              ));
                                                              setState(() {
                                                                _model
                                                                    .dropDownValueController2
                                                                    ?.reset();
                                                                _model
                                                                    .dropDownValueController3
                                                                    ?.reset();
                                                                _model
                                                                    .dropDownValueController4
                                                                    ?.reset();
                                                              });
                                                              setState(() {
                                                                _model.countryLevelSet =
                                                                    'unset';
                                                                _model.cName =
                                                                    _model
                                                                        .dropDownValue1!;
                                                                _model.uName =
                                                                    '';
                                                                _model.ccName =
                                                                    '';
                                                                _model.bName =
                                                                    '';
                                                              });
                                                            }

                                                            setState(() {});
                                                          },
                                                          width: 300.0,
                                                          height: 50.0,
                                                          searchHintTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          searchTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            '5kcenffr' /* Select country... */,
                                                          ),
                                                          searchHintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'ouoyroup' /* Search for an item... */,
                                                          ),
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                          borderWidth: 2.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      4.0),
                                                          hidesUnderline: true,
                                                          isSearchable: true,
                                                          isMultiSelect: false,
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
                                      if (currentUserDocument?.courseLevel
                                                  ?.coutryRef?.id !=
                                              null &&
                                          currentUserDocument?.courseLevel
                                                  ?.coutryRef?.id !=
                                              '')
                                        Expanded(
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Container(
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
                                                      child: StreamBuilder<
                                                          List<
                                                              UniversityRecord>>(
                                                        stream:
                                                            queryUniversityRecord(
                                                          queryBuilder:
                                                              (universityRecord) =>
                                                                  universityRecord
                                                                      .where(
                                                            'countryRef',
                                                            isEqualTo:
                                                                currentUserDocument
                                                                    ?.courseLevel
                                                                    ?.coutryRef,
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
                                                          List<UniversityRecord>
                                                              dropDownUniversityRecordList =
                                                              snapshot.data!;
                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController2 ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownValue2 ??=
                                                                  () {
                                                                if (_model
                                                                        .uName !=
                                                                    '') {
                                                                  return _model
                                                                      .uName;
                                                                } else if (currentUserDocument
                                                                            ?.courseLevel
                                                                            ?.universityName !=
                                                                        null &&
                                                                    currentUserDocument
                                                                            ?.courseLevel
                                                                            ?.universityName !=
                                                                        '') {
                                                                  return currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.universityName;
                                                                } else {
                                                                  return ' ';
                                                                }
                                                              }(),
                                                            ),
                                                            options:
                                                                dropDownUniversityRecordList
                                                                    .map((e) =>
                                                                        e.name)
                                                                    .toList(),
                                                            onChanged:
                                                                (val) async {
                                                              setState(() =>
                                                                  _model.dropDownValue2 =
                                                                      val);
                                                              if (_model
                                                                      .universityLevelSet ==
                                                                  'unset') {
                                                                _model.universityRslt1 =
                                                                    await queryUniversityRecordOnce(
                                                                  queryBuilder:
                                                                      (universityRecord) =>
                                                                          universityRecord
                                                                              .where(
                                                                    'name',
                                                                    isEqualTo:
                                                                        _model
                                                                            .dropDownValue2,
                                                                  ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  courseLevel:
                                                                      createInstructorCourseLevelStruct(
                                                                    universityName:
                                                                        _model
                                                                            .dropDownValue2,
                                                                    universityRef: _model
                                                                        .universityRslt1
                                                                        ?.reference,
                                                                    categoryName:
                                                                        'Please select..',
                                                                    branchName:
                                                                        'Please select..',
                                                                    fieldValues: {
                                                                      'branchRef':
                                                                          FieldValue
                                                                              .delete(),
                                                                      'categoryRef':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                    clearUnsetFields:
                                                                        false,
                                                                  ),
                                                                ));
                                                                setState(() {
                                                                  _model
                                                                      .dropDownValueController3
                                                                      ?.reset();
                                                                  _model
                                                                      .dropDownValueController4
                                                                      ?.reset();
                                                                });
                                                                setState(() {
                                                                  _model.universityLevelSet =
                                                                      'set';
                                                                  _model.uName =
                                                                      _model
                                                                          .dropDownValue2!;
                                                                  _model.ccName =
                                                                      '';
                                                                  _model.bName =
                                                                      '';
                                                                });
                                                              } else {
                                                                _model.universityRslt =
                                                                    await queryUniversityRecordOnce(
                                                                  queryBuilder:
                                                                      (universityRecord) =>
                                                                          universityRecord
                                                                              .where(
                                                                    'name',
                                                                    isEqualTo:
                                                                        _model
                                                                            .dropDownValue2,
                                                                  ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  courseLevel:
                                                                      createInstructorCourseLevelStruct(
                                                                    universityName:
                                                                        _model
                                                                            .dropDownValue2,
                                                                    universityRef: _model
                                                                        .universityRslt
                                                                        ?.reference,
                                                                    branchName:
                                                                        'Please select..',
                                                                    categoryName:
                                                                        'Please select..',
                                                                    fieldValues: {
                                                                      'branchRef':
                                                                          FieldValue
                                                                              .delete(),
                                                                      'categoryRef':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                    clearUnsetFields:
                                                                        false,
                                                                  ),
                                                                ));
                                                                setState(() {
                                                                  _model
                                                                      .dropDownValueController3
                                                                      ?.reset();
                                                                  _model
                                                                      .dropDownValueController4
                                                                      ?.reset();
                                                                });
                                                                setState(() {
                                                                  _model.universityLevelSet =
                                                                      'unset';
                                                                  _model.uName =
                                                                      _model
                                                                          .dropDownValue2!;
                                                                  _model.ccName =
                                                                      '';
                                                                  _model.bName =
                                                                      '';
                                                                });
                                                              }

                                                              setState(() {});
                                                            },
                                                            width: 300.0,
                                                            height: 50.0,
                                                            searchHintTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                            searchTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              's9pbbl66' /* Select university... */,
                                                            ),
                                                            searchHintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              '9rap3sw5' /* Search for an item... */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: true,
                                                            isMultiSelect:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (currentUserDocument?.courseLevel
                                                  ?.universityRef?.id !=
                                              null &&
                                          currentUserDocument?.courseLevel
                                                  ?.universityRef?.id !=
                                              '')
                                        Expanded(
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Container(
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
                                                      child: StreamBuilder<
                                                          List<CategoryRecord>>(
                                                        stream:
                                                            queryCategoryRecord(
                                                          queryBuilder:
                                                              (categoryRecord) =>
                                                                  categoryRecord
                                                                      .where(
                                                            'universityRef',
                                                            isEqualTo:
                                                                currentUserDocument
                                                                    ?.courseLevel
                                                                    ?.universityRef,
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
                                                          List<CategoryRecord>
                                                              dropDownCategoryRecordList =
                                                              snapshot.data!;
                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController3 ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownValue3 ??=
                                                                  () {
                                                                if (_model
                                                                        .ccName !=
                                                                    '') {
                                                                  return _model
                                                                      .ccName;
                                                                } else if (currentUserDocument
                                                                            ?.courseLevel
                                                                            ?.categoryName !=
                                                                        null &&
                                                                    currentUserDocument
                                                                            ?.courseLevel
                                                                            ?.categoryName !=
                                                                        '') {
                                                                  return currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.categoryName;
                                                                } else {
                                                                  return ' ';
                                                                }
                                                              }(),
                                                            ),
                                                            options:
                                                                dropDownCategoryRecordList
                                                                    .map((e) =>
                                                                        e.name)
                                                                    .toList(),
                                                            onChanged:
                                                                (val) async {
                                                              setState(() =>
                                                                  _model.dropDownValue3 =
                                                                      val);
                                                              if (_model
                                                                      .categoryLevelSet ==
                                                                  'unset') {
                                                                _model.categoryRslt1 =
                                                                    await queryCategoryRecordOnce(
                                                                  queryBuilder:
                                                                      (categoryRecord) =>
                                                                          categoryRecord
                                                                              .where(
                                                                    'name',
                                                                    isEqualTo:
                                                                        _model
                                                                            .dropDownValue3,
                                                                  ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  courseLevel:
                                                                      createInstructorCourseLevelStruct(
                                                                    categoryName:
                                                                        _model
                                                                            .dropDownValue3,
                                                                    categoryRef: _model
                                                                        .categoryRslt1
                                                                        ?.reference,
                                                                    branchName:
                                                                        'Please select..',
                                                                    fieldValues: {
                                                                      'branchRef':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                    clearUnsetFields:
                                                                        false,
                                                                  ),
                                                                ));
                                                                setState(() {
                                                                  _model
                                                                      .dropDownValueController4
                                                                      ?.reset();
                                                                });
                                                                setState(() {
                                                                  _model.categoryLevelSet =
                                                                      'set';
                                                                  _model.ccName =
                                                                      _model
                                                                          .dropDownValue3!;
                                                                  _model.bName =
                                                                      '';
                                                                });
                                                              } else {
                                                                _model.categoryRslt =
                                                                    await queryCategoryRecordOnce(
                                                                  queryBuilder:
                                                                      (categoryRecord) =>
                                                                          categoryRecord
                                                                              .where(
                                                                    'name',
                                                                    isEqualTo:
                                                                        _model
                                                                            .dropDownValue3,
                                                                  ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  courseLevel:
                                                                      createInstructorCourseLevelStruct(
                                                                    categoryName:
                                                                        _model
                                                                            .dropDownValue3,
                                                                    categoryRef: _model
                                                                        .categoryRslt
                                                                        ?.reference,
                                                                    branchName:
                                                                        'Please select..',
                                                                    fieldValues: {
                                                                      'branchRef':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                    clearUnsetFields:
                                                                        false,
                                                                  ),
                                                                ));
                                                                setState(() {
                                                                  _model
                                                                      .dropDownValueController4
                                                                      ?.reset();
                                                                });
                                                                setState(() {
                                                                  _model.categoryLevelSet =
                                                                      'unset';
                                                                  _model.ccName =
                                                                      _model
                                                                          .dropDownValue3!;
                                                                  _model.bName =
                                                                      '';
                                                                });
                                                              }

                                                              setState(() {});
                                                            },
                                                            width: 300.0,
                                                            height: 50.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'uvk4iv19' /* Select category... */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (currentUserDocument?.courseLevel
                                                  ?.categoryRef?.id !=
                                              null &&
                                          currentUserDocument?.courseLevel
                                                  ?.categoryRef?.id !=
                                              '')
                                        Expanded(
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Container(
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
                                                      child: StreamBuilder<
                                                          List<BranchRecord>>(
                                                        stream:
                                                            queryBranchRecord(
                                                          queryBuilder:
                                                              (branchRecord) =>
                                                                  branchRecord
                                                                      .where(
                                                            'categoryRef',
                                                            isEqualTo:
                                                                currentUserDocument
                                                                    ?.courseLevel
                                                                    ?.categoryRef,
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
                                                          List<BranchRecord>
                                                              dropDownBranchRecordList =
                                                              snapshot.data!;
                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController4 ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownValue4 ??=
                                                                  () {
                                                                if (_model
                                                                        .bName !=
                                                                    '') {
                                                                  return _model
                                                                      .bName;
                                                                } else if (currentUserDocument
                                                                            ?.courseLevel
                                                                            ?.branchName !=
                                                                        null &&
                                                                    currentUserDocument
                                                                            ?.courseLevel
                                                                            ?.branchName !=
                                                                        '') {
                                                                  return currentUserDocument
                                                                      ?.courseLevel
                                                                      ?.branchName;
                                                                } else {
                                                                  return ' ';
                                                                }
                                                              }(),
                                                            ),
                                                            options:
                                                                dropDownBranchRecordList
                                                                    .map((e) =>
                                                                        e.name)
                                                                    .toList(),
                                                            onChanged:
                                                                (val) async {
                                                              setState(() =>
                                                                  _model.dropDownValue4 =
                                                                      val);
                                                              if (_model
                                                                      .branchLevelSet ==
                                                                  'unset') {
                                                                _model.branchRslt1 =
                                                                    await queryBranchRecordOnce(
                                                                  queryBuilder:
                                                                      (branchRecord) =>
                                                                          branchRecord
                                                                              .where(
                                                                    'name',
                                                                    isEqualTo:
                                                                        _model
                                                                            .dropDownValue3,
                                                                  ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  courseLevel:
                                                                      createInstructorCourseLevelStruct(
                                                                    branchName:
                                                                        _model
                                                                            .dropDownValue4,
                                                                    branchRef: _model
                                                                        .branchRslt1
                                                                        ?.reference,
                                                                    clearUnsetFields:
                                                                        false,
                                                                  ),
                                                                ));
                                                                setState(() {
                                                                  _model.branchLevelSet =
                                                                      'unset';
                                                                  _model.bName =
                                                                      _model
                                                                          .dropDownValue4!;
                                                                });
                                                              } else {
                                                                _model.branchRslt =
                                                                    await queryBranchRecordOnce(
                                                                  queryBuilder:
                                                                      (branchRecord) =>
                                                                          branchRecord
                                                                              .where(
                                                                    'name',
                                                                    isEqualTo:
                                                                        _model
                                                                            .dropDownValue3,
                                                                  ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);

                                                                await currentUserReference!
                                                                    .update(
                                                                        createUsersRecordData(
                                                                  courseLevel:
                                                                      createInstructorCourseLevelStruct(
                                                                    branchName:
                                                                        _model
                                                                            .dropDownValue4,
                                                                    branchRef: _model
                                                                        .branchRslt
                                                                        ?.reference,
                                                                    clearUnsetFields:
                                                                        false,
                                                                  ),
                                                                ));
                                                                setState(() {
                                                                  _model.branchLevelSet =
                                                                      'unset';
                                                                  _model.bName =
                                                                      _model
                                                                          .dropDownValue4!;
                                                                });
                                                              }

                                                              setState(() {
                                                                FFAppState()
                                                                    .branchChange = 2;
                                                              });

                                                              setState(() {});
                                                            },
                                                            width: 300.0,
                                                            height: 50.0,
                                                            searchHintTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                            searchTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'r9qabvfp' /* Select branch... */,
                                                            ),
                                                            searchHintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'w9ee31kz' /* Search for an item... */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: true,
                                                            isMultiSelect:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  if (FFAppState()
                                                          .branchChange ==
                                                      2)
                                                    StreamBuilder<
                                                        List<BranchRecord>>(
                                                      stream: queryBranchRecord(
                                                        queryBuilder:
                                                            (branchRecord) =>
                                                                branchRecord
                                                                    .where(
                                                          'name',
                                                          isEqualTo: _model
                                                              .dropDownValue4,
                                                        ),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<BranchRecord>
                                                            changeBranchBranchRecordList =
                                                            snapshot.data!;
                                                        final changeBranchBranchRecord =
                                                            changeBranchBranchRecordList
                                                                    .isNotEmpty
                                                                ? changeBranchBranchRecordList
                                                                    .first
                                                                : null;
                                                        return wrapWithModel(
                                                          model: _model
                                                              .changeBranchModel,
                                                          updateCallback: () =>
                                                              setState(() {}),
                                                          child:
                                                              ChangeBranchWidget(
                                                            parameter1:
                                                                changeBranchBranchRecord
                                                                    ?.reference,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 16.0, 15.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller:
                                              _model.inputController4 ??=
                                                  TextEditingController(
                                            text:
                                                columnCourseRecord.description,
                                          ),
                                          focusNode: _model.inputFocusNode4,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'bd39n9lw' /* Description */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 24.0, 0.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLines: 3,
                                          validator: _model
                                              .inputController4Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 16.0, 15.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller:
                                              _model.inputController5 ??=
                                                  TextEditingController(
                                            text:
                                                columnCourseRecord.courseLearn,
                                          ),
                                          focusNode: _model.inputFocusNode5,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'dhrxqa2i' /* What you will learn */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 24.0, 0.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLines: 3,
                                          validator: _model
                                              .inputController5Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 16.0, 15.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller:
                                              _model.inputController6 ??=
                                                  TextEditingController(
                                            text: columnCourseRecord
                                                .courseRequirement,
                                          ),
                                          focusNode: _model.inputFocusNode6,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'e0ra6gz3' /* Course Requirement(one per lin... */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 24.0, 0.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLines: 3,
                                          validator: _model
                                              .inputController6Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController7 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord
                                                      .totalCourseHour
                                                      .toString(),
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode7,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '1u7bjkpk' /* Total Course Duration(hurs) */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .inputController7Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController8 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord
                                                      .numberLessons
                                                      .toString(),
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode8,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '8rv3ree2' /* Total Number of Lessons */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .inputController8Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController9 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord
                                                      .bookingLimit
                                                      .toString(),
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode9,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ldg0vjlf' /* Student Limit */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .inputController9Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bmqe0bla' /* Course Type */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                                FlutterFlowRadioButton(
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'juj5y4xx' /* Free */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cyk8lran' /* Paid */,
                                                    )
                                                  ].toList(),
                                                  onChanged: (val) =>
                                                      setState(() {}),
                                                  controller: _model
                                                          .radioButtonValueController ??=
                                                      FormFieldController<
                                                              String>(
                                                          columnCourseRecord
                                                              .coursePaymentType),
                                                  optionHeight: 32.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  selectedTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  buttonPosition:
                                                      RadioButtonPosition.left,
                                                  direction: Axis.horizontal,
                                                  radioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  inactiveRadioButtonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  toggleable: false,
                                                  horizontalAlignment:
                                                      WrapAlignment.start,
                                                  verticalAlignment:
                                                      WrapCrossAlignment.start,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Visibility(
                                      visible:
                                          _model.radioButtonValue == 'Paid',
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
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
                                                  controller: _model
                                                          .inputController10 ??=
                                                      TextEditingController(
                                                    text: columnCourseRecord
                                                        .price
                                                        .toString(),
                                                  ),
                                                  focusNode:
                                                      _model.inputFocusNode10,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '2062vp8f' /* Full Price */,
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
                                                      .inputController10Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
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
                                                  controller: _model
                                                          .inputController11 ??=
                                                      TextEditingController(
                                                    text: columnCourseRecord
                                                        .firstEMIprice
                                                        .toString(),
                                                  ),
                                                  focusNode:
                                                      _model.inputFocusNode11,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'qblvxq3z' /* First EMI Price */,
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
                                                      .inputController11Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
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
                                                  controller: _model
                                                          .inputController12 ??=
                                                      TextEditingController(
                                                    text: columnCourseRecord
                                                        .secondEMIprice
                                                        .toString(),
                                                  ),
                                                  focusNode:
                                                      _model.inputFocusNode12,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '67vnrf7s' /* Second EMI Price */,
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
                                                      .inputController12Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
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
                                                  controller: _model
                                                          .inputController13 ??=
                                                      TextEditingController(
                                                    text: columnCourseRecord
                                                        .thirdEMIprice
                                                        .toString(),
                                                  ),
                                                  focusNode:
                                                      _model.inputFocusNode13,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      't0a11ece' /* Third EMI Price */,
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
                                                      .inputController13Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.inputController14 ??=
                                                        TextEditingController(
                                                  text: columnCourseRecord
                                                      .whatsappGroupLink,
                                                ),
                                                focusNode:
                                                    _model.inputFocusNode14,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'f6dq5rca' /* Whatsapp Group Link */,
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
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(16.0, 24.0,
                                                              0.0, 24.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .inputController14Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (valueOrDefault(
                                                currentUserDocument?.userRole,
                                                '') ==
                                            'Admin')
                                          Expanded(
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  StreamBuilder<UsersRecord>(
                                                stream: UsersRecord.getDocument(
                                                    columnCourseRecord
                                                        .authorRef!),
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
                                                  final wrapUsersRecord =
                                                      snapshot.data!;
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
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    16.0,
                                                                    15.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            List<UsersRecord>>(
                                                          stream:
                                                              queryUsersRecord(
                                                            queryBuilder:
                                                                (usersRecord) =>
                                                                    usersRecord
                                                                        .where(
                                                                          'userRole',
                                                                          isEqualTo:
                                                                              'Instructor',
                                                                        )
                                                                        .where(
                                                                          'instuctorStatus',
                                                                          isEqualTo:
                                                                              'Approved',
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
                                                            List<UsersRecord>
                                                                dropDownUsersRecordList =
                                                                snapshot.data!;
                                                            return FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .dropDownValueController5 ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownValue5 ??=
                                                                    wrapUsersRecord
                                                                        .displayName,
                                                              ),
                                                              options: dropDownUsersRecordList
                                                                  .map((e) => e
                                                                      .displayName)
                                                                  .toList(),
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownValue5 =
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
                                                                'hpuy34v3' /* Select instructor */,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              elevation: 2.0,
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderWidth: 0.0,
                                                              borderRadius: 0.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          4.0,
                                                                          12.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.22,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'r922c5dg' /* Add to LIst */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController6 ??=
                                              FormFieldController<String>(
                                            _model.dropDownValue6 ??=
                                                columnCourseRecord.status,
                                          ),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'xaapjc5g' /*  */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              's2cdt1iq' /* Recommended */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'klvd7cyz' /* Featured */,
                                            )
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue6 = val),
                                          width: 280.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.6,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'bf68m9y4' /* Batches */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    StreamBuilder<
                                                        BatchesRecord>(
                                                      stream: BatchesRecord
                                                          .getDocument(widget
                                                              .batchesRef!),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final containerBatchesRecord =
                                                            snapshot.data!;
                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      BatchesRecord>>(
                                                                stream:
                                                                    queryBatchesRecord(
                                                                  queryBuilder: (batchesRecord) =>
                                                                      batchesRecord
                                                                          .where(
                                                                            'courseRef',
                                                                            arrayContains:
                                                                                widget.courseRef?.reference,
                                                                          )
                                                                          .where(
                                                                            'status',
                                                                            isEqualTo:
                                                                                'Ongoing',
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
                                                                            Color(0x00DF473F),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<BatchesRecord>
                                                                      dropDownBatchesRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                            .dropDownValueController7 ??=
                                                                        FormFieldController<
                                                                            String>(
                                                                      _model.dropDownValue7 ??=
                                                                          containerBatchesRecord
                                                                              .name,
                                                                    ),
                                                                    options: dropDownBatchesRecordList
                                                                        .map((e) => valueOrDefault<String>(
                                                                              e.name,
                                                                              'No batch found',
                                                                            ))
                                                                        .toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(() =>
                                                                          _model.dropDownValue7 =
                                                                              val);
                                                                      if (widget
                                                                              .batchesRef ==
                                                                          null) {
                                                                        await showDialog(
                                                                          barrierDismissible:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  child: PwdCouseBatchWidget(
                                                                                    courseRef: widget.courseRef!,
                                                                                    newBatchesName: _model.dropDownValue7!,
                                                                                    prevBatchesStatus: 'Ongoing',
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      } else {
                                                                        await showDialog(
                                                                          barrierDismissible:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: Container(
                                                                                  width: 400.0,
                                                                                  child: PresentBatchinCourseWidget(
                                                                                    courseRef: widget.courseRef!,
                                                                                    prevBatchesRef: widget.batchesRef!,
                                                                                    newBatchesName: _model.dropDownValue7!,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      }
                                                                    },
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        50.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'lots8v7t' /* Select batches... */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                    borderWidth:
                                                                        2.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (widget.batchesRef != null)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wbh1vkc9' /* Status */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                            controller: _model
                                                                    .dropDownValueController8 ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownValue8 ??=
                                                                  columnCourseRecord
                                                                      .status,
                                                            ),
                                                            options: [
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'uyy7ud71' /* Draft */,
                                                              ),
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                's3tbdrww' /* Publish */,
                                                              )
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownValue8 =
                                                                        val),
                                                            width: 300.0,
                                                            height: 50.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'tr8j16ay' /* Select branch... */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      if ((columnCourseRecord.image != '') ||
                                          (_model.uploadedFileUrl != ''))
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: OctoImage(
                                            placeholderBuilder:
                                                OctoPlaceholder.blurHash(
                                              columnCourseRecord.imageBlurhash,
                                            ),
                                            image: NetworkImage(
                                              valueOrDefault<String>(
                                                columnCourseRecord.image,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                              ),
                                            ),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                  context: context,
                                                  maxWidth: 1500.00,
                                                  maxHeight: 1500.00,
                                                  allowPhoto: true,
                                                  includeBlurHash: true,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  setState(() => _model
                                                      .isDataUploading = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  var downloadUrls = <String>[];
                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                ))
                                                            .toList();

                                                    downloadUrls = (await Future
                                                            .wait(
                                                      selectedMedia.map(
                                                        (m) async =>
                                                            await uploadData(
                                                                m.storagePath,
                                                                m.bytes),
                                                      ),
                                                    ))
                                                        .where((u) => u != null)
                                                        .map((u) => u!)
                                                        .toList();
                                                  } finally {
                                                    _model.isDataUploading =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                              .length ==
                                                          selectedMedia
                                                              .length &&
                                                      downloadUrls.length ==
                                                          selectedMedia
                                                              .length) {
                                                    setState(() {
                                                      _model.uploadedLocalFile =
                                                          selectedUploadedFiles
                                                              .first;
                                                      _model.uploadedFileUrl =
                                                          downloadUrls.first;
                                                    });
                                                  } else {
                                                    setState(() {});
                                                    return;
                                                  }
                                                }

                                                await columnCourseRecord
                                                    .reference
                                                    .update(
                                                        createCourseRecordData(
                                                  image: _model.uploadedFileUrl,
                                                  imageBlurhash:
                                                      valueOrDefault<String>(
                                                    _model.uploadedLocalFile
                                                        .blurHash,
                                                    'https://placehold.co/300x200',
                                                  ),
                                                ));
                                                FFAppState().update(() {
                                                  FFAppState().refresh = 1;
                                                });
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        content: Text(
                                                            'Photo is updated successfully'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '7lzrf1n7' /* Add Photo */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Lexend Deca'),
                                                    ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          if ((columnCourseRecord.image !=
                                                  '') ||
                                              (_model.uploadedFileUrl != ''))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: Container(
                                                            height: 200.0,
                                                            child: RemoveWidget(
                                                              image: 1,
                                                              courseRef:
                                                                  columnCourseRecord
                                                                      .reference,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'hd9he9i2' /* Remove */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 100.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lexend Deca'),
                                                      ),
                                                  elevation: 1.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      if ((FFAppState().videoRef == null) &&
                                          (columnCourseRecord.videoRef != null))
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
                                            if (FFAppState().videoRef == null)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child:
                                                    StreamBuilder<VideosRecord>(
                                                  stream:
                                                      VideosRecord.getDocument(
                                                          columnCourseRecord
                                                              .videoRef!),
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
                                                    final containerVideosRecord =
                                                        snapshot.data!;
                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 250.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  containerVideosRecord
                                                                      .images,
                                                                  width: 300.0,
                                                                  height: 120.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              containerVideosRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.apiResultffl =
                                                                      await NEWgetOTPandPBICall
                                                                          .call(
                                                                    videoId:
                                                                        containerVideosRecord
                                                                            .videoId,
                                                                    userName:
                                                                        currentUserEmail,
                                                                    userid:
                                                                        currentUserUid,
                                                                  );
                                                                  if ((_model
                                                                          .apiResultffl
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              WebViewAware(
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                              child: VideoPreviewWidget(
                                                                                videoRef: containerVideosRecord,
                                                                                otp: NEWgetOTPandPBICall.otp(
                                                                                  (_model.apiResultffl?.jsonBody ?? ''),
                                                                                )!,
                                                                                playbackinfo: NEWgetOTPandPBICall.playbackInfo(
                                                                                  (_model.apiResultffl?.jsonBody ?? ''),
                                                                                )!,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'API Failed',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            6.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .remove_red_eye_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              14.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'e1t1sj21' /* Preview */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  fontSize: 12.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      if (FFAppState().videoRef != null)
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
                                            if (FFAppState().videoRef != null)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child:
                                                    StreamBuilder<VideosRecord>(
                                                  stream:
                                                      VideosRecord.getDocument(
                                                          FFAppState()
                                                              .videoRef!),
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
                                                    final containerVideosRecord =
                                                        snapshot.data!;
                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 250.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  containerVideosRecord
                                                                      .images,
                                                                  width: 300.0,
                                                                  height: 120.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              containerVideosRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.apiResultff12 =
                                                                      await NEWgetOTPandPBICall
                                                                          .call(
                                                                    videoId:
                                                                        containerVideosRecord
                                                                            .videoId,
                                                                    userName:
                                                                        currentUserEmail,
                                                                    userid:
                                                                        currentUserUid,
                                                                  );
                                                                  if ((_model
                                                                          .apiResultff12
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              WebViewAware(
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                              child: VideoPreviewWidget(
                                                                                videoRef: containerVideosRecord,
                                                                                otp: NEWgetOTPandPBICall.otp(
                                                                                  (_model.apiResultff12?.jsonBody ?? ''),
                                                                                )!,
                                                                                playbackinfo: NEWgetOTPandPBICall.playbackInfo(
                                                                                  (_model.apiResultff12?.jsonBody ?? ''),
                                                                                )!,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'API Failed',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            6.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .remove_red_eye_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              14.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '19qcrr8e' /* Preview */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  fontSize: 12.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.5,
                                                            child:
                                                                ListAvailableVideoWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'j585huri' /* Add Video */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 100.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lexend Deca'),
                                                      ),
                                                  elevation: 1.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().videoRef != null)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      8.0, 16.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() {
                                                    FFAppState().videoRef =
                                                        null;
                                                  });
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'r00agd7b' /* Remove  */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 100.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lexend Deca'),
                                                      ),
                                                  elevation: 1.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
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
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          StreamBuilder<List<UsersRecord>>(
            stream: queryUsersRecord(
              queryBuilder: (usersRecord) => usersRecord.where(
                'display_name',
                isEqualTo: _model.dropDownValue5,
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
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0x00DF473F),
                      ),
                    ),
                  ),
                );
              }
              List<UsersRecord> wrapUsersRecordList = snapshot.data!;
              final wrapUsersRecord = wrapUsersRecordList.isNotEmpty
                  ? wrapUsersRecordList.first
                  : null;
              return Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  StreamBuilder<CourseRecord>(
                    stream:
                        CourseRecord.getDocument(widget.courseRef!.reference),
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
                      final wrapCourseRecord = snapshot.data!;
                      return Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          StreamBuilder<List<BatchesRecord>>(
                            stream: queryBatchesRecord(
                              queryBuilder: (batchesRecord) =>
                                  batchesRecord.where(
                                'name',
                                isEqualTo: _model.dropDownValue7,
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
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0x00DF473F),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<BatchesRecord> wrapBatchesRecordList =
                                  snapshot.data!;
                              final wrapBatchesRecord =
                                  wrapBatchesRecordList.isNotEmpty
                                      ? wrapBatchesRecordList.first
                                      : null;
                              return Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  StreamBuilder<BatchesRecord>(
                                    stream: BatchesRecord.getDocument(
                                        widget.batchesRef!),
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
                                      final wrapBatchesRecord = snapshot.data!;
                                      return Wrap(
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
                                          Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsets.all(20.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  if (widget.batchesRef ==
                                                      wrapBatchesRecord
                                                          ?.reference) {
                                                    if ((wrapBatchesRecord
                                                                .courseRef
                                                                .contains(widget
                                                                    .courseRef
                                                                    ?.reference) ==
                                                            true) &&
                                                        (wrapBatchesRecord
                                                                .status ==
                                                            'Ongoing')) {
                                                      await widget
                                                          .courseRef!.reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'listView':
                                                                FieldValue
                                                                    .delete(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .courseRef!.reference
                                                          .update({
                                                        ...createCourseRecordData(
                                                          name: _model
                                                              .inputController1
                                                              .text,
                                                          description: _model
                                                              .inputController3
                                                              .text,
                                                          price: double
                                                              .tryParse(_model
                                                                  .inputController10
                                                                  .text),
                                                          subtitle: _model
                                                              .inputController3
                                                              .text,
                                                          firstEMIprice: double
                                                              .tryParse(_model
                                                                  .inputController11
                                                                  .text),
                                                          secondEMIprice: double
                                                              .tryParse(_model
                                                                  .inputController12
                                                                  .text),
                                                          thirdEMIprice: double
                                                              .tryParse(_model
                                                                  .inputController13
                                                                  .text),
                                                          universityRef:
                                                              currentUserDocument
                                                                  ?.courseLevel
                                                                  ?.universityRef,
                                                          countryRef:
                                                              currentUserDocument
                                                                  ?.courseLevel
                                                                  ?.coutryRef,
                                                          branchRef:
                                                              currentUserDocument
                                                                  ?.courseLevel
                                                                  ?.branchRef,
                                                          whatsappGroupLink: _model
                                                              .inputController14
                                                              .text,
                                                          authorRef: valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.userRole,
                                                                      '') ==
                                                                  'Admin'
                                                              ? wrapUsersRecord
                                                                  ?.reference
                                                              : currentUserReference,
                                                          totalCourseHour: int
                                                              .tryParse(_model
                                                                  .inputController7
                                                                  .text),
                                                          courseLearn: _model
                                                              .inputController5
                                                              .text,
                                                          courseRequirement: _model
                                                              .inputController6
                                                              .text,
                                                          numberLessons: int
                                                              .tryParse(_model
                                                                  .inputController8
                                                                  .text),
                                                          coursePaymentType: _model
                                                              .radioButtonValue,
                                                          status: wrapCourseRecord
                                                                      .batchesRef !=
                                                                  null
                                                              ? _model
                                                                  .dropDownValue8
                                                              : 'Draft',
                                                          videoRef: FFAppState()
                                                                      .videoRef !=
                                                                  null
                                                              ? FFAppState()
                                                                  .videoRef
                                                              : widget.courseRef
                                                                  ?.videoRef,
                                                          bookingLimit: int
                                                              .tryParse(_model
                                                                  .inputController9
                                                                  .text),
                                                          bookedCount: int
                                                              .tryParse(_model
                                                                  .inputController9
                                                                  .text),
                                                          categoryRef:
                                                              currentUserDocument
                                                                  ?.courseLevel
                                                                  ?.categoryRef,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'listView':
                                                                FieldValue
                                                                    .arrayUnion([
                                                              _model
                                                                  .dropDownValue6
                                                            ]),
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
                                                          userIP:
                                                              _model.userIP1,
                                                          userRole: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userRole,
                                                              ''),
                                                          createdAt:
                                                              getCurrentTimestamp,
                                                          eventType: 'Modified',
                                                          object: 'Course',
                                                          eventId: widget
                                                              .courseRef
                                                              ?.reference
                                                              .id,
                                                          eventTitle: _model
                                                              .inputController1
                                                              .text,
                                                          userSessionID: _model
                                                              .userSession1,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'eventStatus': [
                                                              'Modified'
                                                            ],
                                                          },
                                                        ),
                                                      });

                                                      context.goNamed('Course');
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return WebViewAware(
                                                            child: AlertDialog(
                                                              content: Text(
                                                                  'Please select  batch. (or) Selected batches are already archived.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    }
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child: Container(
                                                              width: 300.0,
                                                              child:
                                                                  PwdCouseBatchWidget(
                                                                courseRef: widget
                                                                    .courseRef!,
                                                                newBatchesName:
                                                                    _model
                                                                        .dropDownValue7!,
                                                                prevBatchesStatus:
                                                                    'Archived',
                                                                prevBatchesRef:
                                                                    wrapCourseRecord
                                                                        .batchesRef,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  }

                                                  setState(() {});
                                                },
                                                child: wrapWithModel(
                                                  model: _model.addButtonModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: AddButtonWidget(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'k9su3kr5' /* Update */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.save_outlined,
                                                      color: Colors.white,
                                                      size: 16.0,
                                                    ),
                                                    height: 45,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
