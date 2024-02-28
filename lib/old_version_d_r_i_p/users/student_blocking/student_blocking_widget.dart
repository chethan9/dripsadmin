import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'student_blocking_model.dart';
export 'student_blocking_model.dart';

class StudentBlockingWidget extends StatefulWidget {
  const StudentBlockingWidget({
    super.key,
    required this.userRef,
    required this.status,
    this.userStatus,
  });

  final DocumentReference? userRef;
  final String? status;
  final String? userStatus;

  @override
  State<StudentBlockingWidget> createState() => _StudentBlockingWidgetState();
}

class _StudentBlockingWidgetState extends State<StudentBlockingWidget> {
  late StudentBlockingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentBlockingModel());

    _model.reasonController ??= TextEditingController();
    _model.reasonFocusNode ??= FocusNode();

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
        width: MediaQuery.sizeOf(context).width * 0.3,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.reasonController,
                      focusNode: _model.reasonFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          '17jvd240' /* Reason */,
                        ),
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
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 32.0, 20.0, 12.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.multiline,
                      validator:
                          _model.reasonControllerValidator.asValidator(context),
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
                        _model.userRslt1 =
                            await UsersRecord.getDocumentOnce(widget.userRef!);
                        if (widget.status == '') {
                          await widget.userRef!.update(createUsersRecordData(
                            blockReason: _model.reasonController.text,
                            status: widget.userStatus,
                          ));
                        } else {
                          await widget.userRef!.update(createUsersRecordData(
                            instructorRejectReason:
                                _model.reasonController.text,
                            userRole: 'Student',
                            instuctorStatus: widget.userStatus,
                          ));
                        }

                        await MailRecord.collection
                            .doc()
                            .set(createMailRecordData(
                              to: _model.userRslt1?.email,
                              template: createTemplateMainStruct(
                                data: createTemplateMessagePartStruct(
                                  userName: _model.userRslt1?.displayName,
                                  bio: _model.reasonController.text,
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                                name: widget.status == ''
                                    ? 'UserBlock'
                                    : 'InstrctorBlock',
                                clearUnsetFields: false,
                                create: true,
                              ),
                              createdAt: getCurrentTimestamp,
                            ));
                        Navigator.pop(context);

                        setState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.addButtonModel,
                        updateCallback: () => setState(() {}),
                        child: AddButtonWidget(
                          text: FFLocalizations.of(context).getText(
                            '2myvfr78' /* Save */,
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
