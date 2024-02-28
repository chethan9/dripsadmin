import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/drip/classes/add_online_zoom_class/add_online_zoom_class_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'online_zoom_class_list_model.dart';
export 'online_zoom_class_list_model.dart';

class OnlineZoomClassListWidget extends StatefulWidget {
  const OnlineZoomClassListWidget({
    super.key,
    this.courseRef,
    this.classesRef,
  });

  final CourseRecord? courseRef;
  final ClassesRecord? classesRef;

  @override
  State<OnlineZoomClassListWidget> createState() =>
      _OnlineZoomClassListWidgetState();
}

class _OnlineZoomClassListWidgetState extends State<OnlineZoomClassListWidget> {
  late OnlineZoomClassListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnlineZoomClassListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userSubRslt1 = await querySubscriptionRecordOnce(
        queryBuilder: (subscriptionRecord) => subscriptionRecord
            .where(
              'courseRef',
              isEqualTo: widget.courseRef?.reference,
            )
            .where(
              'batchesRef',
              isEqualTo: widget.courseRef?.batchesRef,
            )
            .where(
              'status',
              isEqualTo: 'Ongoing',
            ),
      );
      setState(() {
        _model.enrolCount = _model.userSubRslt1?.length;
      });
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
        title: 'OnlineZoomClassList',
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
                        'y7vd285q' /* Contracts */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
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
                                        .primaryBackground,
                                    colorBgThree: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    colorBgFour: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textOne: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    textTwo: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    textThree: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    textFour: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    colorBgFive: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textFive: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    colorBgSix: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    expand: false,
                                    colorBgPrimarydropdown:
                                        FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                              ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 20.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: RichText(
                                                      textScaleFactor:
                                                          MediaQuery.of(context)
                                                              .textScaleFactor,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'wynybh1b' /* Course */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .grayIcon,
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                            mouseCursor:
                                                                SystemMouseCursors
                                                                    .click,
                                                            recognizer:
                                                                TapGestureRecognizer()
                                                                  ..onTap =
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'Course',
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
                                                                  },
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'ihchepd7' /*  >  */,
                                                            ),
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                '${widget.courseRef?.name}',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent2,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'wrq0apxc' /*  >   */,
                                                            ),
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'hipp1ne0' /* Class */,
                                                            ),
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                            ),
                                                            mouseCursor:
                                                                SystemMouseCursors
                                                                    .click,
                                                            recognizer:
                                                                TapGestureRecognizer()
                                                                  ..onTap =
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'Classes',
                                                                      queryParameters:
                                                                          {
                                                                        'courseRef':
                                                                            serializeParam(
                                                                          widget
                                                                              .courseRef,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        'courseRef':
                                                                            widget.courseRef,
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
                                                                  },
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'mksr4gb4' /*  >  */,
                                                            ),
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                '${widget.classesRef?.className}',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent2,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'qwu6t1xv' /*  >  */,
                                                            ),
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'k74prlkf' /* Zoom Class */,
                                                            ),
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent2,
                                                            ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Builder(
                                                    builder: (context) =>
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
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () => _model
                                                                          .unfocusNode
                                                                          .canRequestFocus
                                                                      ? FocusScope.of(
                                                                              context)
                                                                          .requestFocus(_model
                                                                              .unfocusNode)
                                                                      : FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        400.0,
                                                                    child:
                                                                        AddOnlineZoomClassWidget(
                                                                      courseRef:
                                                                          widget
                                                                              .courseRef!,
                                                                      classesRef:
                                                                          widget
                                                                              .classesRef!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .addButtonModel1,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child: AddButtonWidget(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'l1a0xs3r' /* Add */,
                                                          ),
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                          ),
                                                          height: 36,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 16.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 4.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.94,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final zoomList1 = widget
                                                              .classesRef
                                                              ?.zoomClassList
                                                              ?.sortedList((e) =>
                                                                  e.createdAt!)
                                                              ?.toList() ??
                                                          [];
                                                      if (zoomList1.isEmpty) {
                                                        return EmptyMessageWidget();
                                                      }
                                                      return InkWell(
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
                                                            _model.serialNum =
                                                                zoomList1
                                                                    .length;
                                                          });
                                                        },
                                                        child: ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              zoomList1.length,
                                                          itemBuilder: (context,
                                                              zoomList1Index) {
                                                            final zoomList1Item =
                                                                zoomList1[
                                                                    zoomList1Index];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          0.0),
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
                                                                          3.0,
                                                                      color: Color(
                                                                          0x20000000),
                                                                      offset: Offset(
                                                                          0.0,
                                                                          1.0),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Column(
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
                                                                    Opacity(
                                                                      opacity:
                                                                          8.0,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    zoomList1Item.topic,
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 16.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.videocam_rounded,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 20.0,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Meeting ID: ',
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 14.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '${zoomList1Item.id}',
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 14.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 30.0,
                                                                                        child: VerticalDivider(
                                                                                          thickness: 1.0,
                                                                                          color: FlutterFlowTheme.of(context).accent2,
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.key_rounded,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 18.0,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Password: ',
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 14.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '${zoomList1Item.password}',
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 14.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ].divide(SizedBox(width: 8.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 12.0)),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '18w4if90' /* Copy Meeting link */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                              fontSize: 14.0,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 8.0,
                                                                                    buttonSize: 36.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).accent3,
                                                                                    icon: Icon(
                                                                                      Icons.content_copy,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 18.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await Clipboard.setData(ClipboardData(text: zoomList1Item.joinUrl));
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Link successfully copied.',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          duration: Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await launchURL(zoomList1Item.startUrl);
                                                                                  },
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'umbcfih9' /* Start Meeting */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.videocam_rounded,
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    height: 36.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).grayIcon,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                if (responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                  tabletLandscape: false,
                                                                                  desktop: false,
                                                                                ))
                                                                                  FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      context.pushNamed(
                                                                                        'ClassBooking',
                                                                                        queryParameters: {
                                                                                          'courseRef': serializeParam(
                                                                                            widget.courseRef,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                          'classRef': serializeParam(
                                                                                            widget.classesRef,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                          'bookDate': serializeParam(
                                                                                            zoomList1Item.date,
                                                                                            ParamType.DateTime,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'courseRef': widget.courseRef,
                                                                                          'classRef': widget.classesRef,
                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.fade,
                                                                                            duration: Duration(milliseconds: 0),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      'plpwida8' /* Enrolled Users */,
                                                                                    ),
                                                                                    icon: Icon(
                                                                                      Icons.people_alt,
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 36.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).orange,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            fontSize: 14.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'twr8unke' /* Delete */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                              fontSize: 14.0,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: Builder(
                                                                                    builder: (context) => FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 8.0,
                                                                                      buttonSize: 40.0,
                                                                                      icon: Icon(
                                                                                        Icons.delete_forever,
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        FFAppState().zoomClass = widget.classesRef!.zoomClassList.toList().cast<ZoomClassesStruct>();
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
                                                                                                    width: 400.0,
                                                                                                    child: DeleteMessage1Widget(
                                                                                                      classesZoomRef: widget.classesRef,
                                                                                                      zoomIndex: zoomList1Index,
                                                                                                      courseZoomRef: widget.courseRef,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 8.0)).around(SizedBox(width: 8.0)),
                                                                            ),
                                                                          ],
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
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              zoomList1Item.topic,
                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 16.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await Clipboard.setData(ClipboardData(text: zoomList1Item.joinUrl));
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Link successfully copied.',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              duration: Duration(milliseconds: 4000),
                                                                                              backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                        child: AddButtonWidget(
                                                                                          key: Key('Keyvl9_${zoomList1Index}_of_${zoomList1.length}'),
                                                                                          text: FFLocalizations.of(context).getText(
                                                                                            'qxe4fefo' /* Copy Link */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.content_copy,
                                                                                            color: Colors.white,
                                                                                            size: 16.0,
                                                                                          ),
                                                                                          bg1: FlutterFlowTheme.of(context).primary600,
                                                                                          bg2: FlutterFlowTheme.of(context).grayIcon,
                                                                                          height: 40,
                                                                                          width: 120,
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                      ),
                                                                                      FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await launchURL(zoomList1Item.startUrl);
                                                                                        },
                                                                                        text: FFLocalizations.of(context).getText(
                                                                                          'caf0xwxg' /* Start Meeting */,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          width: 145.0,
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 14.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                              ),
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Builder(
                                                                                          builder: (context) => InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              FFAppState().zoomClass = widget.classesRef!.zoomClassList.toList().cast<ZoomClassesStruct>();
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
                                                                                                          width: 400.0,
                                                                                                          child: DeleteMessage1Widget(
                                                                                                            classesZoomRef: widget.classesRef,
                                                                                                            zoomIndex: zoomList1Index,
                                                                                                            courseZoomRef: widget.courseRef,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(10.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.delete_outline,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      size: 20.0,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                    ].divide(SizedBox(width: 8.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.video_settings,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 20.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Meeting ID: ',
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '${zoomList1Item.id}',
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.eye,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 18.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Password: ',
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '${zoomList1Item.password}',
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'ClassBooking',
                                                                                        queryParameters: {
                                                                                          'courseRef': serializeParam(
                                                                                            widget.courseRef,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                          'classRef': serializeParam(
                                                                                            widget.classesRef,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                          'bookDate': serializeParam(
                                                                                            zoomList1Item.date,
                                                                                            ParamType.DateTime,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'courseRef': widget.courseRef,
                                                                                          'classRef': widget.classesRef,
                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.fade,
                                                                                            duration: Duration(milliseconds: 0),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: AddButtonWidget(
                                                                                      key: Key('Keyvg8_${zoomList1Index}_of_${zoomList1.length}'),
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        '9mu0jwlf' /* Member(Online) */,
                                                                                      ),
                                                                                      icon: Icon(
                                                                                        Icons.desktop_mac_rounded,
                                                                                        color: Colors.white,
                                                                                        size: 16.0,
                                                                                      ),
                                                                                      bg1: Color(0xFF1D71AE),
                                                                                      bg2: Color(0xFF1AA6FF),
                                                                                      height: 40,
                                                                                      width: 180,
                                                                                      fontSize: 14,
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
                                                                              ),
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
                                                      );
                                                    },
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
