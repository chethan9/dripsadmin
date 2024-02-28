import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/marketing/s_m_smarketing/bulk_sms_processing/bulk_sms_processing_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bulk_sms_confirmation_model.dart';
export 'bulk_sms_confirmation_model.dart';

class BulkSmsConfirmationWidget extends StatefulWidget {
  const BulkSmsConfirmationWidget({
    super.key,
    required this.message,
    required this.phoneNumberList,
    required this.userRefList,
    required this.navigation,
  });

  final String? message;
  final List<String>? phoneNumberList;
  final List<DocumentReference>? userRefList;
  final String? navigation;

  @override
  State<BulkSmsConfirmationWidget> createState() =>
      _BulkSmsConfirmationWidgetState();
}

class _BulkSmsConfirmationWidgetState extends State<BulkSmsConfirmationWidget> {
  late BulkSmsConfirmationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BulkSmsConfirmationModel());

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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'cyucm5yf' /* Do you really want to send the... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var smsMarketRecordReference =
                                    SmsMarketRecord.collection.doc();
                                await smsMarketRecordReference.set({
                                  ...createSmsMarketRecordData(
                                    message: widget.message,
                                    status: 'Pending',
                                    createdAt: getCurrentTimestamp,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'userPhoneList': widget.phoneNumberList,
                                      'userRef': widget.userRefList,
                                    },
                                  ),
                                });
                                _model.presentCreatedSMS =
                                    SmsMarketRecord.getDocumentFromData({
                                  ...createSmsMarketRecordData(
                                    message: widget.message,
                                    status: 'Pending',
                                    createdAt: getCurrentTimestamp,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'userPhoneList': widget.phoneNumberList,
                                      'userRef': widget.userRefList,
                                    },
                                  ),
                                }, smsMarketRecordReference);
                                _model.userIP1 =
                                    await actions.getUserIPaddress();
                                _model.userSession1 =
                                    await actions.getUserSessionID(
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
                                    object: 'SMS',
                                    eventId:
                                        _model.presentCreatedSMS?.reference.id,
                                    eventTitle: widget.message,
                                    userSessionID: _model.userSession1,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'eventStatus': ['Create'],
                                    },
                                  ),
                                });
                                Navigator.pop(context);
                                await showDialog(
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
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.25,
                                          child: BulkSmsProcessingWidget(
                                            message: widget.message!,
                                            phoneNumberList:
                                                widget.phoneNumberList!,
                                            smsBulkRef: _model
                                                .presentCreatedSMS!.reference,
                                            navigation: widget.navigation!,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));

                                setState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.addButtonModel1,
                                updateCallback: () => setState(() {}),
                                child: AddButtonWidget(
                                  text: FFLocalizations.of(context).getText(
                                    '2vquuotp' /* Yes */,
                                  ),
                                  icon: Icon(
                                    Icons.thumb_up_outlined,
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: wrapWithModel(
                              model: _model.addButtonModel2,
                              updateCallback: () => setState(() {}),
                              child: AddButtonWidget(
                                text: FFLocalizations.of(context).getText(
                                  'ehnatisr' /* No */,
                                ),
                                icon: Icon(
                                  Icons.thumb_down_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 16.0,
                                ),
                                bg1: Color(0xFFAC0900),
                                bg2: Color(0xFFEB0000),
                                height: 45,
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
            ),
          ),
        ),
      ),
    );
  }
}
