import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_branch/change_branch_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_category/change_category_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_country/change_country_widget.dart';
import '/old_version_d_r_i_p/online_classes/lists/change_university/change_university_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_category_model.dart';
export 'create_category_model.dart';

class CreateCategoryWidget extends StatefulWidget {
  const CreateCategoryWidget({super.key});

  @override
  State<CreateCategoryWidget> createState() => _CreateCategoryWidgetState();
}

class _CreateCategoryWidgetState extends State<CreateCategoryWidget> {
  late CreateCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateCategoryModel());

    _model.inputController ??= TextEditingController();
    _model.inputFocusNode ??= FocusNode();

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
        width: MediaQuery.sizeOf(context).width * 0.45,
        height: 500.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  FFAppState().courseImgFeature,
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                ),
                                width: 230.0,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        maxWidth: 1500.00,
                                        maxHeight: 1500.00,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(() =>
                                            _model.isDataUploading = true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                  ))
                                              .toList();

                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          _model.isDataUploading = false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          setState(() {
                                            _model.uploadedLocalFile =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          setState(() {});
                                          return;
                                        }
                                      }

                                      setState(() {
                                        FFAppState().courseImgFeature =
                                            _model.uploadedFileUrl;
                                      });
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ywq5f3xr' /* Add Image */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Lexend Deca'),
                                          ),
                                      elevation: 1.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                if (_model.uploadedFileUrl != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 16.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height: 200.0,
                                                  child: RemoveWidget(
                                                    image: 1,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '64wgyaq1' /* Remove */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 16.0, 15.0, 0.0),
                                            child: StreamBuilder<
                                                List<CountryRecord>>(
                                              stream: queryCountryRecord(),
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
                                                List<CountryRecord>
                                                    dropDownCountryRecordList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownValueController1 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      dropDownCountryRecordList
                                                          .map((e) => e.name)
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    setState(() => _model
                                                        .dropDownValue1 = val);
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
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      courseLevel:
                                                          createInstructorCourseLevelStruct(
                                                        countryName: _model
                                                            .dropDownValue1,
                                                        coutryRef: _model
                                                            .countryRslt
                                                            ?.reference,
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
                                                        clearUnsetFields: false,
                                                      ),
                                                    ));

                                                    setState(() {});
                                                  },
                                                  width: 300.0,
                                                  height: 50.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '4gxzw0i5' /* Select country... */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        if (FFAppState().countryChange == 2)
                                          AuthUserStreamWidget(
                                            builder: (context) => StreamBuilder<
                                                List<CountryRecord>>(
                                              stream: queryCountryRecord(
                                                queryBuilder: (countryRecord) =>
                                                    countryRecord.where(
                                                  'name',
                                                  isEqualTo: currentUserDocument
                                                      ?.courseLevel
                                                      ?.countryName,
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
                                                List<CountryRecord>
                                                    changeCountryCountryRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final changeCountryCountryRecord =
                                                    changeCountryCountryRecordList
                                                            .isNotEmpty
                                                        ? changeCountryCountryRecordList
                                                            .first
                                                        : null;
                                                return wrapWithModel(
                                                  model:
                                                      _model.changeCountryModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ChangeCountryWidget(
                                                    countryRef:
                                                        changeCountryCountryRecord
                                                            ?.reference,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (currentUserDocument
                                            ?.courseLevel?.coutryRef?.id !=
                                        null &&
                                    currentUserDocument
                                            ?.courseLevel?.coutryRef?.id !=
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 16.0, 15.0, 0.0),
                                                child: StreamBuilder<
                                                    List<UniversityRecord>>(
                                                  stream: queryUniversityRecord(
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
                                                    List<UniversityRecord>
                                                        dropDownUniversityRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownValueController2 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options:
                                                          dropDownUniversityRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        setState(() => _model
                                                                .dropDownValue2 =
                                                            val);
                                                        _model.universityRslt =
                                                            await queryUniversityRecordOnce(
                                                          queryBuilder:
                                                              (universityRecord) =>
                                                                  universityRecord
                                                                      .where(
                                                            'name',
                                                            isEqualTo: _model
                                                                .dropDownValue2,
                                                          ),
                                                          singleRecord: true,
                                                        ).then((s) =>
                                                                s.firstOrNull);

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          courseLevel:
                                                              createInstructorCourseLevelStruct(
                                                            universityName: _model
                                                                .dropDownValue2,
                                                            universityRef: _model
                                                                .universityRslt
                                                                ?.reference,
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
                                                        'aam1qv70' /* Select university... */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            if (FFAppState().universityChange ==
                                                2)
                                              StreamBuilder<
                                                  List<UniversityRecord>>(
                                                stream: queryUniversityRecord(
                                                  queryBuilder:
                                                      (universityRecord) =>
                                                          universityRecord
                                                              .where(
                                                    'name',
                                                    isEqualTo:
                                                        currentUserDocument
                                                            ?.courseLevel
                                                            ?.universityName,
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
                                                  List<UniversityRecord>
                                                      changeUniversityUniversityRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final changeUniversityUniversityRecord =
                                                      changeUniversityUniversityRecordList
                                                              .isNotEmpty
                                                          ? changeUniversityUniversityRecordList
                                                              .first
                                                          : null;
                                                  return wrapWithModel(
                                                    model: _model
                                                        .changeUniversityModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        ChangeUniversityWidget(
                                                      parameter1:
                                                          changeUniversityUniversityRecord
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
                                if (currentUserDocument
                                            ?.courseLevel?.universityRef?.id !=
                                        null &&
                                    currentUserDocument
                                            ?.courseLevel?.universityRef?.id !=
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 16.0, 15.0, 0.0),
                                                child: StreamBuilder<
                                                    List<CategoryRecord>>(
                                                  stream: queryCategoryRecord(
                                                    queryBuilder:
                                                        (categoryRecord) =>
                                                            categoryRecord
                                                                .where(
                                                      'countryRef',
                                                      isEqualTo:
                                                          currentUserDocument
                                                              ?.courseLevel
                                                              ?.coutryRef,
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
                                                    List<CategoryRecord>
                                                        dropDownCategoryRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownValueController3 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options:
                                                          dropDownCategoryRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        setState(() => _model
                                                                .dropDownValue3 =
                                                            val);
                                                        _model.categoryRslt =
                                                            await queryCategoryRecordOnce(
                                                          queryBuilder:
                                                              (categoryRecord) =>
                                                                  categoryRecord
                                                                      .where(
                                                            'name',
                                                            isEqualTo: _model
                                                                .dropDownValue3,
                                                          ),
                                                          singleRecord: true,
                                                        ).then((s) =>
                                                                s.firstOrNull);

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          courseLevel:
                                                              createInstructorCourseLevelStruct(
                                                            categoryName: _model
                                                                .dropDownValue3,
                                                            categoryRef: _model
                                                                .categoryRslt
                                                                ?.reference,
                                                            fieldValues: {
                                                              'branchRef':
                                                                  FieldValue
                                                                      .delete(),
                                                            },
                                                            clearUnsetFields:
                                                                false,
                                                          ),
                                                        ));

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
                                                        'hhqc5haj' /* Select category... */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            if (FFAppState().categoryChange ==
                                                2)
                                              StreamBuilder<
                                                  List<CategoryRecord>>(
                                                stream: queryCategoryRecord(
                                                  queryBuilder:
                                                      (categoryRecord) =>
                                                          categoryRecord.where(
                                                    'name',
                                                    isEqualTo:
                                                        currentUserDocument
                                                            ?.courseLevel
                                                            ?.categoryName,
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
                                                  List<CategoryRecord>
                                                      changeCategoryCategoryRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final changeCategoryCategoryRecord =
                                                      changeCategoryCategoryRecordList
                                                              .isNotEmpty
                                                          ? changeCategoryCategoryRecordList
                                                              .first
                                                          : null;
                                                  return wrapWithModel(
                                                    model: _model
                                                        .changeCategoryModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        ChangeCategoryWidget(),
                                                  );
                                                },
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                if (currentUserDocument
                                            ?.courseLevel?.categoryRef?.id !=
                                        null &&
                                    currentUserDocument
                                            ?.courseLevel?.categoryRef?.id !=
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 16.0, 15.0, 0.0),
                                                child: StreamBuilder<
                                                    List<BranchRecord>>(
                                                  stream: queryBranchRecord(
                                                    queryBuilder:
                                                        (branchRecord) =>
                                                            branchRecord.where(
                                                      'categoryRef',
                                                      isEqualTo:
                                                          currentUserDocument
                                                              ?.courseLevel
                                                              ?.categoryRef,
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
                                                    List<BranchRecord>
                                                        dropDownBranchRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownValueController4 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options:
                                                          dropDownBranchRecordList
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                      onChanged: (val) async {
                                                        setState(() => _model
                                                                .dropDownValue4 =
                                                            val);
                                                        _model.branchRslt =
                                                            await queryBranchRecordOnce(
                                                          queryBuilder:
                                                              (branchRecord) =>
                                                                  branchRecord
                                                                      .where(
                                                            'name',
                                                            isEqualTo: _model
                                                                .dropDownValue3,
                                                          ),
                                                          singleRecord: true,
                                                        ).then((s) =>
                                                                s.firstOrNull);

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          courseLevel:
                                                              createInstructorCourseLevelStruct(
                                                            branchName: _model
                                                                .dropDownValue4,
                                                            branchRef: _model
                                                                .branchRslt
                                                                ?.reference,
                                                            clearUnsetFields:
                                                                false,
                                                          ),
                                                        ));

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
                                                        'h6firoik' /* Select branch... */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            if (FFAppState().branchChange == 2)
                                              StreamBuilder<List<BranchRecord>>(
                                                stream: queryBranchRecord(
                                                  queryBuilder:
                                                      (branchRecord) =>
                                                          branchRecord.where(
                                                    'name',
                                                    isEqualTo:
                                                        currentUserDocument
                                                            ?.courseLevel
                                                            ?.branchName,
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
                                                  List<BranchRecord>
                                                      changeBranchBranchRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
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
                                                    child: ChangeBranchWidget(
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                decoration: BoxDecoration(),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 16.0, 15.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    child: TextFormField(
                      controller: _model.inputController,
                      focusNode: _model.inputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          '77jbrv7d' /* Search here... */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context).bodySmall,
                        hintStyle: FlutterFlowTheme.of(context).bodySmall,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 0.0, 24.0),
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          color: Color(0xFF757575),
                          size: 22.0,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator:
                          _model.inputControllerValidator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => StreamBuilder<List<CourseRecord>>(
                      stream: queryCourseRecord(
                        queryBuilder: (courseRecord) => courseRecord
                            .where(
                              'branchRef',
                              isEqualTo:
                                  currentUserDocument?.courseLevel?.branchRef,
                            )
                            .where(
                              'categoryRef',
                              isEqualTo:
                                  currentUserDocument?.courseLevel?.categoryRef,
                            )
                            .where(
                              'universityRef',
                              isEqualTo: currentUserDocument
                                  ?.courseLevel?.universityRef,
                            )
                            .where(
                              'countryRef',
                              isEqualTo:
                                  currentUserDocument?.courseLevel?.coutryRef,
                            )
                            .where(
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
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0x00DF473F),
                                ),
                              ),
                            ),
                          );
                        }
                        List<CourseRecord> listViewCourseRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewCourseRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewCourseRecord =
                                listViewCourseRecordList[listViewIndex];
                            return Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValueMap[
                                    listViewCourseRecord] ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.checkboxListTileValueMap[
                                          listViewCourseRecord] = newValue!);
                                },
                                title: Text(
                                  listViewCourseRecord.name,
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily),
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: Colors.white,
                                dense: false,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        var courseCategoryRecordReference =
                            CourseCategoryRecord.collection.doc();
                        await courseCategoryRecordReference.set({
                          ...createCourseCategoryRecordData(
                            name: _model.inputController.text,
                            image: _model.uploadedFileUrl,
                            branchRef:
                                currentUserDocument?.courseLevel?.branchRef,
                            universityRef:
                                currentUserDocument?.courseLevel?.universityRef,
                            countryRef:
                                currentUserDocument?.courseLevel?.coutryRef,
                          ),
                          ...mapToFirestore(
                            {
                              'courseListRef': _model
                                  .checkboxListTileCheckedItems
                                  .map((e) => e.reference)
                                  .toList(),
                            },
                          ),
                        });
                        _model.catResult1 =
                            CourseCategoryRecord.getDocumentFromData({
                          ...createCourseCategoryRecordData(
                            name: _model.inputController.text,
                            image: _model.uploadedFileUrl,
                            branchRef:
                                currentUserDocument?.courseLevel?.branchRef,
                            universityRef:
                                currentUserDocument?.courseLevel?.universityRef,
                            countryRef:
                                currentUserDocument?.courseLevel?.coutryRef,
                          ),
                          ...mapToFirestore(
                            {
                              'courseListRef': _model
                                  .checkboxListTileCheckedItems
                                  .map((e) => e.reference)
                                  .toList(),
                            },
                          ),
                        }, courseCategoryRecordReference);
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
                            object: 'Category',
                            eventId: _model.catResult1?.categoryRef?.id,
                            eventTitle: _model.inputController.text,
                            userSessionID: _model.userSession1,
                          ),
                          ...mapToFirestore(
                            {
                              'eventStatus': ['Create'],
                            },
                          ),
                        });
                        Navigator.pop(context);

                        setState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.addButtonModel,
                        updateCallback: () => setState(() {}),
                        child: AddButtonWidget(
                          text: FFLocalizations.of(context).getText(
                            '3adlu41w' /* Save */,
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
            ],
          ),
        ),
      ),
    );
  }
}
