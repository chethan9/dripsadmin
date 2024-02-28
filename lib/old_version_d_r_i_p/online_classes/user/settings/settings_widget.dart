import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/drip/member/add_member/add_member_widget.dart';
import '/old_version_d_r_i_p/drip/member/edit_member/edit_member_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

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
    });

    _model.yourNameFocusNode1 ??= FocusNode();

    _model.yourNameFocusNode2 ??= FocusNode();

    _model.yourNameFocusNode3 ??= FocusNode();

    _model.yourNameFocusNode4 ??= FocusNode();

    _model.yourNameFocusNode5 ??= FocusNode();

    _model.yourNameFocusNode6 ??= FocusNode();

    _model.yourNameFocusNode7 ??= FocusNode();

    _model.yourNameFocusNode8 ??= FocusNode();

    _model.yourNameFocusNode9 ??= FocusNode();

    _model.emailRecipientController ??= TextEditingController();
    _model.emailRecipientFocusNode ??= FocusNode();

    _model.yourNameFocusNode10 ??= FocusNode();

    _model.yourNameFocusNode11 ??= FocusNode();

    _model.yourNameFocusNode12 ??= FocusNode();

    _model.yourNameFocusNode13 ??= FocusNode();

    _model.yourNameFocusNode14 ??= FocusNode();

    _model.yourNameController15 ??= TextEditingController();
    _model.yourNameFocusNode15 ??= FocusNode();

    _model.yourNameController16 ??= TextEditingController();
    _model.yourNameFocusNode16 ??= FocusNode();

    _model.haTitleFocusNode ??= FocusNode();

    _model.haSubFocusNode ??= FocusNode();

    _model.haBioFocusNode ??= FocusNode();

    _model.hsTitleFocusNode ??= FocusNode();

    _model.hsSubtitleFocusNode ??= FocusNode();

    _model.hsBioFocusNode ??= FocusNode();

    _model.yourNameFocusNode17 ??= FocusNode();

    _model.yourNameFocusNode18 ??= FocusNode();

    _model.yourNameFocusNode19 ??= FocusNode();

    _model.aTitleFocusNode ??= FocusNode();

    _model.aSubtitleFocusNode ??= FocusNode();

    _model.aBioFocusNode ??= FocusNode();

    _model.inputController1 ??=
        TextEditingController(text: currentUserDocument?.zoom?.zoomEmail);
    _model.inputFocusNode1 ??= FocusNode();

    _model.inputController2 ??=
        TextEditingController(text: currentUserDocument?.zoom?.zoomAPIkey);
    _model.inputFocusNode2 ??= FocusNode();

    _model.inputController3 ??=
        TextEditingController(text: currentUserDocument?.zoom?.zoomAPIsecret);
    _model.inputFocusNode3 ??= FocusNode();

    _model.inputFocusNode4 ??= FocusNode();

    _model.yourTeamFocusNode ??= FocusNode();

    _model.yourTeamSubtitleFocusNode ??= FocusNode();

    _model.yourTeamBioFocusNode ??= FocusNode();

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
        title: 'Settings',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
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
                                  colorBgTwo: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  colorBgThree: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  colorBgFour: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textOne: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  textTwo: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  textThree: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  textFour:
                                      FlutterFlowTheme.of(context).primaryText,
                                  colorBgFive: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textFive: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  colorBgSix: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  colorBgSeven: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  colorBgEleven: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  colorBgTwelve: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  expand: false,
                                  colorBgPrimarydropdwon3:
                                      FlutterFlowTheme.of(context).accent4,
                                ),
                              ),
                            Expanded(
                              child: StreamBuilder<List<SettingsRecord>>(
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0x00DF473F),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<SettingsRecord>
                                      containerSettingsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final containerSettingsRecord =
                                      containerSettingsRecordList.isNotEmpty
                                          ? containerSettingsRecordList.first
                                          : null;
                                  return Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Container(
                                              width: double.infinity,
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: Row(
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
                                                                  16.0,
                                                                  26.0,
                                                                  0.0,
                                                                  22.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'co5gahkx' /* Settings */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.9,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
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
                                                              setState(() {
                                                                _model.navName =
                                                                    'General';
                                                                _model.mainSubmenuColor =
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground;
                                                                _model.submenuColor =
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground;
                                                              });
                                                            },
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.navName ==
                                                                          'General'
                                                                      ? _model
                                                                          .mainSubmenuColor
                                                                      : _model
                                                                          .submenuColor,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
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
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AlignedTooltip(
                                                                      content: Padding(
                                                                          padding: EdgeInsets.all(6.0),
                                                                          child: Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ilmqu3yi' /* General */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                  fontSize: 12.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                ),
                                                                          )),
                                                                      offset:
                                                                          4.0,
                                                                      preferredDirection:
                                                                          AxisDirection
                                                                              .down,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          4.0,
                                                                      tailBaseWidth:
                                                                          24.0,
                                                                      tailLength:
                                                                          12.0,
                                                                      waitDuration:
                                                                          Duration(
                                                                              milliseconds: 100),
                                                                      showDuration:
                                                                          Duration(
                                                                              milliseconds: 1500),
                                                                      triggerMode:
                                                                          TooltipTriggerMode
                                                                              .tap,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).accent2,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'rbgdcna3' /* General */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
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
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Course';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Course'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'bqlahog1' /* Course */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .class_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '45p7axcb' /* Course */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'OnBoard';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'OnBoard'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'bd0fid11' /* Onboard */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .person_outline,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '8xuhisgh' /* Onboard */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Home';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Home'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'o7dy7u2t' /* Home */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .home_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '3tvsv4tc' /* Home */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'About';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'About'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '7n9kbjun' /* Home */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .info_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'mqo4qw7g' /* About */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Zoom';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Zoom'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'r7m3orws' /* Zoom */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .video_settings,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'ov8smg77' /* Zoom */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Terms';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Terms'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'a6i8k9h2' /* Terms & Conditions */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .notes_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'sl2dx4se' /* Terms & Conditions */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Bug';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Bug'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'iy79gytb' /* Bug Report */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .bug_report_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'zh4xyr7l' /* Bug Report */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Team';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Team'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'n3qk164s' /* Team */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .supervised_user_circle_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '7aryt2ia' /* Team */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              _model.navName =
                                                                  'Partners';
                                                              _model.mainSubmenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                              _model.submenuColor =
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground;
                                                            });
                                                          },
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: _model
                                                                          .navName ==
                                                                      'Partners'
                                                                  ? _model
                                                                      .mainSubmenuColor
                                                                  : _model
                                                                      .submenuColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  AlignedTooltip(
                                                                    content: Padding(
                                                                        padding: EdgeInsets.all(6.0),
                                                                        child: Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'yn68ebys' /* Partners */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                        )),
                                                                    offset: 4.0,
                                                                    preferredDirection:
                                                                        AxisDirection
                                                                            .down,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    elevation:
                                                                        4.0,
                                                                    tailBaseWidth:
                                                                        24.0,
                                                                    tailLength:
                                                                        12.0,
                                                                    waitDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                100),
                                                                    showDuration:
                                                                        Duration(
                                                                            milliseconds:
                                                                                1500),
                                                                    triggerMode:
                                                                        TooltipTriggerMode
                                                                            .tap,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .people_outline_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'acvle6me' /* Partners */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
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
                                                ],
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (valueOrDefault<bool>(
                                                      _model.navName ==
                                                          'General',
                                                      true,
                                                    ))
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          32.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'xvyi0zpl' /* General Settings */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium,
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    width: 50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.all(15.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  containerSettingsRecord?.logo,
                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                                                                ),
                                                                                width: 100.0,
                                                                                height: 85.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsets.all(10.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ze7lsmma' /* Upload / Change Logo */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleSmall,
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                            context: context,
                                                                                            allowPhoto: true,
                                                                                          );
                                                                                          if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                            setState(() => _model.isDataUploading1 = true);
                                                                                            var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                            var downloadUrls = <String>[];
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

                                                                                              downloadUrls = (await Future.wait(
                                                                                                selectedMedia.map(
                                                                                                  (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                                ),
                                                                                              ))
                                                                                                  .where((u) => u != null)
                                                                                                  .map((u) => u!)
                                                                                                  .toList();
                                                                                            } finally {
                                                                                              _model.isDataUploading1 = false;
                                                                                            }
                                                                                            if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                              setState(() {
                                                                                                _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                                _model.uploadedFileUrl1 = downloadUrls.first;
                                                                                              });
                                                                                            } else {
                                                                                              setState(() {});
                                                                                              return;
                                                                                            }
                                                                                          }

                                                                                          await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                            logo: _model.uploadedFileUrl1,
                                                                                          ));
                                                                                        },
                                                                                        text: FFLocalizations.of(context).getText(
                                                                                          '8j38p5i6' /*  */,
                                                                                        ),
                                                                                        icon: Icon(
                                                                                          Icons.upload_outlined,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          height: 50.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: Colors.black,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                color: Colors.white,
                                                                                                fontSize: 16.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                              ),
                                                                                          elevation: 2.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                            logo: 'https://lh3.googleusercontent.com/chat_attachment/AP-RMTuoVATg7Mp6q8lO-XOsTdBQeJvUkAlMpkVvpdV1HEy8LEshiPztLU6hdds7RrUx93O5MgM_q6wX6SgZ1EfpZMHdKAfqN6idOKS6qK6nxx5SnCzgrtH4MuIQvHarTPLjBxjlIskqu4dRwXKlEcAxyFBWQf0LFszL7tbSooPXNHw5CAGFA35MDIBsbhu5aeGwBxeQKdCG2be0JHgOZ7zu0Z8OA_Ac-qLslJpoc5FcozpKG5aQxTmyBbBQT17AAKDhriR_ydbmgwKa3UPGnKCgNgsR3xHcVXKJPjFKF7pF68Kr2ghqvo-fepIznPqDNA=w512',
                                                                                          ));
                                                                                        },
                                                                                        text: FFLocalizations.of(context).getText(
                                                                                          'z7esn8ef' /*  */,
                                                                                        ),
                                                                                        icon: Icon(
                                                                                          Icons.delete_outline,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          height: 50.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: Color(0xFFFF0000),
                                                                                          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                color: Colors.white,
                                                                                                fontSize: 16.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                              ),
                                                                                          elevation: 2.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 100.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    thickness:
                                                                        3.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    width: 50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.all(15.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  containerSettingsRecord?.faviicon,
                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                                                                ),
                                                                                width: 100.0,
                                                                                height: 85.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsets.all(10.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'hwwngtkk' /* Upload / Change Favicon */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleSmall,
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                            context: context,
                                                                                            allowPhoto: true,
                                                                                          );
                                                                                          if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                            setState(() => _model.isDataUploading2 = true);
                                                                                            var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                            var downloadUrls = <String>[];
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

                                                                                              downloadUrls = (await Future.wait(
                                                                                                selectedMedia.map(
                                                                                                  (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                                ),
                                                                                              ))
                                                                                                  .where((u) => u != null)
                                                                                                  .map((u) => u!)
                                                                                                  .toList();
                                                                                            } finally {
                                                                                              _model.isDataUploading2 = false;
                                                                                            }
                                                                                            if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                              setState(() {
                                                                                                _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                                                                                                _model.uploadedFileUrl2 = downloadUrls.first;
                                                                                              });
                                                                                            } else {
                                                                                              setState(() {});
                                                                                              return;
                                                                                            }
                                                                                          }

                                                                                          await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                            faviicon: _model.uploadedFileUrl2,
                                                                                          ));
                                                                                        },
                                                                                        text: FFLocalizations.of(context).getText(
                                                                                          'epwc50b8' /*  */,
                                                                                        ),
                                                                                        icon: Icon(
                                                                                          Icons.upload_outlined,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          height: 50.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: Colors.black,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                color: Colors.white,
                                                                                                fontSize: 16.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                              ),
                                                                                          elevation: 2.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                            faviicon: 'https://lh3.googleusercontent.com/chat_attachment/AP-RMTuoVATg7Mp6q8lO-XOsTdBQeJvUkAlMpkVvpdV1HEy8LEshiPztLU6hdds7RrUx93O5MgM_q6wX6SgZ1EfpZMHdKAfqN6idOKS6qK6nxx5SnCzgrtH4MuIQvHarTPLjBxjlIskqu4dRwXKlEcAxyFBWQf0LFszL7tbSooPXNHw5CAGFA35MDIBsbhu5aeGwBxeQKdCG2be0JHgOZ7zu0Z8OA_Ac-qLslJpoc5FcozpKG5aQxTmyBbBQT17AAKDhriR_ydbmgwKa3UPGnKCgNgsR3xHcVXKJPjFKF7pF68Kr2ghqvo-fepIznPqDNA=w512',
                                                                                          ));
                                                                                        },
                                                                                        text: FFLocalizations.of(context).getText(
                                                                                          'yn0lz5nv' /*  */,
                                                                                        ),
                                                                                        icon: Icon(
                                                                                          Icons.delete_outline,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          height: 50.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: Color(0xFFFF0000),
                                                                                          textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                color: Colors.white,
                                                                                                fontSize: 16.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                              ),
                                                                                          elevation: 2.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        8.0,
                                                                        15.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'xktj7wbr' /* Enable Social Login */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium,
                                                                    ),
                                                                    FlutterFlowRadioButton(
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'x2ar58u0' /* Yes */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '0bb98bsm' /* No */,
                                                                        )
                                                                      ].toList(),
                                                                      onChanged:
                                                                          (val) async {
                                                                        setState(
                                                                            () {});
                                                                        await containerSettingsRecord!
                                                                            .reference
                                                                            .update(createSettingsRecordData(
                                                                          socialLog: _model.radioButtonSocialValue == 'No'
                                                                              ? false
                                                                              : true,
                                                                        ));
                                                                      },
                                                                      controller: _model
                                                                          .radioButtonSocialValueController ??= FormFieldController<String>(containerSettingsRecord?.socialLog ==
                                                                              true
                                                                          ? 'Yes'
                                                                          : 'No'),
                                                                      optionHeight:
                                                                          30.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      buttonPosition:
                                                                          RadioButtonPosition
                                                                              .left,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      radioButtonColor:
                                                                          Colors
                                                                              .blue,
                                                                      inactiveRadioButtonColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      toggleable:
                                                                          false,
                                                                      horizontalAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        8.0,
                                                                        15.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '0q2oug6j' /* Enable Phone Login */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium,
                                                                    ),
                                                                    FlutterFlowRadioButton(
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'rqeazoy2' /* Yes */,
                                                                        ),
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'wx2tbpvw' /* No */,
                                                                        )
                                                                      ].toList(),
                                                                      onChanged:
                                                                          (val) async {
                                                                        setState(
                                                                            () {});
                                                                        await containerSettingsRecord!
                                                                            .reference
                                                                            .update(createSettingsRecordData(
                                                                          phoneLog: _model.radioButtonPhoneValue == 'No'
                                                                              ? false
                                                                              : true,
                                                                        ));
                                                                      },
                                                                      controller: _model
                                                                          .radioButtonPhoneValueController ??= FormFieldController<String>(containerSettingsRecord?.phoneLog ==
                                                                              true
                                                                          ? 'Yes'
                                                                          : 'No'),
                                                                      optionHeight:
                                                                          30.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      buttonPosition:
                                                                          RadioButtonPosition
                                                                              .left,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      radioButtonColor:
                                                                          Colors
                                                                              .blue,
                                                                      inactiveRadioButtonColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      toggleable:
                                                                          false,
                                                                      horizontalAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController1 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.address,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode1,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController1',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                address: _model.yourNameController1.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'mr910co7' /* Address */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController1Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController2 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.gmapLink,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode2,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController2',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                gmapLink: _model.yourNameController2.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'xqwym2xb' /* GMap Link */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController2Validator
                                                                            .asValidator(context),
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
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController3 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.email,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode3,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController3',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                email: _model.yourNameController3.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'ohzriw9r' /* Email */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController3Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController4 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.phone,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode4,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController4',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                phone: _model.yourNameController4.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            '17oo7jz1' /* Phone No */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController4Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController5 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.whatsapp,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode5,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController5',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                whatsapp: _model.yourNameController5.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            '8arjdwuq' /* WhatsApp No */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController5Validator
                                                                            .asValidator(context),
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
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController6 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.fbLink,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode6,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController6',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                fbLink: _model.yourNameController6.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'm8ho5xkl' /* Facebook */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController6Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController7 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.instaLink,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode7,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController7',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                instaLink: _model.yourNameController7.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'bmidwz75' /* Instagram */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController7Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.yourNameController8 ??=
                                                                                TextEditingController(
                                                                          text: containerSettingsRecord
                                                                              ?.general
                                                                              ?.inLink,
                                                                        ),
                                                                        focusNode:
                                                                            _model.yourNameFocusNode8,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.yourNameController8',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              general: createGeneralStruct(
                                                                                inLink: _model.yourNameController8.text,
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                        ),
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'fx83orqu' /* LinkedIn */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        maxLines:
                                                                            null,
                                                                        validator: _model
                                                                            .yourNameController8Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        8.0,
                                                                        15.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'loj81k2t' /* SMS Character Limit */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            20.0,
                                                                            5.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller: _model.yourNameController9 ??=
                                                                              TextEditingController(
                                                                            text:
                                                                                valueOrDefault<String>(
                                                                              containerSettingsRecord?.smsTextLimit?.toString(),
                                                                              '0',
                                                                            ),
                                                                          ),
                                                                          focusNode:
                                                                              _model.yourNameFocusNode9,
                                                                          onChanged: (_) =>
                                                                              EasyDebounce.debounce(
                                                                            '_model.yourNameController9',
                                                                            Duration(milliseconds: 2000),
                                                                            () async {
                                                                              await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                smsTextLimit: int.tryParse(_model.yourNameController9.text),
                                                                              ));
                                                                            },
                                                                          ),
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                FFLocalizations.of(context).getText(
                                                                              '3eyidwvj' /* Enter maximum character limit */,
                                                                            ),
                                                                            labelStyle:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                            hintStyle:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                24.0,
                                                                                0.0,
                                                                                24.0),
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          maxLines:
                                                                              null,
                                                                          validator: _model
                                                                              .yourNameController9Validator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        8.0,
                                                                        15.0,
                                                                        8.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'y3sazcdx' /* Email Recipient */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            20.0,
                                                                            5.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.emailRecipientController,
                                                                          focusNode:
                                                                              _model.emailRecipientFocusNode,
                                                                          onChanged: (_) =>
                                                                              EasyDebounce.debounce(
                                                                            '_model.emailRecipientController',
                                                                            Duration(milliseconds: 2000),
                                                                            () async {
                                                                              await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                meetingRequestMailID: _model.emailRecipientController.text,
                                                                              ));
                                                                            },
                                                                          ),
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                FFLocalizations.of(context).getText(
                                                                              '8wjga068' /* Enter email address */,
                                                                            ),
                                                                            labelStyle:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                            hintStyle:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                24.0,
                                                                                0.0,
                                                                                24.0),
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          maxLines:
                                                                              null,
                                                                          validator: _model
                                                                              .emailRecipientControllerValidator
                                                                              .asValidator(context),
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
                                                                          16.0,
                                                                          8.0,
                                                                          32.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'lhon9r4q' /* Enable User Agent */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                        ),
                                                                  ),
                                                                  Switch
                                                                      .adaptive(
                                                                    value: _model
                                                                            .switchValue ??=
                                                                        containerSettingsRecord!
                                                                            .userAgentChecker,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      setState(() =>
                                                                          _model.switchValue =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        await containerSettingsRecord!
                                                                            .reference
                                                                            .update(createSettingsRecordData(
                                                                          userAgentChecker:
                                                                              true,
                                                                        ));
                                                                      } else {
                                                                        await containerSettingsRecord!
                                                                            .reference
                                                                            .update(createSettingsRecordData(
                                                                          userAgentChecker:
                                                                              false,
                                                                        ));
                                                                      }
                                                                    },
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    activeTrackColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .accent1,
                                                                    inactiveTrackColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    inactiveThumbColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'Course')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          32.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'p31z061q' /* Course Settings */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'i0zc19gt' /* Enable Wishlist */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium,
                                                                      ),
                                                                      FlutterFlowRadioButton(
                                                                        options:
                                                                            [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'fr2syyam' /* Yes */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'rue6jswy' /* No */,
                                                                          )
                                                                        ].toList(),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(
                                                                              () {});
                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            wishList: _model.radioButtonWishValue == 'No'
                                                                                ? false
                                                                                : true,
                                                                          ));
                                                                        },
                                                                        controller: _model
                                                                            .radioButtonWishValueController ??= FormFieldController<String>(containerSettingsRecord?.wishList ==
                                                                                true
                                                                            ? 'Yes'
                                                                            : 'No'),
                                                                        optionHeight:
                                                                            30.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                        buttonPosition:
                                                                            RadioButtonPosition.left,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        radioButtonColor:
                                                                            Colors.blue,
                                                                        inactiveRadioButtonColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        toggleable:
                                                                            false,
                                                                        horizontalAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalAlignment:
                                                                            WrapCrossAlignment.start,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'c9a7njli' /* Enable Recommended List */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium,
                                                                      ),
                                                                      FlutterFlowRadioButton(
                                                                        options:
                                                                            [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'cpj3b7eo' /* Yes */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '8gxir9ci' /* No */,
                                                                          )
                                                                        ].toList(),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(
                                                                              () {});
                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            recommendedSection: _model.radioButtonrecomdValue == 'No'
                                                                                ? false
                                                                                : true,
                                                                          ));
                                                                        },
                                                                        controller: _model
                                                                            .radioButtonrecomdValueController ??= FormFieldController<String>(containerSettingsRecord?.recommendedSection ==
                                                                                true
                                                                            ? 'Yes'
                                                                            : 'No'),
                                                                        optionHeight:
                                                                            30.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                        buttonPosition:
                                                                            RadioButtonPosition.left,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        radioButtonColor:
                                                                            Colors.blue,
                                                                        inactiveRadioButtonColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        toggleable:
                                                                            false,
                                                                        horizontalAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalAlignment:
                                                                            WrapCrossAlignment.start,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'OnBoard')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          32.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'uqyticci' /* OnBoard Settings */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium,
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            5.0,
                                                                            20.0,
                                                                            5.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model.yourNameController10 ??=
                                                                              TextEditingController(
                                                                        text: containerSettingsRecord
                                                                            ?.onboard
                                                                            ?.title,
                                                                      ),
                                                                      focusNode:
                                                                          _model
                                                                              .yourNameFocusNode10,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.yourNameController10',
                                                                        Duration(
                                                                            milliseconds:
                                                                                2000),
                                                                        () async {
                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            onboard:
                                                                                createOnBoardStruct(
                                                                              title: _model.yourNameController10.text,
                                                                              clearUnsetFields: false,
                                                                            ),
                                                                          ));
                                                                        },
                                                                      ),
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'l1imekio' /* Title */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      maxLines:
                                                                          null,
                                                                      validator: _model
                                                                          .yourNameController10Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            5.0,
                                                                            20.0,
                                                                            5.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model.yourNameController11 ??=
                                                                              TextEditingController(
                                                                        text: containerSettingsRecord
                                                                            ?.onboard
                                                                            ?.subtitle,
                                                                      ),
                                                                      focusNode:
                                                                          _model
                                                                              .yourNameFocusNode11,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.yourNameController11',
                                                                        Duration(
                                                                            milliseconds:
                                                                                2000),
                                                                        () async {
                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            onboard:
                                                                                createOnBoardStruct(
                                                                              subtitle: _model.yourNameController11.text,
                                                                              clearUnsetFields: false,
                                                                            ),
                                                                          ));
                                                                        },
                                                                      ),
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'i1qxchrj' /* Subtitle */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      maxLines:
                                                                          null,
                                                                      validator: _model
                                                                          .yourNameController11Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        5.0,
                                                                        20.0,
                                                                        5.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              15.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            containerSettingsRecord?.onboard?.logo,
                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                                                          ),
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              85.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '61n1ujpj' /* Upload / Change Logo */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).titleSmall,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                    context: context,
                                                                                    allowPhoto: true,
                                                                                  );
                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                    setState(() => _model.isDataUploading3 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                    var downloadUrls = <String>[];
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

                                                                                      downloadUrls = (await Future.wait(
                                                                                        selectedMedia.map(
                                                                                          (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                        ),
                                                                                      ))
                                                                                          .where((u) => u != null)
                                                                                          .map((u) => u!)
                                                                                          .toList();
                                                                                    } finally {
                                                                                      _model.isDataUploading3 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                      setState(() {
                                                                                        _model.uploadedLocalFile3 = selectedUploadedFiles.first;
                                                                                        _model.uploadedFileUrl3 = downloadUrls.first;
                                                                                      });
                                                                                    } else {
                                                                                      setState(() {});
                                                                                      return;
                                                                                    }
                                                                                  }

                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    onboard: createOnBoardStruct(
                                                                                      logo: _model.uploadedFileUrl3,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  '4vr2s704' /*  */,
                                                                                ),
                                                                                icon: Icon(
                                                                                  Icons.upload_outlined,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  size: 15.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 50.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: Colors.black,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                        color: Colors.white,
                                                                                        fontSize: 16.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                      ),
                                                                                  elevation: 2.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    onboard: createOnBoardStruct(
                                                                                      logo: '',
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  '7y4apzps' /*  */,
                                                                                ),
                                                                                icon: Icon(
                                                                                  Icons.remove_circle_outline_outlined,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  size: 15.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 50.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: Color(0xFFFF0000),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                        color: Colors.white,
                                                                                        fontSize: 16.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                      ),
                                                                                  elevation: 2.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          8.0,
                                                                          20.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'uvgt0x77' /* Do you want to replace Title w... */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                  FlutterFlowRadioButton(
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'pgrty9wr' /* Yes */,
                                                                      ),
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'c085quif' /* No */,
                                                                      )
                                                                    ].toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(
                                                                          () {});
                                                                      await containerSettingsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createSettingsRecordData(
                                                                        onboard:
                                                                            createOnBoardStruct(
                                                                          logoTitleReplaceStatus: _model.radioButtonTitleLogoValue == 'No'
                                                                              ? false
                                                                              : true,
                                                                          clearUnsetFields:
                                                                              false,
                                                                        ),
                                                                      ));
                                                                    },
                                                                    controller: _model
                                                                        .radioButtonTitleLogoValueController ??= FormFieldController<
                                                                            String>(
                                                                        containerSettingsRecord?.onboard?.logoTitleReplaceStatus ==
                                                                                true
                                                                            ? 'Yes'
                                                                            : 'No'),
                                                                    optionHeight:
                                                                        30.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    buttonPosition:
                                                                        RadioButtonPosition
                                                                            .left,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    radioButtonColor:
                                                                        Colors
                                                                            .blue,
                                                                    inactiveRadioButtonColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    toggleable:
                                                                        false,
                                                                    horizontalAlignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    verticalAlignment:
                                                                        WrapCrossAlignment
                                                                            .start,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          8.0,
                                                                          20.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'kajxc9t3' /* Do you want to hide Background... */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                  FlutterFlowRadioButton(
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'cidi640u' /* Yes */,
                                                                      ),
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'eynwk69z' /* No */,
                                                                      )
                                                                    ].toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(
                                                                          () {});
                                                                      await containerSettingsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createSettingsRecordData(
                                                                        onboard:
                                                                            createOnBoardStruct(
                                                                          bgImageStatus: _model.radioButtonBGHideValue == 'No'
                                                                              ? false
                                                                              : true,
                                                                          clearUnsetFields:
                                                                              false,
                                                                        ),
                                                                      ));
                                                                    },
                                                                    controller: _model
                                                                        .radioButtonBGHideValueController ??= FormFieldController<
                                                                            String>(
                                                                        containerSettingsRecord?.onboard?.bgImageStatus ==
                                                                                true
                                                                            ? 'Yes'
                                                                            : 'No'),
                                                                    optionHeight:
                                                                        30.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    buttonPosition:
                                                                        RadioButtonPosition
                                                                            .left,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    radioButtonColor:
                                                                        Colors
                                                                            .blue,
                                                                    inactiveRadioButtonColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    toggleable:
                                                                        false,
                                                                    horizontalAlignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    verticalAlignment:
                                                                        WrapCrossAlignment
                                                                            .start,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '1z2cdj6t' /* Select background colour here */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      final _colorPickedColor =
                                                                          await showFFColorPicker(
                                                                        context,
                                                                        currentColor: _model
                                                                            .colorPicked ??= FlutterFlowTheme.of(
                                                                                context)
                                                                            .primary,
                                                                        showRecentColors:
                                                                            true,
                                                                        allowOpacity:
                                                                            true,
                                                                        textColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        secondaryTextColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        primaryButtonBackgroundColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        primaryButtonTextColor:
                                                                            Colors.white,
                                                                        primaryButtonBorderColor:
                                                                            Colors.transparent,
                                                                        displayAsBottomSheet:
                                                                            isMobileWidth(context),
                                                                      );

                                                                      if (_colorPickedColor !=
                                                                          null) {
                                                                        safeSetState(() =>
                                                                            _model.colorPicked =
                                                                                _colorPickedColor);
                                                                      }

                                                                      await containerSettingsRecord!
                                                                          .reference
                                                                          .update(
                                                                              createSettingsRecordData(
                                                                        onboard:
                                                                            createOnBoardStruct(
                                                                          bgColor:
                                                                              _model.colorPicked,
                                                                          clearUnsetFields:
                                                                              false,
                                                                        ),
                                                                      ));
                                                                    },
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'dkgjc8ab' /* Set Colour */,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          130.0,
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleSmallFamily,
                                                                            color:
                                                                                Colors.white,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                          ),
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          20.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          final selectedMedia =
                                                                              await selectMediaWithSourceBottomSheet(
                                                                            context:
                                                                                context,
                                                                            allowPhoto:
                                                                                true,
                                                                          );
                                                                          if (selectedMedia != null &&
                                                                              selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                            setState(() =>
                                                                                _model.isDataUploading4 = true);
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

                                                                              downloadUrls = (await Future.wait(
                                                                                selectedMedia.map(
                                                                                  (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                ),
                                                                              ))
                                                                                  .where((u) => u != null)
                                                                                  .map((u) => u!)
                                                                                  .toList();
                                                                            } finally {
                                                                              _model.isDataUploading4 = false;
                                                                            }
                                                                            if (selectedUploadedFiles.length == selectedMedia.length &&
                                                                                downloadUrls.length == selectedMedia.length) {
                                                                              setState(() {
                                                                                _model.uploadedLocalFile4 = selectedUploadedFiles.first;
                                                                                _model.uploadedFileUrl4 = downloadUrls.first;
                                                                              });
                                                                            } else {
                                                                              setState(() {});
                                                                              return;
                                                                            }
                                                                          }

                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            onboard:
                                                                                createOnBoardStruct(
                                                                              fieldValues: {
                                                                                'gallery': FieldValue.arrayUnion([
                                                                                  _model.uploadedFileUrl4
                                                                                ]),
                                                                              },
                                                                              clearUnsetFields: false,
                                                                            ),
                                                                          ));
                                                                        },
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          'hn9n496d' /*  */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .upload_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          size:
                                                                              15.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              50.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Colors.black,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                color: Colors.white,
                                                                                fontSize: 16.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                              ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              10.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'u1n5c2yd' /* Upload / Change Background Ima... */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        5.0,
                                                                        20.0,
                                                                        5.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final bgImageList = containerSettingsRecord
                                                                            ?.onboard
                                                                            ?.gallery
                                                                            ?.toList() ??
                                                                        [];
                                                                    return GridView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      gridDelegate:
                                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                                        crossAxisCount:
                                                                            5,
                                                                        crossAxisSpacing:
                                                                            10.0,
                                                                        mainAxisSpacing:
                                                                            10.0,
                                                                        childAspectRatio:
                                                                            1.0,
                                                                      ),
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          bgImageList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              bgImageListIndex) {
                                                                        final bgImageListItem =
                                                                            bgImageList[bgImageListIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                              onboard: createOnBoardStruct(
                                                                                fieldValues: {
                                                                                  'gallery': FieldValue.arrayRemove([
                                                                                    bgImageListItem
                                                                                  ]),
                                                                                },
                                                                                clearUnsetFields: false,
                                                                              ),
                                                                            ));
                                                                          },
                                                                          child:
                                                                              Image.network(
                                                                            bgImageListItem,
                                                                            width:
                                                                                40.0,
                                                                            height:
                                                                                40.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'Home')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          32.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '46yqhfn1' /* Home */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '2o45b0o6' /* Enable Category */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium,
                                                                      ),
                                                                      FlutterFlowRadioButton(
                                                                        options:
                                                                            [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'jg54ov9j' /* Yes */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'suvmpm38' /* No */,
                                                                          )
                                                                        ].toList(),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(
                                                                              () {});
                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            exploreCategory: _model.radioButtonUpcommingClasValue == 'No'
                                                                                ? false
                                                                                : true,
                                                                          ));
                                                                        },
                                                                        controller: _model
                                                                            .radioButtonUpcommingClasValueController ??= FormFieldController<String>(containerSettingsRecord?.exploreCategory ==
                                                                                true
                                                                            ? 'Yes'
                                                                            : 'No'),
                                                                        optionHeight:
                                                                            30.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                        buttonPosition:
                                                                            RadioButtonPosition.left,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        radioButtonColor:
                                                                            Colors.blue,
                                                                        inactiveRadioButtonColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        toggleable:
                                                                            false,
                                                                        horizontalAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalAlignment:
                                                                            WrapCrossAlignment.start,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'ks9b270x' /* Enable Featured Courses */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium,
                                                                      ),
                                                                      FlutterFlowRadioButton(
                                                                        options:
                                                                            [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'zxuhavcm' /* Yes */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'd0x9sa6u' /* No */,
                                                                          )
                                                                        ].toList(),
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(
                                                                              () {});
                                                                          await containerSettingsRecord!
                                                                              .reference
                                                                              .update(createSettingsRecordData(
                                                                            topCourse: _model.radioButtonOfferCourseValue == 'No'
                                                                                ? false
                                                                                : true,
                                                                          ));
                                                                        },
                                                                        controller: _model
                                                                            .radioButtonOfferCourseValueController ??= FormFieldController<String>(containerSettingsRecord?.topCourse ==
                                                                                true
                                                                            ? 'Yes'
                                                                            : 'No'),
                                                                        optionHeight:
                                                                            30.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                        buttonPosition:
                                                                            RadioButtonPosition.left,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        radioButtonColor:
                                                                            Colors.blue,
                                                                        inactiveRadioButtonColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        toggleable:
                                                                            false,
                                                                        horizontalAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalAlignment:
                                                                            WrapCrossAlignment.start,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'vvltsgqp' /* Slider */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              TextFormField(
                                                                            controller: _model.yourNameController12 ??=
                                                                                TextEditingController(
                                                                              text: containerSettingsRecord?.homeSlider?.title,
                                                                            ),
                                                                            focusNode:
                                                                                _model.yourNameFocusNode12,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.yourNameController12',
                                                                              Duration(milliseconds: 2000),
                                                                              () async {
                                                                                await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                  homeSlider: createHomeSliderStruct(
                                                                                    title: _model.yourNameController12.text,
                                                                                    clearUnsetFields: false,
                                                                                  ),
                                                                                ));
                                                                              },
                                                                            ),
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                '505hguwx' /* Title */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            maxLines:
                                                                                null,
                                                                            validator:
                                                                                _model.yourNameController12Validator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              TextFormField(
                                                                            controller: _model.yourNameController13 ??=
                                                                                TextEditingController(
                                                                              text: containerSettingsRecord?.homeSlider?.subtitle,
                                                                            ),
                                                                            focusNode:
                                                                                _model.yourNameFocusNode13,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.yourNameController13',
                                                                              Duration(milliseconds: 2000),
                                                                              () async {
                                                                                await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                  homeSlider: createHomeSliderStruct(
                                                                                    subtitle: _model.yourNameController13.text,
                                                                                    clearUnsetFields: false,
                                                                                  ),
                                                                                ));
                                                                              },
                                                                            ),
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                '8pisxdp8' /* Subtitle */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            maxLines:
                                                                                null,
                                                                            validator:
                                                                                _model.yourNameController13Validator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          8.0,
                                                                          15.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              TextFormField(
                                                                            controller: _model.yourNameController14 ??=
                                                                                TextEditingController(
                                                                              text: containerSettingsRecord?.homeSlider?.bName,
                                                                            ),
                                                                            focusNode:
                                                                                _model.yourNameFocusNode14,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.yourNameController14',
                                                                              Duration(milliseconds: 2000),
                                                                              () async {
                                                                                await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                  homeSlider: createHomeSliderStruct(
                                                                                    bName: _model.yourNameController14.text,
                                                                                    clearUnsetFields: false,
                                                                                  ),
                                                                                ));
                                                                              },
                                                                            ),
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                'rdwq1uuq' /* Button Text */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            maxLines:
                                                                                null,
                                                                            validator:
                                                                                _model.yourNameController14Validator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      FlutterFlowVideoPlayer(
                                                                        path: containerSettingsRecord!
                                                                            .homeSlider
                                                                            .video,
                                                                        videoType:
                                                                            VideoType.network,
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            200.0,
                                                                        autoPlay:
                                                                            false,
                                                                        looping:
                                                                            true,
                                                                        showControls:
                                                                            true,
                                                                        allowFullScreen:
                                                                            true,
                                                                        allowPlaybackSpeedMenu:
                                                                            false,
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.all(10.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'ohj6gjho' /* Upload / Change Video */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).titleSmall,
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                      context: context,
                                                                                      allowPhoto: false,
                                                                                      allowVideo: true,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      setState(() => _model.isDataUploading5 = true);
                                                                                      var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                      var downloadUrls = <String>[];
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

                                                                                        downloadUrls = (await Future.wait(
                                                                                          selectedMedia.map(
                                                                                            (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                          ),
                                                                                        ))
                                                                                            .where((u) => u != null)
                                                                                            .map((u) => u!)
                                                                                            .toList();
                                                                                      } finally {
                                                                                        _model.isDataUploading5 = false;
                                                                                      }
                                                                                      if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() {
                                                                                          _model.uploadedLocalFile5 = selectedUploadedFiles.first;
                                                                                          _model.uploadedFileUrl5 = downloadUrls.first;
                                                                                        });
                                                                                      } else {
                                                                                        setState(() {});
                                                                                        return;
                                                                                      }
                                                                                    }

                                                                                    await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                      homeSlider: createHomeSliderStruct(
                                                                                        video: _model.uploadedFileUrl5,
                                                                                        clearUnsetFields: false,
                                                                                      ),
                                                                                    ));
                                                                                  },
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    '5q0feg7e' /*  */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.upload_outlined,
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    height: 50.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: Colors.black,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 16.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                        ),
                                                                                    elevation: 2.0,
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'fd0ufilt' /* App URLs */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.yourNameController15,
                                                                              focusNode: _model.yourNameFocusNode15,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.yourNameController15',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeSlider: createHomeSliderStruct(
                                                                                      title: _model.yourNameController15.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'n2snkuo0' /* Android */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.yourNameController15Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.yourNameController16,
                                                                              focusNode: _model.yourNameFocusNode16,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.yourNameController16',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeSlider: createHomeSliderStruct(
                                                                                      subtitle: _model.yourNameController16.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'cf6cg1dm' /* IOS */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.yourNameController16Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'sw3pkbed' /* About Section */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.haTitleController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.homeAbout?.title,
                                                                              ),
                                                                              focusNode: _model.haTitleFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.haTitleController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeAbout: createAboutSec1Struct(
                                                                                      title: _model.haTitleController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'fmlc76q4' /* Title */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.haTitleControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.haSubController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.homeAbout?.title,
                                                                              ),
                                                                              focusNode: _model.haSubFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.haSubController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeAbout: createAboutSec1Struct(
                                                                                      subtitle: _model.haSubController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'x8rb74t7' /* Subtitle */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.haSubControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.haBioController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.homeAbout?.bio,
                                                                              ),
                                                                              focusNode: _model.haBioFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.haBioController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeAbout: createAboutSec1Struct(
                                                                                      bio: _model.haBioController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  '130b1jgl' /* Description */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.haBioControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(15.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              containerSettingsRecord!.homeAbout.image,
                                                                              width: 100.0,
                                                                              height: 85.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.all(10.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'di506r2k' /* Upload / Change Image */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleSmall,
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                        context: context,
                                                                                        allowPhoto: true,
                                                                                      );
                                                                                      if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                        setState(() => _model.isDataUploading6 = true);
                                                                                        var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                        var downloadUrls = <String>[];
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

                                                                                          downloadUrls = (await Future.wait(
                                                                                            selectedMedia.map(
                                                                                              (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                            ),
                                                                                          ))
                                                                                              .where((u) => u != null)
                                                                                              .map((u) => u!)
                                                                                              .toList();
                                                                                        } finally {
                                                                                          _model.isDataUploading6 = false;
                                                                                        }
                                                                                        if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                          setState(() {
                                                                                            _model.uploadedLocalFile6 = selectedUploadedFiles.first;
                                                                                            _model.uploadedFileUrl6 = downloadUrls.first;
                                                                                          });
                                                                                        } else {
                                                                                          setState(() {});
                                                                                          return;
                                                                                        }
                                                                                      }

                                                                                      await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                        homeAbout: createAboutSec1Struct(
                                                                                          image: _model.uploadedFileUrl6,
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      'mnb7ohnb' /*  */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.upload_outlined,
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 50.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: Colors.black,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 16.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                          ),
                                                                                      elevation: 2.0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'vmz5lsbu' /* Session Section */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.hsTitleController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.homeSession?.title,
                                                                              ),
                                                                              focusNode: _model.hsTitleFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.hsTitleController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeSession: createAboutSec1Struct(
                                                                                      title: _model.hsTitleController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  '3nthf407' /* Title */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.hsTitleControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.hsSubtitleController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.homeSession?.subtitle,
                                                                              ),
                                                                              focusNode: _model.hsSubtitleFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.hsSubtitleController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeSession: createAboutSec1Struct(
                                                                                      subtitle: _model.hsSubtitleController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'lvcy0hjt' /* Subtitle */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.hsSubtitleControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.hsBioController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.homeSession?.bio,
                                                                              ),
                                                                              focusNode: _model.hsBioFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.hsBioController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    homeSession: createAboutSec1Struct(
                                                                                      bio: _model.hsBioController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'paezik5x' /* Description */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.hsBioControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'About')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'zolae3kr' /* About Section 1 */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.yourNameController17 ??= TextEditingController(
                                                                                text: containerSettingsRecord?.aboutSec1?.title,
                                                                              ),
                                                                              focusNode: _model.yourNameFocusNode17,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.yourNameController17',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    aboutSec1: createAboutSec1Struct(
                                                                                      title: _model.yourNameController17.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  '8bkdgwxp' /* Title */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.yourNameController17Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.yourNameController18 ??= TextEditingController(
                                                                                text: containerSettingsRecord?.aboutSec1?.subtitle,
                                                                              ),
                                                                              focusNode: _model.yourNameFocusNode18,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.yourNameController18',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    aboutSec1: createAboutSec1Struct(
                                                                                      subtitle: _model.yourNameController18.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  '8rmljjvy' /* Subtitle */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.yourNameController18Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.yourNameController19 ??= TextEditingController(
                                                                                text: containerSettingsRecord?.aboutSec1?.bio,
                                                                              ),
                                                                              focusNode: _model.yourNameFocusNode19,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.yourNameController19',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    aboutSec1: createAboutSec1Struct(
                                                                                      bio: _model.yourNameController19.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'mcrvzsu7' /* Description */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.yourNameController19Validator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(15.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              valueOrDefault<String>(
                                                                                containerSettingsRecord?.aboutSec1?.image,
                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                                                              ),
                                                                              width: 100.0,
                                                                              height: 85.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.all(10.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'gbcfgy3l' /* Upload / Change Image */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleSmall,
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                        context: context,
                                                                                        allowPhoto: true,
                                                                                      );
                                                                                      if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                        setState(() => _model.isDataUploading7 = true);
                                                                                        var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                        var downloadUrls = <String>[];
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

                                                                                          downloadUrls = (await Future.wait(
                                                                                            selectedMedia.map(
                                                                                              (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                            ),
                                                                                          ))
                                                                                              .where((u) => u != null)
                                                                                              .map((u) => u!)
                                                                                              .toList();
                                                                                        } finally {
                                                                                          _model.isDataUploading7 = false;
                                                                                        }
                                                                                        if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                          setState(() {
                                                                                            _model.uploadedLocalFile7 = selectedUploadedFiles.first;
                                                                                            _model.uploadedFileUrl7 = downloadUrls.first;
                                                                                          });
                                                                                        } else {
                                                                                          setState(() {});
                                                                                          return;
                                                                                        }
                                                                                      }

                                                                                      await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                        aboutSec1: createAboutSec1Struct(
                                                                                          image: _model.uploadedFileUrl7,
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      '8196kbpg' /*  */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.upload_outlined,
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 50.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: Colors.black,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 16.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                          ),
                                                                                      elevation: 2.0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '6ckv20ls' /* About Section 2 */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.aTitleController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.aboutSec2?.title,
                                                                              ),
                                                                              focusNode: _model.aTitleFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.aTitleController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    aboutSec2: createAboutSec1Struct(
                                                                                      title: _model.aTitleController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'tsuf9bfc' /* Title */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.aTitleControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.aSubtitleController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.aboutSec2?.subtitle,
                                                                              ),
                                                                              focusNode: _model.aSubtitleFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.aSubtitleController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    aboutSec2: createAboutSec1Struct(
                                                                                      subtitle: _model.aSubtitleController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  '70dlezur' /* Subtitle */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.aSubtitleControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                20.0,
                                                                                5.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.aBioController ??= TextEditingController(
                                                                                text: containerSettingsRecord?.aboutSec2?.bio,
                                                                              ),
                                                                              focusNode: _model.aBioFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.aBioController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                    aboutSec2: createAboutSec1Struct(
                                                                                      bio: _model.aBioController.text,
                                                                                      clearUnsetFields: false,
                                                                                    ),
                                                                                  ));
                                                                                },
                                                                              ),
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'yrx2b3xw' /* Description */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              maxLines: null,
                                                                              validator: _model.aBioControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(15.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              valueOrDefault<String>(
                                                                                containerSettingsRecord?.aboutSec2?.image,
                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-r-i-p-admin-new-g8kal3/assets/upm83dg63c6r/Placeholder_view_vector.svg_(1).png',
                                                                              ),
                                                                              width: 100.0,
                                                                              height: 85.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.all(10.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  't27d1s4p' /* Upload / Change Image */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleSmall,
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                        context: context,
                                                                                        allowPhoto: true,
                                                                                      );
                                                                                      if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                        setState(() => _model.isDataUploading8 = true);
                                                                                        var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                        var downloadUrls = <String>[];
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

                                                                                          downloadUrls = (await Future.wait(
                                                                                            selectedMedia.map(
                                                                                              (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                            ),
                                                                                          ))
                                                                                              .where((u) => u != null)
                                                                                              .map((u) => u!)
                                                                                              .toList();
                                                                                        } finally {
                                                                                          _model.isDataUploading8 = false;
                                                                                        }
                                                                                        if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                          setState(() {
                                                                                            _model.uploadedLocalFile8 = selectedUploadedFiles.first;
                                                                                            _model.uploadedFileUrl8 = downloadUrls.first;
                                                                                          });
                                                                                        } else {
                                                                                          setState(() {});
                                                                                          return;
                                                                                        }
                                                                                      }

                                                                                      await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                        aboutSec2: createAboutSec1Struct(
                                                                                          image: _model.uploadedFileUrl8,
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      '50826bt5' /*  */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.upload_outlined,
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 50.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: Colors.black,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 16.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                          ),
                                                                                      elevation: 2.0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'Zoom')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          15.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'kkqjxknm' /* Setup your Zoom Integration */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.6,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        16.0,
                                                                        15.0,
                                                                        0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .inputController1,
                                                                      focusNode:
                                                                          _model
                                                                              .inputFocusNode1,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '8vxruvuo' /* Email ID */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      validator: _model
                                                                          .inputController1Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.6,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        16.0,
                                                                        15.0,
                                                                        0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .inputController2,
                                                                      focusNode:
                                                                          _model
                                                                              .inputFocusNode2,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          't3bcdo92' /* API Key */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      validator: _model
                                                                          .inputController2Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.6,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        16.0,
                                                                        15.0,
                                                                        0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .inputController3,
                                                                      focusNode:
                                                                          _model
                                                                              .inputFocusNode3,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '1o3o23mv' /* Secret Key */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).bodySmall,
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      validator: _model
                                                                          .inputController3Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          20.0),
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
                                                                  await currentUserReference!
                                                                      .update(
                                                                          createUsersRecordData(
                                                                    zoom:
                                                                        createZoomConfigStruct(
                                                                      zoomEmail: _model
                                                                          .inputController1
                                                                          .text,
                                                                      zoomAPIkey: _model
                                                                          .inputController2
                                                                          .text,
                                                                      zoomAPIsecret: _model
                                                                          .inputController3
                                                                          .text,
                                                                      clearUnsetFields:
                                                                          false,
                                                                    ),
                                                                  ));
                                                                },
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .addButtonModel,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      AddButtonWidget(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7g18ndw1' /* Save */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .save_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    height: 45,
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'Terms')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          15.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'c4cr41gg' /* Terms & Conditions */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.6,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        16.0,
                                                                        15.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.inputController4 ??=
                                                                            TextEditingController(
                                                                      text: containerSettingsRecord
                                                                          ?.termsConditions,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .inputFocusNode4,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.inputController4',
                                                                      Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        await containerSettingsRecord!
                                                                            .reference
                                                                            .update(createSettingsRecordData(
                                                                          termsConditions: _model
                                                                              .inputController4
                                                                              .text,
                                                                        ));
                                                                      },
                                                                    ),
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'z9oui7k2' /* Terms & Conditions */,
                                                                      ),
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmall,
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmall,
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          0.0,
                                                                          24.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    maxLines:
                                                                        10,
                                                                    validator: _model
                                                                        .inputController4Validator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName == 'Bug')
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00FFFFFF),
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        32.0,
                                                                        0.0,
                                                                        16.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'smr31nbi' /* Bug Report */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child:
                                                                    FutureBuilder<
                                                                        int>(
                                                                  future:
                                                                      queryBugreportRecordCount(),
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
                                                                    int stickyHeaderCount =
                                                                        snapshot
                                                                            .data!;
                                                                    return StickyHeader(
                                                                      overlapHeaders:
                                                                          false,
                                                                      header:
                                                                          Visibility(
                                                                        visible:
                                                                            stickyHeaderCount >
                                                                                0,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(0.0),
                                                                              bottomRight: Radius.circular(0.0),
                                                                              topLeft: Radius.circular(8.0),
                                                                              topRight: Radius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(12.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ivomfwaj' /* Username */,
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall,
                                                                                  ),
                                                                                ),
                                                                                if (responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                ))
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '5215te5p' /* Title */,
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall,
                                                                                    ),
                                                                                  ),
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'e57fgj1g' /* Issue */,
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall,
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'jwc1y5dx' /* Screenshot */,
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall,
                                                                                  ),
                                                                                ),
                                                                                if (responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                  tabletLandscape: false,
                                                                                  desktop: false,
                                                                                ))
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'm81ewn1c' /* Action */,
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall,
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      content:
                                                                          StreamBuilder<
                                                                              List<BugreportRecord>>(
                                                                        stream:
                                                                            queryBugreportRecord(),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          List<BugreportRecord>
                                                                              listViewBugreportRecordList =
                                                                              snapshot.data!;
                                                                          if (listViewBugreportRecordList
                                                                              .isEmpty) {
                                                                            return Center(
                                                                              child: EmptyMessageWidget(),
                                                                            );
                                                                          }
                                                                          return ListView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                listViewBugreportRecordList.length,
                                                                            itemBuilder:
                                                                                (context, listViewIndex) {
                                                                              final listViewBugreportRecord = listViewBugreportRecordList[listViewIndex];
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 0.0,
                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                        offset: Offset(0.0, 1.0),
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsets.all(12.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                child: StreamBuilder<UsersRecord>(
                                                                                                  stream: UsersRecord.getDocument(listViewBugreportRecord.userRef!),
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
                                                                                                    final rowUsersRecord = snapshot.data!;
                                                                                                    return InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'Edit_user',
                                                                                                          queryParameters: {
                                                                                                            'userRef': serializeParam(
                                                                                                              rowUsersRecord,
                                                                                                              ParamType.Document,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                          extra: <String, dynamic>{
                                                                                                            'userRef': rowUsersRecord,
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                                                                                                            child: ClipRRect(
                                                                                                              borderRadius: BorderRadius.circular(120.0),
                                                                                                              child: CachedNetworkImage(
                                                                                                                fadeInDuration: Duration(milliseconds: 500),
                                                                                                                fadeOutDuration: Duration(milliseconds: 500),
                                                                                                                imageUrl: valueOrDefault<String>(
                                                                                                                  rowUsersRecord.photoUrl,
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                                                                                                                ),
                                                                                                                width: 50.0,
                                                                                                                height: 50.0,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                              child: AutoSizeText(
                                                                                                                rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                                                  maxChars: 32,
                                                                                                                  replacement: '…',
                                                                                                                ),
                                                                                                                maxLines: 2,
                                                                                                                style: FlutterFlowTheme.of(context).titleSmall,
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
                                                                                            Expanded(
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Expanded(
                                                                                                      child: AutoSizeText(
                                                                                                        listViewBugreportRecord.title.maybeHandleOverflow(maxChars: 32),
                                                                                                        maxLines: 2,
                                                                                                        style: FlutterFlowTheme.of(context).bodySmall,
                                                                                                      ),
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                    tablet: false,
                                                                                                  ))
                                                                                                    Expanded(
                                                                                                      child: AutoSizeText(
                                                                                                        listViewBugreportRecord.bio.maybeHandleOverflow(maxChars: 32),
                                                                                                        textAlign: TextAlign.start,
                                                                                                        maxLines: 2,
                                                                                                        style: FlutterFlowTheme.of(context).bodySmall,
                                                                                                      ),
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await Navigator.push(
                                                                                                        context,
                                                                                                        PageTransition(
                                                                                                          type: PageTransitionType.fade,
                                                                                                          child: FlutterFlowExpandedImageView(
                                                                                                            image: Image.network(
                                                                                                              listViewBugreportRecord.image,
                                                                                                              fit: BoxFit.contain,
                                                                                                            ),
                                                                                                            allowRotation: false,
                                                                                                            tag: listViewBugreportRecord.image,
                                                                                                            useHeroAnimation: true,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                    child: Hero(
                                                                                                      tag: listViewBugreportRecord.image,
                                                                                                      transitionOnUserGestures: true,
                                                                                                      child: ClipRRect(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                        child: Image.network(
                                                                                                          listViewBugreportRecord.image,
                                                                                                          width: 100.0,
                                                                                                          height: 80.0,
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            if (responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                              tabletLandscape: false,
                                                                                              desktop: false,
                                                                                            ))
                                                                                              Expanded(
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await showModalBottomSheet(
                                                                                                          isScrollControlled: true,
                                                                                                          backgroundColor: Colors.transparent,
                                                                                                          enableDrag: false,
                                                                                                          context: context,
                                                                                                          builder: (context) {
                                                                                                            return WebViewAware(
                                                                                                              child: Padding(
                                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                                child: Container(
                                                                                                                  height: 400.0,
                                                                                                                  child: DeleteMessage1Widget(
                                                                                                                    bugreportRef: listViewBugreportRecord,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        ).then((value) => safeSetState(() {}));
                                                                                                      },
                                                                                                      child: Container(
                                                                                                        height: 45.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsets.all(10.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Icon(
                                                                                                                Icons.delete_outline,
                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                size: 24.0,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'Team')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          32.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '04un60ch' /* Team Settings */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleMediumFamily,
                                                                          fontSize:
                                                                              18.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x00FFFFFF),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'fihg6ddi' /* Team Section */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                fontSize: 16.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 20.0, 5.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.yourTeamController ??= TextEditingController(
                                                                                    text: containerSettingsRecord?.homeTeam?.title,
                                                                                  ),
                                                                                  focusNode: _model.yourTeamFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.yourTeamController',
                                                                                    Duration(milliseconds: 2000),
                                                                                    () async {
                                                                                      await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                        homeTeam: createAboutSec1Struct(
                                                                                          title: _model.yourTeamController.text,
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));
                                                                                    },
                                                                                  ),
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: FFLocalizations.of(context).getText(
                                                                                      '7ic06yws' /* Title */,
                                                                                    ),
                                                                                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  maxLines: null,
                                                                                  validator: _model.yourTeamControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 20.0, 5.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.yourTeamSubtitleController ??= TextEditingController(
                                                                                    text: containerSettingsRecord?.homeTeam?.subtitle,
                                                                                  ),
                                                                                  focusNode: _model.yourTeamSubtitleFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.yourTeamSubtitleController',
                                                                                    Duration(milliseconds: 2000),
                                                                                    () async {
                                                                                      await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                        homeTeam: createAboutSec1Struct(
                                                                                          subtitle: _model.yourTeamSubtitleController.text,
                                                                                          clearUnsetFields: false,
                                                                                        ),
                                                                                      ));
                                                                                    },
                                                                                  ),
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: FFLocalizations.of(context).getText(
                                                                                      'kol8uqzq' /* Subtitle */,
                                                                                    ),
                                                                                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  maxLines: null,
                                                                                  validator: _model.yourTeamSubtitleControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            8.0,
                                                                            15.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 20.0, 5.0),
                                                                                child: TextFormField(
                                                                                  controller: _model.yourTeamBioController ??= TextEditingController(
                                                                                    text: containerSettingsRecord?.homeTeam?.bio,
                                                                                  ),
                                                                                  focusNode: _model.yourTeamBioFocusNode,
                                                                                  onFieldSubmitted: (_) async {
                                                                                    await containerSettingsRecord!.reference.update(createSettingsRecordData(
                                                                                      homeTeam: createAboutSec1Struct(
                                                                                        bio: _model.yourTeamBioController.text,
                                                                                        clearUnsetFields: false,
                                                                                      ),
                                                                                    ));
                                                                                  },
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: FFLocalizations.of(context).getText(
                                                                                      'tcrstpx0' /* Description */,
                                                                                    ),
                                                                                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                  maxLines: null,
                                                                                  validator: _model.yourTeamBioControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x00FFFFFF),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 16.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wmk8q4un' /* Our Team Section */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                      fontSize: 16.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Builder(
                                                                              builder: (context) => Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: WebViewAware(
                                                                                            child: Container(
                                                                                              width: 600.0,
                                                                                              child: AddMemberWidget(
                                                                                                memberType: 'Team',
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => setState(() {}));
                                                                                  },
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'kfv1nzla' /* Add Team */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.add,
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 150.0,
                                                                                    height: 50.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: Colors.black,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                          color: Colors.white,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                        tablet:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              12.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: Color(0x1F000000),
                                                                                  offset: Offset(0.0, 2.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                width: 1.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'g0sp2lj6' /* Name */,
                                                                                            ),
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall,
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'rrhk1mk3' /* Action */,
                                                                                              ),
                                                                                              textAlign: TextAlign.start,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                    child: ListView(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              boxShadow: [
                                                                                                BoxShadow(
                                                                                                  blurRadius: 0.0,
                                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                                  offset: Offset(0.0, 1.0),
                                                                                                )
                                                                                              ],
                                                                                            ),
                                                                                            child: StreamBuilder<List<MemberRecord>>(
                                                                                              stream: queryMemberRecord(
                                                                                                queryBuilder: (memberRecord) => memberRecord.where(
                                                                                                  'memberType',
                                                                                                  isEqualTo: 'Team',
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
                                                                                                List<MemberRecord> columnMemberRecordList = snapshot.data!;
                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: List.generate(columnMemberRecordList.length, (columnIndex) {
                                                                                                    final columnMemberRecord = columnMemberRecordList[columnIndex];
                                                                                                    return Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                                                  child: ClipRRect(
                                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                                    child: CachedNetworkImage(
                                                                                                                      fadeInDuration: Duration(milliseconds: 500),
                                                                                                                      fadeOutDuration: Duration(milliseconds: 500),
                                                                                                                      imageUrl: valueOrDefault<String>(
                                                                                                                        columnMemberRecord.image,
                                                                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-r-i-p-admin-new-g8kal3/assets/upm83dg63c6r/Placeholder_view_vector.svg_(1).png',
                                                                                                                      ),
                                                                                                                      width: 40.0,
                                                                                                                      height: 40.0,
                                                                                                                      fit: BoxFit.contain,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Expanded(
                                                                                                                  child: Column(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                    children: [
                                                                                                                      AutoSizeText(
                                                                                                                        columnMemberRecord.title.maybeHandleOverflow(
                                                                                                                          maxChars: 32,
                                                                                                                          replacement: '…',
                                                                                                                        ),
                                                                                                                        maxLines: 2,
                                                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                              fontSize: 16.0,
                                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                          Expanded(
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                              children: [
                                                                                                                if (responsiveVisibility(
                                                                                                                  context: context,
                                                                                                                  phone: false,
                                                                                                                ))
                                                                                                                  Builder(
                                                                                                                    builder: (context) => FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        await showDialog(
                                                                                                                          context: context,
                                                                                                                          builder: (dialogContext) {
                                                                                                                            return Dialog(
                                                                                                                              elevation: 0,
                                                                                                                              insetPadding: EdgeInsets.zero,
                                                                                                                              backgroundColor: Colors.transparent,
                                                                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                              child: WebViewAware(
                                                                                                                                child: Container(
                                                                                                                                  width: 600.0,
                                                                                                                                  child: EditMemberWidget(
                                                                                                                                    memberRef: columnMemberRecord,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            );
                                                                                                                          },
                                                                                                                        ).then((value) => setState(() {}));
                                                                                                                      },
                                                                                                                      text: FFLocalizations.of(context).getText(
                                                                                                                        'qryrhplf' /*  */,
                                                                                                                      ),
                                                                                                                      icon: Icon(
                                                                                                                        Icons.edit,
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                        size: 18.0,
                                                                                                                      ),
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: Colors.black,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                                              color: Color(0xFFE0E0E0),
                                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                                            ),
                                                                                                                        borderSide: BorderSide(
                                                                                                                          color: Colors.transparent,
                                                                                                                          width: 1.0,
                                                                                                                        ),
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsets.all(10.0),
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
                                                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                                                              child: Container(
                                                                                                                                height: 300.0,
                                                                                                                                child: RemoveWidget(
                                                                                                                                  memberRef: columnMemberRecord,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          );
                                                                                                                        },
                                                                                                                      ).then((value) => safeSetState(() {}));
                                                                                                                    },
                                                                                                                    text: FFLocalizations.of(context).getText(
                                                                                                                      '5y69nl9u' /*  */,
                                                                                                                    ),
                                                                                                                    icon: Icon(
                                                                                                                      Icons.delete_outlined,
                                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                      size: 18.0,
                                                                                                                    ),
                                                                                                                    options: FFButtonOptions(
                                                                                                                      height: 40.0,
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                      color: Color(0xFFFF0000),
                                                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                                            color: Color(0xFFE0E0E0),
                                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                                          ),
                                                                                                                      borderSide: BorderSide(
                                                                                                                        color: Colors.transparent,
                                                                                                                        width: 1.0,
                                                                                                                      ),
                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    );
                                                                                                  }),
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
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (_model.navName ==
                                                        'Partners')
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            32.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'aw90m1qh' /* Partner Section */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleMediumFamily,
                                                                            fontSize:
                                                                                16.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          await showDialog(
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
                                                                                    width: 600.0,
                                                                                    child: AddMemberWidget(
                                                                                      memberType: 'Partner',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          's6vr6c0u' /* Add Team */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .add,
                                                                          size:
                                                                              15.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              150.0,
                                                                          height:
                                                                              50.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Colors.black,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: Colors.white,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                              ),
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        12.0,
                                                                        16.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x1F000000),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            12.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              12.0,
                                                                              12.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '24qu6ya1' /* Name */,
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'j32xnzn6' /* Action */,
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              16.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              ListView(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 0.0,
                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                        offset: Offset(0.0, 1.0),
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                  child: StreamBuilder<List<MemberRecord>>(
                                                                                    stream: queryMemberRecord(
                                                                                      queryBuilder: (memberRecord) => memberRecord.where(
                                                                                        'memberType',
                                                                                        isEqualTo: 'Partner',
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
                                                                                      List<MemberRecord> columnMemberRecordList = snapshot.data!;
                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: List.generate(columnMemberRecordList.length, (columnIndex) {
                                                                                          final columnMemberRecord = columnMemberRecordList[columnIndex];
                                                                                          return Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                                        child: ClipRRect(
                                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                                          child: CachedNetworkImage(
                                                                                                            fadeInDuration: Duration(milliseconds: 500),
                                                                                                            fadeOutDuration: Duration(milliseconds: 500),
                                                                                                            imageUrl: valueOrDefault<String>(
                                                                                                              columnMemberRecord.image,
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-r-i-p-admin-new-g8kal3/assets/upm83dg63c6r/Placeholder_view_vector.svg_(1).png',
                                                                                                            ),
                                                                                                            width: 40.0,
                                                                                                            height: 40.0,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Expanded(
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                          children: [
                                                                                                            AutoSizeText(
                                                                                                              columnMemberRecord.title.maybeHandleOverflow(
                                                                                                                maxChars: 32,
                                                                                                                replacement: '…',
                                                                                                              ),
                                                                                                              maxLines: 2,
                                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                    fontSize: 16.0,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (responsiveVisibility(
                                                                                                        context: context,
                                                                                                        phone: false,
                                                                                                      ))
                                                                                                        Builder(
                                                                                                          builder: (context) => FFButtonWidget(
                                                                                                            onPressed: () async {
                                                                                                              await showDialog(
                                                                                                                context: context,
                                                                                                                builder: (dialogContext) {
                                                                                                                  return Dialog(
                                                                                                                    elevation: 0,
                                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                                    backgroundColor: Colors.transparent,
                                                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                    child: WebViewAware(
                                                                                                                      child: Container(
                                                                                                                        width: 600.0,
                                                                                                                        child: EditMemberWidget(
                                                                                                                          memberRef: columnMemberRecord,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => setState(() {}));
                                                                                                            },
                                                                                                            text: FFLocalizations.of(context).getText(
                                                                                                              '9nio41fm' /*  */,
                                                                                                            ),
                                                                                                            icon: Icon(
                                                                                                              Icons.edit,
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              size: 18.0,
                                                                                                            ),
                                                                                                            options: FFButtonOptions(
                                                                                                              height: 40.0,
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                              color: Colors.black,
                                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                                    color: Color(0xFFE0E0E0),
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                                  ),
                                                                                                              borderSide: BorderSide(
                                                                                                                color: Colors.transparent,
                                                                                                                width: 1.0,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsets.all(10.0),
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
                                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                                    child: Container(
                                                                                                                      height: 300.0,
                                                                                                                      child: RemoveWidget(
                                                                                                                        memberRef: columnMemberRecord,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => safeSetState(() {}));
                                                                                                          },
                                                                                                          text: FFLocalizations.of(context).getText(
                                                                                                            '4ckpkawx' /*  */,
                                                                                                          ),
                                                                                                          icon: Icon(
                                                                                                            Icons.delete_outlined,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                          options: FFButtonOptions(
                                                                                                            height: 40.0,
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                            color: Color(0xFFFF0000),
                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                                  color: Color(0xFFE0E0E0),
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                                ),
                                                                                                            borderSide: BorderSide(
                                                                                                              color: Colors.transparent,
                                                                                                              width: 1.0,
                                                                                                            ),
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        }),
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
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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
