import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_poll_answer_model.dart';
export 'create_poll_answer_model.dart';

class CreatePollAnswerWidget extends StatefulWidget {
  const CreatePollAnswerWidget({
    super.key,
    required this.pollRef,
  });

  final DocumentReference? pollRef;

  @override
  State<CreatePollAnswerWidget> createState() => _CreatePollAnswerWidgetState();
}

class _CreatePollAnswerWidgetState extends State<CreatePollAnswerWidget> {
  late CreatePollAnswerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatePollAnswerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await currentUserReference!.update(createUsersRecordData(
        courseLevel: createInstructorCourseLevelStruct(delete: true),
      ));
    });

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

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
        width: MediaQuery.sizeOf(context).width * 0.2,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '30lfuqes' /* Create Poll Answer */,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: TextFormField(
                    controller: _model.nameController,
                    focusNode: _model.nameFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        '0tc3huy4' /* Answer */,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodySmall,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
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
                        _model.nameControllerValidator.asValidator(context),
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
                      var pollAnswerRecordReference =
                          PollAnswerRecord.collection.doc();
                      await pollAnswerRecordReference
                          .set(createPollAnswerRecordData(
                        pollRef: widget.pollRef,
                        answer: _model.nameController.text,
                      ));
                      _model.pollanswerResult1 =
                          PollAnswerRecord.getDocumentFromData(
                              createPollAnswerRecordData(
                                pollRef: widget.pollRef,
                                answer: _model.nameController.text,
                              ),
                              pollAnswerRecordReference);
                      _model.userIP1 = await actions.getUserIPaddress();
                      _model.userSession1 = await actions.getUserSessionID(
                        currentUserUid,
                      );

                      await ActivityLogRecord.collection.doc().set({
                        ...createActivityLogRecordData(
                          userRef: currentUserReference,
                          userIP: _model.userIP1,
                          userRole:
                              valueOrDefault(currentUserDocument?.userRole, ''),
                          createdAt: getCurrentTimestamp,
                          eventType: 'Created',
                          object: 'Poll Answer',
                          eventId: _model.pollanswerResult1?.reference.id,
                          eventTitle: _model.nameController.text,
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
                            'Poll Answer Added Successfuly',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );

                      setState(() {});
                    },
                    child: wrapWithModel(
                      model: _model.addButtonModel,
                      updateCallback: () => setState(() {}),
                      child: AddButtonWidget(
                        text: FFLocalizations.of(context).getText(
                          'maleye80' /* Save */,
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
    );
  }
}
