import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'sign_i_n_model.dart';
export 'sign_i_n_model.dart';

class SignINWidget extends StatefulWidget {
  const SignINWidget({super.key});

  @override
  State<SignINWidget> createState() => _SignINWidgetState();
}

class _SignINWidgetState extends State<SignINWidget> {
  late SignINModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignINModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

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
        title: 'SignIN',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/Drip-logo-2.png',
                                                      width: 85.0,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(20.0),
                                              child: Container(
                                                width: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 530.0,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.05),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ctc9bsyd' /* Welcome Back! */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'nnvj8chv' /* Use the form below to access y... */,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
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
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      24.0,
                                                                      0.0,
                                                                      0.0),
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
                                                            onTap: () async {
                                                              GoRouter.of(
                                                                      context)
                                                                  .prepareAuthEvent();
                                                              final user =
                                                                  await authManager
                                                                      .signInWithGoogle(
                                                                          context);
                                                              if (user ==
                                                                  null) {
                                                                return;
                                                              }
                                                              if (valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.userRole,
                                                                      '') ==
                                                                  'Admin') {
                                                                FFAppState()
                                                                        .presentUserRole =
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        '');
                                                                FFAppState()
                                                                        .currentUserRole =
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        '');

                                                                context
                                                                    .pushNamedAuth(
                                                                  'Home',
                                                                  context
                                                                      .mounted,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                if (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        '') ==
                                                                    'Instructor') {
                                                                  if (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.instuctorStatus,
                                                                          '') ==
                                                                      'Approved') {
                                                                    FFAppState()
                                                                            .presentUserRole =
                                                                        valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');
                                                                    FFAppState()
                                                                            .currentUserRole =
                                                                        valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');

                                                                    context
                                                                        .pushNamedAuth(
                                                                      'Course',
                                                                      context
                                                                          .mounted,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          valueOrDefault(
                                                                              currentUserDocument?.instructorRejectReason,
                                                                              ''),
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
                                                                    GoRouter.of(
                                                                            context)
                                                                        .prepareAuthEvent();
                                                                    await authManager
                                                                        .signOut();
                                                                    GoRouter.of(
                                                                            context)
                                                                        .clearRedirectLocation();
                                                                  }
                                                                } else {
                                                                  GoRouter.of(
                                                                          context)
                                                                      .prepareAuthEvent();
                                                                  await authManager
                                                                      .signOut();
                                                                  GoRouter.of(
                                                                          context)
                                                                      .clearRedirectLocation();
                                                                }
                                                              }
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    if (_model
                                                                            .googleStatus ==
                                                                        'Hide')
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/google.png',
                                                                          width:
                                                                              30.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    if (_model
                                                                            .googleStatus ==
                                                                        'Hide')
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'eb4ma6kb' /* Login with Google */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    if (_model
                                                                            .googleStatus !=
                                                                        'Hide')
                                                                      Lottie
                                                                          .asset(
                                                                        'assets/lottie_animations/animation_llwdqob6.json',
                                                                        width:
                                                                            55.0,
                                                                        height:
                                                                            55.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        animate:
                                                                            true,
                                                                      ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .emailAddressController,
                                                                  focusNode: _model
                                                                      .emailAddressFocusNode,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'c2y8mjdi' /* Email Address */,
                                                                    ),
                                                                    labelStyle:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmall,
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                  validator: _model
                                                                      .emailAddressControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .passwordController,
                                                                focusNode: _model
                                                                    .passwordFocusNode,
                                                                onFieldSubmitted:
                                                                    (_) async {
                                                                  GoRouter.of(
                                                                          context)
                                                                      .prepareAuthEvent();

                                                                  final user =
                                                                      await authManager
                                                                          .signInWithEmail(
                                                                    context,
                                                                    _model
                                                                        .emailAddressController
                                                                        .text,
                                                                    _model
                                                                        .passwordController
                                                                        .text,
                                                                  );
                                                                  if (user ==
                                                                      null) {
                                                                    return;
                                                                  }

                                                                  _model.userIP1Copy =
                                                                      await actions
                                                                          .getUserIPaddress();
                                                                  _model.userSession1Copy =
                                                                      await actions
                                                                          .getUserSessionID(
                                                                    currentUserUid,
                                                                  );
                                                                  if (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.userRole,
                                                                          '') ==
                                                                      'Admin') {
                                                                    FFAppState()
                                                                            .presentUserRole =
                                                                        valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');
                                                                    FFAppState()
                                                                            .currentUserRole =
                                                                        valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');

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
                                                                            currentUserDocument?.userRole,
                                                                            ''),
                                                                        createdAt:
                                                                            getCurrentTimestamp,
                                                                        eventType:
                                                                            'Created',
                                                                        object:
                                                                            'Signin',
                                                                        eventId:
                                                                            currentUserReference?.id,
                                                                        eventTitle: _model
                                                                            .emailAddressController
                                                                            .text,
                                                                        userSessionID:
                                                                            _model.userSession1,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'eventStatus':
                                                                              [
                                                                            'Create'
                                                                          ],
                                                                        },
                                                                      ),
                                                                    });

                                                                    context
                                                                        .pushNamedAuth(
                                                                      'Home',
                                                                      context
                                                                          .mounted,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  } else {
                                                                    if (valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '') ==
                                                                        'Instructor') {
                                                                      if (valueOrDefault(
                                                                              currentUserDocument?.instuctorStatus,
                                                                              '') ==
                                                                          'Approved') {
                                                                        FFAppState().presentUserRole = valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');
                                                                        FFAppState().currentUserRole = valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');

                                                                        await ActivityLogRecord
                                                                            .collection
                                                                            .doc()
                                                                            .set({
                                                                          ...createActivityLogRecordData(
                                                                            userRef:
                                                                                currentUserReference,
                                                                            userIP:
                                                                                _model.userIP1,
                                                                            userRole:
                                                                                valueOrDefault(currentUserDocument?.userRole, ''),
                                                                            createdAt:
                                                                                getCurrentTimestamp,
                                                                            eventType:
                                                                                'Created',
                                                                            object:
                                                                                'Signin',
                                                                            eventId:
                                                                                currentUserReference?.id,
                                                                            eventTitle:
                                                                                _model.emailAddressController.text,
                                                                            userSessionID:
                                                                                _model.userSession1,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'eventStatus': [
                                                                                'Create'
                                                                              ],
                                                                            },
                                                                          ),
                                                                        });

                                                                        context
                                                                            .pushNamedAuth(
                                                                          'Course',
                                                                          context
                                                                              .mounted,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
                                                                            ),
                                                                          },
                                                                        );
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              valueOrDefault(currentUserDocument?.instructorRejectReason, ''),
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
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
                                                                            userRole:
                                                                                valueOrDefault(currentUserDocument?.userRole, ''),
                                                                            createdAt:
                                                                                getCurrentTimestamp,
                                                                            eventType:
                                                                                'Created',
                                                                            object:
                                                                                'Sign out',
                                                                            eventId:
                                                                                currentUserReference?.id,
                                                                            eventTitle:
                                                                                _model.emailAddressController.text,
                                                                            userSessionID:
                                                                                _model.userSession1,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'eventStatus': [
                                                                                'Create'
                                                                              ],
                                                                            },
                                                                          ),
                                                                        });
                                                                        GoRouter.of(context)
                                                                            .prepareAuthEvent();
                                                                        await authManager
                                                                            .signOut();
                                                                        GoRouter.of(context)
                                                                            .clearRedirectLocation();
                                                                      }
                                                                    } else {
                                                                      GoRouter.of(
                                                                              context)
                                                                          .prepareAuthEvent();
                                                                      await authManager
                                                                          .signOut();
                                                                      GoRouter.of(
                                                                              context)
                                                                          .clearRedirectLocation();

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
                                                                              currentUserDocument?.userRole,
                                                                              ''),
                                                                          createdAt:
                                                                              getCurrentTimestamp,
                                                                          eventType:
                                                                              'Created',
                                                                          object:
                                                                              'Sign out',
                                                                          eventId:
                                                                              currentUserReference?.id,
                                                                          eventTitle: _model
                                                                              .emailAddressController
                                                                              .text,
                                                                          userSessionID:
                                                                              _model.userSession1,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'eventStatus':
                                                                                [
                                                                              'Create'
                                                                            ],
                                                                          },
                                                                        ),
                                                                      });
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'We are sorry, but you don\'t have access to the panel.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                    }
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .go,
                                                                obscureText: !_model
                                                                    .passwordVisibility,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'zxaj4y60' /* Password */,
                                                                  ),
                                                                  labelStyle: FlutterFlowTheme.of(
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
                                                                          .lineColor,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          24.0,
                                                                          24.0),
                                                                  suffixIcon:
                                                                      InkWell(
                                                                    onTap: () =>
                                                                        setState(
                                                                      () => _model
                                                                              .passwordVisibility =
                                                                          !_model
                                                                              .passwordVisibility,
                                                                    ),
                                                                    focusNode: FocusNode(
                                                                        skipTraversal:
                                                                            true),
                                                                    child: Icon(
                                                                      _model.passwordVisibility
                                                                          ? Icons
                                                                              .visibility_outlined
                                                                          : Icons
                                                                              .visibility_off_outlined,
                                                                      color: Color(
                                                                          0xFF57636C),
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                validator: _model
                                                                    .passwordControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                'ForgotPASSWORD');
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '3i914x1t' /* Forgot Password */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 170.0,
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0x00FFFFFF),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodySmallFamily),
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              GoRouter.of(
                                                                      context)
                                                                  .prepareAuthEvent();

                                                              final user =
                                                                  await authManager
                                                                      .signInWithEmail(
                                                                context,
                                                                _model
                                                                    .emailAddressController
                                                                    .text,
                                                                _model
                                                                    .passwordController
                                                                    .text,
                                                              );
                                                              if (user ==
                                                                  null) {
                                                                return;
                                                              }

                                                              _model.userIP1 =
                                                                  await actions
                                                                      .getUserIPaddress();
                                                              _model.userSession1 =
                                                                  await actions
                                                                      .getUserSessionID(
                                                                currentUserUid,
                                                              );
                                                              if (valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.userRole,
                                                                      '') ==
                                                                  'Admin') {
                                                                FFAppState()
                                                                        .presentUserRole =
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        '');
                                                                FFAppState()
                                                                        .currentUserRole =
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        '');

                                                                await ActivityLogRecord
                                                                    .collection
                                                                    .doc()
                                                                    .set({
                                                                  ...createActivityLogRecordData(
                                                                    userRef:
                                                                        currentUserReference,
                                                                    userIP: _model
                                                                        .userIP1,
                                                                    userRole: valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        ''),
                                                                    createdAt:
                                                                        getCurrentTimestamp,
                                                                    eventType:
                                                                        'Created',
                                                                    object:
                                                                        'Signin',
                                                                    eventId:
                                                                        currentUserReference
                                                                            ?.id,
                                                                    eventTitle: _model
                                                                        .emailAddressController
                                                                        .text,
                                                                    userSessionID:
                                                                        _model
                                                                            .userSession1,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'eventStatus':
                                                                          [
                                                                        'Create'
                                                                      ],
                                                                    },
                                                                  ),
                                                                });

                                                                context
                                                                    .pushNamedAuth(
                                                                  'Home',
                                                                  context
                                                                      .mounted,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                if (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.userRole,
                                                                        '') ==
                                                                    'Instructor') {
                                                                  if (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.instuctorStatus,
                                                                          '') ==
                                                                      'Approved') {
                                                                    FFAppState()
                                                                            .presentUserRole =
                                                                        valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');
                                                                    FFAppState()
                                                                            .currentUserRole =
                                                                        valueOrDefault(
                                                                            currentUserDocument?.userRole,
                                                                            '');

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
                                                                            currentUserDocument?.userRole,
                                                                            ''),
                                                                        createdAt:
                                                                            getCurrentTimestamp,
                                                                        eventType:
                                                                            'Created',
                                                                        object:
                                                                            'Signin',
                                                                        eventId:
                                                                            currentUserReference?.id,
                                                                        eventTitle: _model
                                                                            .emailAddressController
                                                                            .text,
                                                                        userSessionID:
                                                                            _model.userSession1,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'eventStatus':
                                                                              [
                                                                            'Create'
                                                                          ],
                                                                        },
                                                                      ),
                                                                    });

                                                                    context
                                                                        .pushNamedAuth(
                                                                      'Course',
                                                                      context
                                                                          .mounted,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          valueOrDefault(
                                                                              currentUserDocument?.instructorRejectReason,
                                                                              ''),
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
                                                                            currentUserDocument?.userRole,
                                                                            ''),
                                                                        createdAt:
                                                                            getCurrentTimestamp,
                                                                        eventType:
                                                                            'Created',
                                                                        object:
                                                                            'Sign out',
                                                                        eventId:
                                                                            currentUserReference?.id,
                                                                        eventTitle: _model
                                                                            .emailAddressController
                                                                            .text,
                                                                        userSessionID:
                                                                            _model.userSession1,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'eventStatus':
                                                                              [
                                                                            'Create'
                                                                          ],
                                                                        },
                                                                      ),
                                                                    });
                                                                    GoRouter.of(
                                                                            context)
                                                                        .prepareAuthEvent();
                                                                    await authManager
                                                                        .signOut();
                                                                    GoRouter.of(
                                                                            context)
                                                                        .clearRedirectLocation();
                                                                  }
                                                                } else {
                                                                  GoRouter.of(
                                                                          context)
                                                                      .prepareAuthEvent();
                                                                  await authManager
                                                                      .signOut();
                                                                  GoRouter.of(
                                                                          context)
                                                                      .clearRedirectLocation();

                                                                  await ActivityLogRecord
                                                                      .collection
                                                                      .doc()
                                                                      .set({
                                                                    ...createActivityLogRecordData(
                                                                      userRef:
                                                                          currentUserReference,
                                                                      userIP: _model
                                                                          .userIP1,
                                                                      userRole: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.userRole,
                                                                          ''),
                                                                      createdAt:
                                                                          getCurrentTimestamp,
                                                                      eventType:
                                                                          'Created',
                                                                      object:
                                                                          'Sign out',
                                                                      eventId:
                                                                          currentUserReference
                                                                              ?.id,
                                                                      eventTitle: _model
                                                                          .emailAddressController
                                                                          .text,
                                                                      userSessionID:
                                                                          _model
                                                                              .userSession1,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'eventStatus':
                                                                            [
                                                                          'Create'
                                                                        ],
                                                                      },
                                                                    ),
                                                                  });
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'We are sorry, but you don\'t have access to the panel.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                }
                                                              }

                                                              setState(() {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '35hmufo8' /* Login */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 1000.0,
                                                              height: 50.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color:
                                                                  Colors.black,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Outfit'),
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/Bg-header.jpg',
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(-0.5, 0.0),
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
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.62,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  child: custom_widgets.Imageslideshow(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.62,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
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
                ],
              ),
            ),
          ),
        ));
  }
}
