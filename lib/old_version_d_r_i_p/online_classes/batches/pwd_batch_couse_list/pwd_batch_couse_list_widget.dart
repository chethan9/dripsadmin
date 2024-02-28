import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pwd_batch_couse_list_model.dart';
export 'pwd_batch_couse_list_model.dart';

class PwdBatchCouseListWidget extends StatefulWidget {
  const PwdBatchCouseListWidget({
    super.key,
    required this.courseRef,
    this.batchesRef,
    this.batchesStatus,
  });

  final DocumentReference? courseRef;
  final BatchesRecord? batchesRef;
  final String? batchesStatus;

  @override
  State<PwdBatchCouseListWidget> createState() =>
      _PwdBatchCouseListWidgetState();
}

class _PwdBatchCouseListWidgetState extends State<PwdBatchCouseListWidget> {
  late PwdBatchCouseListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PwdBatchCouseListModel());

    _model.yourEmailController ??= TextEditingController();
    _model.yourEmailFocusNode ??= FocusNode();

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

    return StreamBuilder<CourseRecord>(
      stream: CourseRecord.getDocument(widget.courseRef!),
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
        final containerCourseRecord = snapshot.data!;
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
                  tabletLandscape: false,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'ycq01ti2' /* Please enter master password */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: TextFormField(
                                controller: _model.yourEmailController,
                                focusNode: _model.yourEmailFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'hddomhvd' /* Password */,
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
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 24.0, 0.0, 24.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.yourEmailControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                        StreamBuilder<List<SettingsRecord>>(
                          stream: querySettingsRecord(
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
                            List<SettingsRecord> wrapSettingsRecordList =
                                snapshot.data!;
                            final wrapSettingsRecord =
                                wrapSettingsRecordList.isNotEmpty
                                    ? wrapSettingsRecordList.first
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
                                        _model.userIP1 =
                                            await actions.getUserIPaddress();
                                        _model.userSession1 =
                                            await actions.getUserSessionID(
                                          currentUserUid,
                                        );
                                        if (_model.yourEmailController.text ==
                                            wrapSettingsRecord
                                                ?.masterPassword) {
                                          if (widget.batchesStatus ==
                                              'Ongoing') {
                                            await widget.batchesRef!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'courseRef':
                                                      FieldValue.arrayUnion(
                                                          [widget.courseRef]),
                                                  'archiveCourseRef':
                                                      FieldValue.arrayRemove(
                                                          [widget.courseRef]),
                                                },
                                              ),
                                            });
                                          } else {
                                            await widget.batchesRef!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'courseRef':
                                                      FieldValue.arrayRemove(
                                                          [widget.courseRef]),
                                                  'archiveCourseRef':
                                                      FieldValue.arrayUnion(
                                                          [widget.courseRef]),
                                                },
                                              ),
                                            });
                                          }

                                          if (containerCourseRecord
                                                  .batchesRef ==
                                              widget.batchesRef?.reference) {
                                            await containerCourseRecord
                                                .reference
                                                .update(createCourseRecordData(
                                              status: widget.batchesStatus ==
                                                      'Ongoing'
                                                  ? 'Publish'
                                                  : 'Draft',
                                              batchesRef: widget
                                                          .batchesStatus ==
                                                      'Ongoing'
                                                  ? widget.batchesRef?.reference
                                                  : null,
                                            ));
                                          }
                                          _model.coursRslt1 = await CourseRecord
                                              .getDocumentOnce(
                                                  widget.courseRef!);

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
                                              eventType: widget.batchesStatus ==
                                                      'Archived'
                                                  ? 'Archived'
                                                  : 'Unarchive',
                                              object: 'Batch',
                                              eventId: widget.courseRef?.id,
                                              eventTitle:
                                                  _model.coursRslt1?.name,
                                              userSessionID:
                                                  _model.userSession1,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'eventStatus': [
                                                  widget.batchesStatus ==
                                                          'Archived'
                                                      ? 'Archive'
                                                      : 'Unarchive'
                                                ],
                                              },
                                            ),
                                          });

                                          context.pushNamed(
                                            'batchCourseListProces',
                                            queryParameters: {
                                              'courseRef': serializeParam(
                                                widget.courseRef,
                                                ParamType.DocumentReference,
                                              ),
                                              'batchRef': serializeParam(
                                                widget.batchesRef?.reference,
                                                ParamType.DocumentReference,
                                              ),
                                              'batchesStatus': serializeParam(
                                                widget.batchesStatus,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Please check your password',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                          Navigator.pop(context);

                                          context.pushNamed(
                                            'BatchList',
                                            queryParameters: {
                                              'batchRef': serializeParam(
                                                widget.batchesRef,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'batchRef': widget.batchesRef,
                                            },
                                          );
                                        }

                                        setState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.addButtonModel,
                                        updateCallback: () => setState(() {}),
                                        child: AddButtonWidget(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'aiy3e9yo' /* Save */,
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
      },
    );
  }
}
