import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav_logs_submenu/web_nav_logs_submenu_widget.dart';
import '/old_version_d_r_i_p/course/log_details/activity_log_details/activity_log_details_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'activity_log_model.dart';
export 'activity_log_model.dart';

class ActivityLogWidget extends StatefulWidget {
  const ActivityLogWidget({super.key});

  @override
  State<ActivityLogWidget> createState() => _ActivityLogWidgetState();
}

class _ActivityLogWidgetState extends State<ActivityLogWidget> {
  late ActivityLogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityLogModel());

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
        title: 'Activity_log',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ) &&
                    !isWeb
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    automaticallyImplyLeading: false,
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'trnev2ci' /* Contracts */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: Stack(
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Column(
                    mainAxisSize: MainAxisSize.max,
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
                                  textThree:
                                      FlutterFlowTheme.of(context).primaryText,
                                  textFour: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  colorBgFive: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textFive: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  colorBgSix: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  expand: false,
                                  colorBgTwenty: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.12,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.webNavLogsSubmenuModel,
                                updateCallback: () => setState(() {}),
                                child: WebNavLogsSubmenuWidget(
                                  color3: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'h5cs9ooa' /* Activity Log */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  final _datePicked1Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate:
                                                        getCurrentTimestamp,
                                                  );

                                                  if (_datePicked1Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked1 =
                                                          DateTime(
                                                        _datePicked1Date.year,
                                                        _datePicked1Date.month,
                                                        _datePicked1Date.day,
                                                      );
                                                    });
                                                  }
                                                },
                                                text: _model.datePicked1 != null
                                                    ? 'From : ${dateTimeFormat(
                                                        'yMMMd',
                                                        _model.datePicked1,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}'
                                                    : 'From date',
                                                options: FFButtonOptions(
                                                  height: 30.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  final _datePicked2Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate: DateTime(1900),
                                                    lastDate:
                                                        getCurrentTimestamp,
                                                  );

                                                  if (_datePicked2Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked2 =
                                                          DateTime(
                                                        _datePicked2Date.year,
                                                        _datePicked2Date.month,
                                                        _datePicked2Date.day,
                                                      );
                                                    });
                                                  }
                                                },
                                                text: _model.datePicked2 != null
                                                    ? 'To : ${dateTimeFormat(
                                                        'yMMMd',
                                                        _model.datePicked2,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}'
                                                    : 'To date',
                                                options: FFButtonOptions(
                                                  height: 30.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController1 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k65cdmb4' /* Archived */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ch72acq2' /* Created */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '86fwgjzb' /* Deleted */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'w35w2ttv' /* Modified */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue1 = val),
                                                width: 150.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'fmffaefp' /* Select event type... */,
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 0.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController2 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q6jn070o' /* Branch */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ydjt0kr1' /* Category */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'b39mipej' /* Chapter */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5qy452ms' /* Country */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3q3n9741' /* Coupon */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mc9bczz1' /* Coures Category */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qwp6e59w' /* Course */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1iu4ajhy' /* Course (Image) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qcyynqau' /* Course (Video) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4phj007b' /* Instructor Request */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'z1drahq2' /* Lesson */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2gferskt' /* Meeting */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uijz91ns' /* Poll */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wh1c8mrb' /* Signin */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'axq4hd2b' /* University */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tqcjm4wy' /* University (Image) */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bmrywexj' /* User */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mskbdgg0' /* Users */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8w7jp0ib' /* Zoom Lesson */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue2 = val),
                                                width: 150.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'mchtr6xt' /* Select object... */,
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 2.0,
                                                borderRadius: 0.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.filterList = 'show';
                                                  });
                                                },
                                                child: wrapWithModel(
                                                  model: _model.addButtonModel1,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: AddButtonWidget(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'udjuk0z7' /* Filter */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.filter_alt_outlined,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 16.0,
                                                    ),
                                                    height: 30,
                                                    width: 85,
                                                    fontSize: 12,
                                                    iconSize: 14,
                                                  ),
                                                ),
                                              ),
                                              if (_model.filterList == 'show')
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model
                                                          .dropDownValueController1
                                                          ?.reset();
                                                      _model
                                                          .dropDownValueController2
                                                          ?.reset();
                                                    });
                                                    setState(() {
                                                      _model.filterList =
                                                          'hide';
                                                    });
                                                  },
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.addButtonModel2,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: AddButtonWidget(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'bnmae304' /* Reset */,
                                                      ),
                                                      icon: Icon(
                                                        Icons.refresh,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 16.0,
                                                      ),
                                                      bg1: Color(0xFFAC0900),
                                                      bg2: Color(0xFFEB0000),
                                                      height: 30,
                                                      width: 85,
                                                      fontSize: 12,
                                                      iconSize: 16,
                                                    ),
                                                  ),
                                                ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 0.0),
                                      child: StickyHeader(
                                        overlapHeaders: false,
                                        header: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tqcbff6a' /* Severity */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dxjmrgy2' /* Name */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '93adyu5y' /* Date & Time */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall,
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                ))
                                                  Expanded(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'of7ihrd2' /* IP Address */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall,
                                                    ),
                                                  ),
                                                Expanded(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pwudsr5e' /* Object */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gtuuor9k' /* Event Type */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wzlxnuln' /* Action */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                        content: SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (_model.filterList == 'hide')
                                                StreamBuilder<
                                                    List<ActivityLogRecord>>(
                                                  stream:
                                                      queryActivityLogRecord(
                                                    queryBuilder:
                                                        (activityLogRecord) =>
                                                            activityLogRecord
                                                                .orderBy(
                                                                    'createdAt',
                                                                    descending:
                                                                        true),
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
                                                    List<ActivityLogRecord>
                                                        listViewActivityLogRecordList =
                                                        snapshot.data!;
                                                    if (listViewActivityLogRecordList
                                                        .isEmpty) {
                                                      return Center(
                                                        child:
                                                            EmptyMessageWidget(),
                                                      );
                                                    }
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewActivityLogRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewActivityLogRecord =
                                                            listViewActivityLogRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      2.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      0.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          1.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            100.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            if (listViewActivityLogRecord.eventType ==
                                                                                'Modified')
                                                                              AlignedTooltip(
                                                                                content: Padding(
                                                                                    padding: EdgeInsets.all(6.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'dpf7b90c' /* Medium */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                          ),
                                                                                    )),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: Duration(milliseconds: 50),
                                                                                showDuration: Duration(milliseconds: 100),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Icon(
                                                                                  Icons.warning_amber_rounded,
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  size: 30.0,
                                                                                ),
                                                                              ),
                                                                            if ((listViewActivityLogRecord.eventType == 'Archived') ||
                                                                                (listViewActivityLogRecord.eventType == 'Deleted'))
                                                                              AlignedTooltip(
                                                                                content: Padding(
                                                                                    padding: EdgeInsets.all(6.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'oxsrd5as' /* High */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                          ),
                                                                                    )),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: Duration(milliseconds: 50),
                                                                                showDuration: Duration(milliseconds: 100),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Icon(
                                                                                  Icons.warning_amber_rounded,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  size: 30.0,
                                                                                ),
                                                                              ),
                                                                            if ((listViewActivityLogRecord.eventType == 'Created') ||
                                                                                (listViewActivityLogRecord.eventType == 'Login'))
                                                                              AlignedTooltip(
                                                                                content: Padding(
                                                                                    padding: EdgeInsets.all(6.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'hchctsk1' /* Low */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                          ),
                                                                                    )),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: Duration(milliseconds: 50),
                                                                                showDuration: Duration(milliseconds: 100),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Icon(
                                                                                  Icons.warning_amber_rounded,
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  size: 30.0,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(listViewActivityLogRecord.userRef!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final rowUsersRecord =
                                                                                snapshot.data!;
                                                                            return Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    child: OctoImage(
                                                                                      placeholderBuilder: OctoPlaceholder.blurHash(
                                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drips-backend-bevoma/assets/xceuzrlf9wgg/Placeholder_view_vector.svg.png',
                                                                                      ),
                                                                                      image: CachedNetworkImageProvider(
                                                                                        valueOrDefault<String>(
                                                                                          rowUsersRecord.photoUrl,
                                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drips-backend-bevoma/assets/xceuzrlf9wgg/Placeholder_view_vector.svg.png',
                                                                                        ),
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
                                                                                        rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                          maxChars: 32,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              fontSize: 14.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                      AutoSizeText(
                                                                                        rowUsersRecord.userRole.maybeHandleOverflow(
                                                                                          maxChars: 32,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                child: AutoSizeText(
                                                                                  dateTimeFormat(
                                                                                    'd/M h:mm a',
                                                                                    listViewActivityLogRecord.createdAt!,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ).maybeHandleOverflow(maxChars: 32),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                              tablet: false,
                                                                            ))
                                                                              Expanded(
                                                                                child: AutoSizeText(
                                                                                  listViewActivityLogRecord.userIP.maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                child: AutoSizeText(
                                                                                  listViewActivityLogRecord.object.maybeHandleOverflow(maxChars: 32),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: AutoSizeText(
                                                                                listViewActivityLogRecord.eventType.maybeHandleOverflow(maxChars: 32),
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Builder(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: WebViewAware(
                                                                                          child: GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                              child: ActivityLogDetailsWidget(
                                                                                                activityLog: listViewActivityLogRecord,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
                                                                                child: AddButtonWidget(
                                                                                  key: Key('Keyr9e_${listViewIndex}_of_${listViewActivityLogRecordList.length}'),
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    '44bnnvsq' /* View */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.remove_red_eye,
                                                                                    color: Colors.white,
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  bg1: Color(0xFF1D71AE),
                                                                                  bg2: Color(0xFF1AA6FF),
                                                                                  height: 40,
                                                                                  width: 100,
                                                                                  fontSize: 14,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            4.0)),
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
                                              if (_model.filterList == 'show')
                                                StreamBuilder<
                                                    List<ActivityLogRecord>>(
                                                  stream:
                                                      queryActivityLogRecord(
                                                    queryBuilder:
                                                        (activityLogRecord) =>
                                                            activityLogRecord
                                                                .where(
                                                                  'createdAt',
                                                                  isGreaterThanOrEqualTo:
                                                                      _model
                                                                          .datePicked1,
                                                                )
                                                                .where(
                                                                  'eventType',
                                                                  isEqualTo: _model
                                                                      .dropDownValue1,
                                                                )
                                                                .where(
                                                                  'object',
                                                                  isEqualTo: _model
                                                                      .dropDownValue2,
                                                                )
                                                                .where(
                                                                  'createdAt',
                                                                  isLessThanOrEqualTo:
                                                                      _model
                                                                          .datePicked2,
                                                                )
                                                                .orderBy(
                                                                    'createdAt'),
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
                                                    List<ActivityLogRecord>
                                                        listViewActivityLogRecordList =
                                                        snapshot.data!;
                                                    if (listViewActivityLogRecordList
                                                        .isEmpty) {
                                                      return Center(
                                                        child:
                                                            EmptyMessageWidget(),
                                                      );
                                                    }
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewActivityLogRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewActivityLogRecord =
                                                            listViewActivityLogRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      2.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      0.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          1.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            100.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            if (listViewActivityLogRecord.eventType ==
                                                                                'Modified')
                                                                              AlignedTooltip(
                                                                                content: Padding(
                                                                                    padding: EdgeInsets.all(6.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'r64zyi6j' /* Medium */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                          ),
                                                                                    )),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: Duration(milliseconds: 50),
                                                                                showDuration: Duration(milliseconds: 100),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Icon(
                                                                                  Icons.warning_amber_rounded,
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  size: 30.0,
                                                                                ),
                                                                              ),
                                                                            if ((listViewActivityLogRecord.eventType == 'Archived') ||
                                                                                (listViewActivityLogRecord.eventType == 'Deleted'))
                                                                              AlignedTooltip(
                                                                                content: Padding(
                                                                                    padding: EdgeInsets.all(6.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '9lww3r8o' /* High */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                          ),
                                                                                    )),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: Duration(milliseconds: 50),
                                                                                showDuration: Duration(milliseconds: 100),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Icon(
                                                                                  Icons.warning_amber_rounded,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  size: 30.0,
                                                                                ),
                                                                              ),
                                                                            if ((listViewActivityLogRecord.eventType == 'Created') ||
                                                                                (listViewActivityLogRecord.eventType == 'Login'))
                                                                              AlignedTooltip(
                                                                                content: Padding(
                                                                                    padding: EdgeInsets.all(6.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'yhaq5ucf' /* Low */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                          ),
                                                                                    )),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: Duration(milliseconds: 50),
                                                                                showDuration: Duration(milliseconds: 100),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Icon(
                                                                                  Icons.warning_amber_rounded,
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  size: 30.0,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(listViewActivityLogRecord.userRef!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final rowUsersRecord =
                                                                                snapshot.data!;
                                                                            return Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    child: OctoImage(
                                                                                      placeholderBuilder: OctoPlaceholder.blurHash(
                                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drips-backend-bevoma/assets/xceuzrlf9wgg/Placeholder_view_vector.svg.png',
                                                                                      ),
                                                                                      image: CachedNetworkImageProvider(
                                                                                        valueOrDefault<String>(
                                                                                          rowUsersRecord.photoUrl,
                                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/drips-backend-bevoma/assets/xceuzrlf9wgg/Placeholder_view_vector.svg.png',
                                                                                        ),
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
                                                                                        rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                          maxChars: 32,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              fontSize: 14.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                      AutoSizeText(
                                                                                        rowUsersRecord.userRole.maybeHandleOverflow(
                                                                                          maxChars: 32,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                child: AutoSizeText(
                                                                                  dateTimeFormat(
                                                                                    'd/M h:mm a',
                                                                                    listViewActivityLogRecord.createdAt!,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ).maybeHandleOverflow(maxChars: 32),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                              tablet: false,
                                                                            ))
                                                                              Expanded(
                                                                                child: AutoSizeText(
                                                                                  listViewActivityLogRecord.userIP.maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Expanded(
                                                                                child: AutoSizeText(
                                                                                  listViewActivityLogRecord.object.maybeHandleOverflow(maxChars: 32),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: AutoSizeText(
                                                                                listViewActivityLogRecord.eventType.maybeHandleOverflow(maxChars: 32),
                                                                                textAlign: TextAlign.start,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Builder(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: WebViewAware(
                                                                                          child: GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                              child: ActivityLogDetailsWidget(
                                                                                                activityLog: listViewActivityLogRecord,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
                                                                                child: AddButtonWidget(
                                                                                  key: Key('Key6z6_${listViewIndex}_of_${listViewActivityLogRecordList.length}'),
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'iq7bfto7' /* View */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.remove_red_eye,
                                                                                    color: Colors.white,
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  bg1: Color(0xFF1D71AE),
                                                                                  bg2: Color(0xFF1AA6FF),
                                                                                  height: 40,
                                                                                  width: 100,
                                                                                  fontSize: 14,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            4.0)),
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
