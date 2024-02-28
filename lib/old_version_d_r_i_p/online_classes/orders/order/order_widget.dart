import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'order_model.dart';
export 'order_model.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({
    super.key,
    this.orderType,
    this.coupoRef,
  });

  final String? orderType;
  final CouponRecord? coupoRef;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget>
    with TickerProviderStateMixin {
  late OrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderModel());

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

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        title: 'order',
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
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    automaticallyImplyLeading: false,
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'e1tt0eux' /* Dashboard */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displaySmallFamily,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .displaySmallFamily),
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation']!),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
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
                                    textFour: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    colorBgFive: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textFive: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    colorBgSix: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    colorBgEight: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    expand: false,
                                  ),
                                ),
                              Expanded(
                                flex: 10,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            12.0, 1.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (widget.orderType ==
                                                          'coupon')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 60.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .chevron_left,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 30.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'Coupon',
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
                                                            },
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    28.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xixn5ejs' /* Order */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 45.0,
                                                    decoration: BoxDecoration(),
                                                    child: ListView(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  final _datePicked1Date =
                                                                      await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        getCurrentTimestamp,
                                                                    firstDate:
                                                                        DateTime(
                                                                            1900),
                                                                    lastDate:
                                                                        getCurrentTimestamp,
                                                                  );

                                                                  if (_datePicked1Date !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked1 =
                                                                          DateTime(
                                                                        _datePicked1Date
                                                                            .year,
                                                                        _datePicked1Date
                                                                            .month,
                                                                        _datePicked1Date
                                                                            .day,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: _model.datePicked1 !=
                                                                        null
                                                                    ? 'From : ${dateTimeFormat(
                                                                        'yMMMd',
                                                                        _model
                                                                            .datePicked1,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      )}'
                                                                    : 'From date',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 30.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  final _datePicked2Date =
                                                                      await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        getCurrentTimestamp,
                                                                    firstDate:
                                                                        DateTime(
                                                                            1900),
                                                                    lastDate:
                                                                        getCurrentTimestamp,
                                                                  );

                                                                  if (_datePicked2Date !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked2 =
                                                                          DateTime(
                                                                        _datePicked2Date
                                                                            .year,
                                                                        _datePicked2Date
                                                                            .month,
                                                                        _datePicked2Date
                                                                            .day,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: _model.datePicked2 !=
                                                                        null
                                                                    ? 'To : ${dateTimeFormat(
                                                                        'yMMMd',
                                                                        _model
                                                                            .datePicked2,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      )}'
                                                                    : 'To date',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 30.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                              ),
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                                controller: _model
                                                                        .dropDownValueController ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'gamgby0q' /* CAPTURED */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '0q49mg2b' /* CANCELLED */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '8woahpcl' /* Pending */,
                                                                  )
                                                                ],
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.dropDownValue =
                                                                            val),
                                                                width: 150.0,
                                                                height: 30.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          12.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'lrbm7stg' /* Select status... */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    2.0,
                                                                borderRadius:
                                                                    0.0,
                                                                margin: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                              InkWell(
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
                                                                  setState(() {
                                                                    _model.orderFilterShow =
                                                                        'show';
                                                                  });
                                                                },
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .addButtonModel1,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      AddButtonWidget(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'giitukvc' /* Filter */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .filter_alt_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    height: 30,
                                                                    width: 85,
                                                                    fontSize:
                                                                        12,
                                                                    iconSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ),
                                                              if (_model
                                                                      .orderFilterShow ==
                                                                  'show')
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .dropDownValueController
                                                                          ?.reset();
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model.orderFilterShow =
                                                                          'pending';
                                                                    });
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .addButtonModel2,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        AddButtonWidget(
                                                                      text: FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '2ddcox7n' /* Reset */,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .refresh,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      bg1: Color(
                                                                          0xFFAC0900),
                                                                      bg2: Color(
                                                                          0xFFEB0000),
                                                                      height:
                                                                          30,
                                                                      width: 85,
                                                                      fontSize:
                                                                          12,
                                                                      iconSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (widget.orderType != 'coupon')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 16.0, 0.0),
                                          child: FutureBuilder<int>(
                                            future: queryOrdersRecordCount(
                                              queryBuilder: (ordersRecord) =>
                                                  ordersRecord.orderBy(
                                                      'createdAt',
                                                      descending: true),
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
                                              int allOrderCount =
                                                  snapshot.data!;
                                              return StickyHeader(
                                                overlapHeaders: false,
                                                header: Visibility(
                                                  visible: allOrderCount > 0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                            Expanded(
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'tyx1jd7b' /* Order ID */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                            Expanded(
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'mkxqqqa1' /* Name */,
                                                                ),
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
                                                                  '29352ya1' /* Order Date */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          Expanded(
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '2z5nmjee' /* Status */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ys9s46rr' /* Total */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '4mkdhyi7' /* Payment Method */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00F4F6FC),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                content: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model
                                                            .orderFilterShow ==
                                                        'pending')
                                                      PagedListView<
                                                          DocumentSnapshot<
                                                              Object?>?,
                                                          OrdersRecord>(
                                                        pagingController: _model
                                                            .setListViewController2(
                                                          OrdersRecord
                                                              .collection
                                                              .orderBy(
                                                                  'createdAt',
                                                                  descending:
                                                                      true),
                                                        ),
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        reverse: false,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        builderDelegate:
                                                            PagedChildBuilderDelegate<
                                                                OrdersRecord>(
                                                          // Customize what your widget looks like when it's loading the first page.
                                                          firstPageProgressIndicatorBuilder:
                                                              (_) => Center(
                                                            child: SizedBox(
                                                              width: 10.0,
                                                              height: 10.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          // Customize what your widget looks like when it's loading another page.
                                                          newPageProgressIndicatorBuilder:
                                                              (_) => Center(
                                                            child: SizedBox(
                                                              width: 10.0,
                                                              height: 10.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          noItemsFoundIndicatorBuilder:
                                                              (_) => Center(
                                                            child:
                                                                EmptyMessageWidget(),
                                                          ),
                                                          itemBuilder: (context,
                                                              _,
                                                              listViewIndex) {
                                                            final listViewOrdersRecord = _model
                                                                    .listViewPagingController2!
                                                                    .itemList![
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
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          0.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      offset: Offset(
                                                                          0.0,
                                                                          1.0),
                                                                    )
                                                                  ],
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: StreamBuilder<
                                                                      UsersRecord>(
                                                                    stream: UsersRecord.getDocument(
                                                                        listViewOrdersRecord
                                                                            .userRef!),
                                                                    builder:
                                                                        (context,
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
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0x00DF473F),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final rowUsersRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                ))
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'Singleorder',
                                                                                        queryParameters: {
                                                                                          'orderRef': serializeParam(
                                                                                            listViewOrdersRecord,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'orderRef': listViewOrdersRecord,
                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.fade,
                                                                                            duration: Duration(milliseconds: 0),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Text(
                                                                                      listViewOrdersRecord.order,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).primary600,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                InkWell(
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
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                      duration: Duration(milliseconds: 0),
                                                                                    ),
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: AutoSizeText(
                                                                                rowUsersRecord.displayName,
                                                                                style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                              ),
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
                                                                            Expanded(
                                                                              child: Text(
                                                                                dateTimeFormat(
                                                                                  'd MMM, y H:mm a',
                                                                                  listViewOrdersRecord.createdAt!,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 15.0,
                                                                                  height: 15.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: () {
                                                                                      if ((listViewOrdersRecord.status == 'Paid') || (listViewOrdersRecord.status == 'CAPTURED')) {
                                                                                        return _model.colorPaid;
                                                                                      } else if (listViewOrdersRecord.status == 'Pending') {
                                                                                        return _model.colorPending;
                                                                                      } else {
                                                                                        return _model.colorCancelled;
                                                                                      }
                                                                                    }(),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      listViewOrdersRecord.status,
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: () {
                                                                                              if ((listViewOrdersRecord.status == 'Paid') || (listViewOrdersRecord.status == 'CAPTURED')) {
                                                                                                return _model.colorPaid;
                                                                                              } else if (listViewOrdersRecord.status == 'Pending') {
                                                                                                return _model.colorPending;
                                                                                              } else {
                                                                                                return _model.colorCancelled;
                                                                                              }
                                                                                            }(),
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              '${listViewOrdersRecord.cartTotal.toString()} KWD',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  '${listViewOrdersRecord.paymentmethod} - ${listViewOrdersRecord.paymenttype}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'Singleorder',
                                                                                      queryParameters: {
                                                                                        'orderRef': serializeParam(
                                                                                          listViewOrdersRecord,
                                                                                          ParamType.Document,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        'orderRef': listViewOrdersRecord,
                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.fade,
                                                                                          duration: Duration(milliseconds: 0),
                                                                                        ),
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  child: AddButtonWidget(
                                                                                    key: Key('Keyprx_${listViewIndex}_of_${_model.listViewPagingController2!.itemList!.length}'),
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      'pavc1e88' /* View */,
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
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    if (_model
                                                            .orderFilterShow ==
                                                        'show')
                                                      PagedListView<
                                                          DocumentSnapshot<
                                                              Object?>?,
                                                          OrdersRecord>(
                                                        pagingController: _model
                                                            .setListViewController3(
                                                          OrdersRecord
                                                              .collection
                                                              .where(
                                                                'createdAt',
                                                                isGreaterThanOrEqualTo:
                                                                    _model
                                                                        .datePicked1,
                                                              )
                                                              .where(
                                                                'status',
                                                                isEqualTo: _model
                                                                    .dropDownValue,
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
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        reverse: false,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        builderDelegate:
                                                            PagedChildBuilderDelegate<
                                                                OrdersRecord>(
                                                          // Customize what your widget looks like when it's loading the first page.
                                                          firstPageProgressIndicatorBuilder:
                                                              (_) => Center(
                                                            child: SizedBox(
                                                              width: 10.0,
                                                              height: 10.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          // Customize what your widget looks like when it's loading another page.
                                                          newPageProgressIndicatorBuilder:
                                                              (_) => Center(
                                                            child: SizedBox(
                                                              width: 10.0,
                                                              height: 10.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          noItemsFoundIndicatorBuilder:
                                                              (_) => Center(
                                                            child:
                                                                EmptyMessageWidget(),
                                                          ),
                                                          itemBuilder: (context,
                                                              _,
                                                              listViewIndex) {
                                                            final listViewOrdersRecord = _model
                                                                    .listViewPagingController3!
                                                                    .itemList![
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
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          0.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      offset: Offset(
                                                                          0.0,
                                                                          1.0),
                                                                    )
                                                                  ],
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: StreamBuilder<
                                                                      UsersRecord>(
                                                                    stream: UsersRecord.getDocument(
                                                                        listViewOrdersRecord
                                                                            .userRef!),
                                                                    builder:
                                                                        (context,
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
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                Color(0x00DF473F),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final rowUsersRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                if (responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                ))
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'Singleorder',
                                                                                        queryParameters: {
                                                                                          'orderRef': serializeParam(
                                                                                            listViewOrdersRecord,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'orderRef': listViewOrdersRecord,
                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.fade,
                                                                                            duration: Duration(milliseconds: 0),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Text(
                                                                                      listViewOrdersRecord.order,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).primary600,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                InkWell(
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
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                      duration: Duration(milliseconds: 0),
                                                                                    ),
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: AutoSizeText(
                                                                                rowUsersRecord.displayName,
                                                                                style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                              ),
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
                                                                            Expanded(
                                                                              child: Text(
                                                                                dateTimeFormat(
                                                                                  'd MMM, y H:mm a',
                                                                                  listViewOrdersRecord.createdAt!,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 15.0,
                                                                                  height: 15.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: () {
                                                                                      if ((listViewOrdersRecord.status == 'Paid') || (listViewOrdersRecord.status == 'CAPTURED')) {
                                                                                        return _model.colorPaid;
                                                                                      } else if (listViewOrdersRecord.status == 'Pending') {
                                                                                        return _model.colorPending;
                                                                                      } else {
                                                                                        return _model.colorCancelled;
                                                                                      }
                                                                                    }(),
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      listViewOrdersRecord.status,
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: () {
                                                                                              if ((listViewOrdersRecord.status == 'Paid') || (listViewOrdersRecord.status == 'CAPTURED')) {
                                                                                                return _model.colorPaid;
                                                                                              } else if (listViewOrdersRecord.status == 'Pending') {
                                                                                                return _model.colorPending;
                                                                                              } else {
                                                                                                return _model.colorCancelled;
                                                                                              }
                                                                                            }(),
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              '${listViewOrdersRecord.cartTotal.toString()} KWD',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  '${listViewOrdersRecord.paymentmethod} - ${listViewOrdersRecord.paymenttype}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'Singleorder',
                                                                                      queryParameters: {
                                                                                        'orderRef': serializeParam(
                                                                                          listViewOrdersRecord,
                                                                                          ParamType.Document,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        'orderRef': listViewOrdersRecord,
                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.fade,
                                                                                          duration: Duration(milliseconds: 0),
                                                                                        ),
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  child: AddButtonWidget(
                                                                                    key: Key('Key9gx_${listViewIndex}_of_${_model.listViewPagingController3!.itemList!.length}'),
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      'wmi01c10' /* View */,
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
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 8.0)),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      if (widget.orderType == 'coupon')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 16.0, 0.0),
                                          child: StickyHeader(
                                            overlapHeaders: false,
                                            header: Visibility(
                                              visible: widget.coupoRef!.orderRef
                                                      .length >
                                                  0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    topRight:
                                                        Radius.circular(8.0),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'l5xyjux2' /* Order ID */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'tiexzp2v' /* Name */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                              '4hns8dql' /* Order Date */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wy2pvs07' /* Status */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'zcxwyo1w' /* Total */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7hailv79' /* Payment Method */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          width: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00F4F6FC),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            content: Builder(
                                              builder: (context) {
                                                final orderList = widget
                                                        .coupoRef?.orderRef
                                                        ?.toList() ??
                                                    [];
                                                if (orderList.isEmpty) {
                                                  return Center(
                                                    child: EmptyMessageWidget(),
                                                  );
                                                }
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: orderList.length,
                                                  itemBuilder: (context,
                                                      orderListIndex) {
                                                    final orderListItem =
                                                        orderList[
                                                            orderListIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  2.0),
                                                      child: StreamBuilder<
                                                          OrdersRecord>(
                                                        stream: OrdersRecord
                                                            .getDocument(
                                                                orderListItem),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 10.0,
                                                                height: 10.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    Color(
                                                                        0x00DF473F),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final containerOrdersRecord =
                                                              snapshot.data!;
                                                          return Container(
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
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        containerOrdersRecord
                                                                            .userRef!),
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
                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
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
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  context.pushNamed(
                                                                                    'Singleorder',
                                                                                    queryParameters: {
                                                                                      'orderRef': serializeParam(
                                                                                        containerOrdersRecord,
                                                                                        ParamType.Document,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                    extra: <String, dynamic>{
                                                                                      'orderRef': containerOrdersRecord,
                                                                                      kTransitionInfoKey: TransitionInfo(
                                                                                        hasTransition: true,
                                                                                        transitionType: PageTransitionType.fade,
                                                                                        duration: Duration(milliseconds: 0),
                                                                                      ),
                                                                                    },
                                                                                  );
                                                                                },
                                                                                child: Text(
                                                                                  containerOrdersRecord.order,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).primary600,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            InkWell(
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
                                                                                kTransitionInfoKey: TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                  duration: Duration(milliseconds: 0),
                                                                                ),
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              AutoSizeText(
                                                                            rowUsersRecord.displayName,
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                ),
                                                                          ),
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
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat(
                                                                              'd MMM, y H:mm a',
                                                                              containerOrdersRecord.createdAt!,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.0,
                                                                              height: 15.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if ((containerOrdersRecord.status == 'Paid') || (containerOrdersRecord.status == 'CAPTURED')) {
                                                                                    return _model.colorPaid;
                                                                                  } else if (containerOrdersRecord.status == 'Pending') {
                                                                                    return _model.colorPending;
                                                                                  } else {
                                                                                    return _model.colorCancelled;
                                                                                  }
                                                                                }(),
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                child: Text(
                                                                                  containerOrdersRecord.status,
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: () {
                                                                                          if ((containerOrdersRecord.status == 'Paid') || (containerOrdersRecord.status == 'CAPTURED')) {
                                                                                            return _model.colorPaid;
                                                                                          } else if (containerOrdersRecord.status == 'Pending') {
                                                                                            return _model.colorPending;
                                                                                          } else {
                                                                                            return _model.colorCancelled;
                                                                                          }
                                                                                        }(),
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          '${containerOrdersRecord.cartTotal.toString()} KWD',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              '${containerOrdersRecord.paymentmethod} - ${containerOrdersRecord.paymenttype}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  'Singleorder',
                                                                                  queryParameters: {
                                                                                    'orderRef': serializeParam(
                                                                                      containerOrdersRecord,
                                                                                      ParamType.Document,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'orderRef': containerOrdersRecord,
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                      duration: Duration(milliseconds: 0),
                                                                                    ),
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: AddButtonWidget(
                                                                                key: Key('Key326_${orderListIndex}_of_${orderList.length}'),
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  '34z3b3ko' /* View */,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
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
          ),
        ));
  }
}
