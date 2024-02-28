import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_announcement_model.dart';
export 'add_announcement_model.dart';

class AddAnnouncementWidget extends StatefulWidget {
  const AddAnnouncementWidget({super.key});

  @override
  State<AddAnnouncementWidget> createState() => _AddAnnouncementWidgetState();
}

class _AddAnnouncementWidgetState extends State<AddAnnouncementWidget> {
  late AddAnnouncementModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAnnouncementModel());

    _model.yourEmailController ??= TextEditingController();
    _model.yourEmailFocusNode ??= FocusNode();

    _model.yourNameController ??= TextEditingController();
    _model.yourNameFocusNode ??= FocusNode();

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
        width: MediaQuery.sizeOf(context).width * 0.25,
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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
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
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                    if (FFAppState().currentUserRole == 'Admin')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: StreamBuilder<List<CourseRecord>>(
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
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0x00DF473F),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<CourseRecord> dropDownCourseRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: dropDownCourseRecordList
                                      .map((e) => e.name)
                                      .toList(),
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: FFLocalizations.of(context).getText(
                                    'n6lqtkmo' /* Select Course... */,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    if (FFAppState().currentUserRole == 'Instructor')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: StreamBuilder<List<CourseRecord>>(
                              stream: queryCourseRecord(
                                queryBuilder: (courseRecord) => courseRecord
                                    .where(
                                      'authorRef',
                                      isEqualTo: currentUserReference,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0x00DF473F),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<CourseRecord> dropDownInsCourseRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownInsValueController ??=
                                          FormFieldController<String>(null),
                                  options: dropDownInsCourseRecordList
                                      .map((e) => e.name)
                                      .toList(),
                                  onChanged: (val) => setState(
                                      () => _model.dropDownInsValue = val),
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: FFLocalizations.of(context).getText(
                                    'ueokb7i5' /* Select Course... */,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: TextFormField(
                          controller: _model.yourEmailController,
                          focusNode: _model.yourEmailFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'w5wx5mik' /* Title */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          maxLines: null,
                          validator: _model.yourEmailControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: TextFormField(
                          controller: _model.yourNameController,
                          focusNode: _model.yourNameFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'q4nbxjsd' /* Summary */,
                            ),
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          maxLines: null,
                          validator: _model.yourNameControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    StreamBuilder<List<CourseRecord>>(
                      stream: queryCourseRecord(
                        queryBuilder: (courseRecord) => courseRecord.where(
                          'name',
                          isEqualTo: FFAppState().currentUserRole == 'Admin'
                              ? _model.dropDownValue
                              : _model.dropDownInsValue,
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
                        List<CourseRecord> wrapCourseRecordList =
                            snapshot.data!;
                        final wrapCourseRecord = wrapCourseRecordList.isNotEmpty
                            ? wrapCourseRecordList.first
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
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
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

                                    var announcementRecordReference =
                                        AnnouncementRecord.collection.doc();
                                    await announcementRecordReference
                                        .set(createAnnouncementRecordData(
                                      courseRef: wrapCourseRecord?.reference,
                                      title: _model.yourEmailController.text,
                                      bio: _model.yourNameController.text,
                                      createdAt: getCurrentTimestamp,
                                      userRef: currentUserReference,
                                    ));
                                    _model.announcementResult1 =
                                        AnnouncementRecord.getDocumentFromData(
                                            createAnnouncementRecordData(
                                              courseRef:
                                                  wrapCourseRecord?.reference,
                                              title: _model
                                                  .yourEmailController.text,
                                              bio: _model
                                                  .yourNameController.text,
                                              createdAt: getCurrentTimestamp,
                                              userRef: currentUserReference,
                                            ),
                                            announcementRecordReference);
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
                                            currentUserDocument?.userRole, ''),
                                        createdAt: getCurrentTimestamp,
                                        eventType: 'Created',
                                        object: 'Announcement',
                                        eventId: _model
                                            .announcementResult1?.reference.id,
                                        eventTitle:
                                            _model.yourEmailController.text,
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
                                          'Announcement added successfuly',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );

                                    setState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.addButtonModel,
                                    updateCallback: () => setState(() {}),
                                    child: AddButtonWidget(
                                      text: FFLocalizations.of(context).getText(
                                        '62ra0faq' /* Save */,
                                      ),
                                      icon: Icon(
                                        Icons.save_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
