import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/users/student_blocking/student_blocking_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'student_user_role_aprroved_reject_drop_down_model.dart';
export 'student_user_role_aprroved_reject_drop_down_model.dart';

class StudentUserRoleAprrovedRejectDropDownWidget extends StatefulWidget {
  const StudentUserRoleAprrovedRejectDropDownWidget({
    super.key,
    this.userRef,
  });

  final DocumentReference? userRef;

  @override
  State<StudentUserRoleAprrovedRejectDropDownWidget> createState() =>
      _StudentUserRoleAprrovedRejectDropDownWidgetState();
}

class _StudentUserRoleAprrovedRejectDropDownWidgetState
    extends State<StudentUserRoleAprrovedRejectDropDownWidget> {
  late StudentUserRoleAprrovedRejectDropDownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => StudentUserRoleAprrovedRejectDropDownModel());

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

    return Builder(
      builder: (context) => StreamBuilder<UsersRecord>(
        stream: UsersRecord.getDocument(widget.userRef!),
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
          final dropDownUsersRecord = snapshot.data!;
          return FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(
              _model.dropDownValue ??= dropDownUsersRecord.status == 'Approved'
                  ? 'Unblock'
                  : 'Block',
            ),
            options: [
              FFLocalizations.of(context).getText(
                '0b70qcn5' /* Unblock */,
              ),
              FFLocalizations.of(context).getText(
                'mg7yayuc' /* Block */,
              )
            ],
            onChanged: (val) async {
              setState(() => _model.dropDownValue = val);
              await dropDownUsersRecord.reference.update(createUsersRecordData(
                status: _model.dropDownValue == 'Unblock'
                    ? 'Approved'
                    : _model.dropDownValue,
              ));
              if (_model.dropDownValue == 'Block') {
                await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: WebViewAware(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: StudentBlockingWidget(
                            userRef: widget.userRef!,
                            status: '',
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              }
            },
            width: 120.0,
            height: 50.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium,
            hintText: FFLocalizations.of(context).getText(
              '7hx2tnaw' /* Please select... */,
            ),
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            elevation: 2.0,
            borderColor: Colors.transparent,
            borderWidth: 0.0,
            borderRadius: 0.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
            hidesUnderline: true,
            isSearchable: false,
            isMultiSelect: false,
          );
        },
      ),
    );
  }
}
