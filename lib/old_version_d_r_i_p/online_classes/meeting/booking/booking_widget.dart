import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/delete_message/delete_message_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'booking_model.dart';
export 'booking_model.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({
    super.key,
    this.meetingRef,
  });

  final MeetingRecord? meetingRef;

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  late BookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingModel());

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
        title: 'Booking',
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
                        'dc8zohy6' /* Contracts */,
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
                if ((MediaQuery.sizeOf(context).width > 1070.0) &&
                    responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
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
                                      .primaryBackground,
                                  expand: false,
                                ),
                              ),
                            Expanded(
                              child: SingleChildScrollView(
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
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 60.0,
                                            icon: Icon(
                                              Icons.chevron_left,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                'Meeting',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'mi12bado' /* Booking */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.bookingState =
                                                        'upcoming';
                                                  });
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mo8pyjhu' /* Upcoming */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: _model
                                                                        .bookingState ==
                                                                    'upcoming'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumFamily),
                                                          ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: FutureBuilder<int>(
                                                  future:
                                                      queryMeetingBookedRecordCount(
                                                    queryBuilder:
                                                        (meetingBookedRecord) =>
                                                            meetingBookedRecord
                                                                .where(
                                                                  'meetingRef',
                                                                  isEqualTo: widget
                                                                      .meetingRef
                                                                      ?.reference,
                                                                )
                                                                .where(
                                                                  'bookedDate',
                                                                  isGreaterThan:
                                                                      functions.getDateForSales(
                                                                          getCurrentTimestamp,
                                                                          1),
                                                                )
                                                                .orderBy(
                                                                    'bookedDate',
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
                                                    int textCount =
                                                        snapshot.data!;
                                                    return Text(
                                                      '(${textCount.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 24.0,
                                            child: VerticalDivider(
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.bookingState =
                                                        'archived';
                                                  });
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ev80r4l3' /* Archived */,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: _model
                                                                        .bookingState ==
                                                                    'archived'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumFamily),
                                                          ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: FutureBuilder<int>(
                                                  future:
                                                      queryMeetingBookedRecordCount(
                                                    queryBuilder:
                                                        (meetingBookedRecord) =>
                                                            meetingBookedRecord
                                                                .where(
                                                                  'meetingRef',
                                                                  isEqualTo: widget
                                                                      .meetingRef
                                                                      ?.reference,
                                                                )
                                                                .where(
                                                                  'bookedDate',
                                                                  isLessThanOrEqualTo:
                                                                      functions.getDateForSales(
                                                                          getCurrentTimestamp,
                                                                          1),
                                                                )
                                                                .orderBy(
                                                                    'bookedDate',
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
                                                    int textCount =
                                                        snapshot.data!;
                                                    return Text(
                                                      '(${textCount.toString()})',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 4.0)),
                                      ),
                                    ),
                                    if ((_model.bookingState == 'upcoming') &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: FutureBuilder<int>(
                                              future:
                                                  queryMeetingBookedRecordCount(
                                                queryBuilder:
                                                    (meetingBookedRecord) =>
                                                        meetingBookedRecord
                                                            .where(
                                                              'meetingRef',
                                                              isEqualTo: widget
                                                                  .meetingRef
                                                                  ?.reference,
                                                            )
                                                            .where(
                                                              'bookedDate',
                                                              isGreaterThan: functions
                                                                  .getDateForSales(
                                                                      getCurrentTimestamp,
                                                                      1),
                                                            )
                                                            .orderBy(
                                                                'bookedDate',
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
                                                int columnCount =
                                                    snapshot.data!;
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (columnCount > 0)
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 150.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'gfxjwmjm' /* Date */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 200.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'fhcuexl6' /* Session */,
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 270.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                    tablet:
                                                                        false,
                                                                  ),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'sq510doh' /* User Details */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'zjyza8hi' /* Remarks */,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    StreamBuilder<
                                                        List<
                                                            MeetingBookedRecord>>(
                                                      stream:
                                                          queryMeetingBookedRecord(
                                                        queryBuilder: (meetingBookedRecord) =>
                                                            meetingBookedRecord
                                                                .where(
                                                                  'meetingRef',
                                                                  isEqualTo: widget
                                                                      .meetingRef
                                                                      ?.reference,
                                                                )
                                                                .where(
                                                                  'bookedDate',
                                                                  isGreaterThan:
                                                                      functions.getDateForSales(
                                                                          getCurrentTimestamp,
                                                                          1),
                                                                )
                                                                .orderBy(
                                                                    'bookedDate',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<MeetingBookedRecord>
                                                            listViewMeetingBookedRecordList =
                                                            snapshot.data!;
                                                        if (listViewMeetingBookedRecordList
                                                            .isEmpty) {
                                                          return Center(
                                                            child:
                                                                EmptyMessageWidget(),
                                                          );
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewMeetingBookedRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewMeetingBookedRecord =
                                                                listViewMeetingBookedRecordList[
                                                                    listViewIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
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
                                                                          0.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      offset: Offset(
                                                                          0.0,
                                                                          1.0),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                150.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                    child: AutoSizeText(
                                                                                      dateTimeFormat(
                                                                                        'MMMEd',
                                                                                        listViewMeetingBookedRecord.bookedDate!,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      ).maybeHandleOverflow(maxChars: 32),
                                                                                      textAlign: TextAlign.center,
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 16.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  AutoSizeText(
                                                                                    dateTimeFormat(
                                                                                      'd',
                                                                                      listViewMeetingBookedRecord.bookedDate!,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ).maybeHandleOverflow(maxChars: 32),
                                                                                    textAlign: TextAlign.center,
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 26.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                180.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00FFFFFF),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.access_time_rounded,
                                                                                    color: () {
                                                                                      if (listViewMeetingBookedRecord.sessionTime == 'Morning') {
                                                                                        return Color(0xFFFFB37B);
                                                                                      } else if (listViewMeetingBookedRecord.sessionTime == 'Afternoon') {
                                                                                        return Color(0xFFFFF7AA);
                                                                                      } else {
                                                                                        return Color(0xFFAFC5FF);
                                                                                      }
                                                                                    }(),
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: AutoSizeText(
                                                                                      listViewMeetingBookedRecord.sessionTime.maybeHandleOverflow(maxChars: 32),
                                                                                      textAlign: TextAlign.start,
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                250.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: StreamBuilder<UsersRecord>(
                                                                                    stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                      final imageUsersRecord = snapshot.data!;
                                                                                      return ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(120.0),
                                                                                        child: CachedNetworkImage(
                                                                                          fadeInDuration: Duration(milliseconds: 500),
                                                                                          fadeOutDuration: Duration(milliseconds: 500),
                                                                                          imageUrl: imageUsersRecord.photoUrl,
                                                                                          width: 40.0,
                                                                                          height: 40.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      StreamBuilder<UsersRecord>(
                                                                                        stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                                AutoSizeText(
                                                                                                  rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                                    maxChars: 32,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                          child: StreamBuilder<UsersRecord>(
                                                                                            stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                              final textUsersRecord = snapshot.data!;
                                                                                              return AutoSizeText(
                                                                                                textUsersRecord.email.maybeHandleOverflow(maxChars: 32),
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                    ),
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ))
                                                                                        StreamBuilder<UsersRecord>(
                                                                                          stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                            final textUsersRecord = snapshot.data!;
                                                                                            return AutoSizeText(
                                                                                              textUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                              textAlign: TextAlign.start,
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.format_quote,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: AutoSizeText(
                                                                                        listViewMeetingBookedRecord.remarks.maybeHandleOverflow(maxChars: 32),
                                                                                        textAlign: TextAlign.start,
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
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
                                                                            Container(
                                                                              height: 45.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(10.0),
                                                                                child: InkWell(
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
                                                                                          child: GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: Container(
                                                                                                height: 300.0,
                                                                                                child: DeleteMessageWidget(
                                                                                                  meetingBookedRef: listViewMeetingBookedRecord,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  },
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                        ].divide(SizedBox(width: 8.0)),
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
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (_model.bookingState == 'upcoming')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: FutureBuilder<int>(
                                          future: queryMeetingBookedRecordCount(
                                            queryBuilder:
                                                (meetingBookedRecord) =>
                                                    meetingBookedRecord
                                                        .where(
                                                          'meetingRef',
                                                          isEqualTo: widget
                                                              .meetingRef
                                                              ?.reference,
                                                        )
                                                        .where(
                                                          'bookedDate',
                                                          isGreaterThan: functions
                                                              .getDateForSales(
                                                                  getCurrentTimestamp,
                                                                  1),
                                                        )
                                                        .orderBy('bookedDate',
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
                                            int stickyHeaderCount =
                                                snapshot.data!;
                                            return StickyHeader(
                                              overlapHeaders: false,
                                              header: Visibility(
                                                visible: stickyHeaderCount > 0,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            width: 150.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                              ),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '7fupomrm' /* Date */,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 200.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                              ),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'er4gdk3n' /* Session */,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 270.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'y1nto6mx' /* User Details */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'gbi1m441' /* Remarks */,
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              content: StreamBuilder<
                                                  List<MeetingBookedRecord>>(
                                                stream:
                                                    queryMeetingBookedRecord(
                                                  queryBuilder:
                                                      (meetingBookedRecord) =>
                                                          meetingBookedRecord
                                                              .where(
                                                                'meetingRef',
                                                                isEqualTo: widget
                                                                    .meetingRef
                                                                    ?.reference,
                                                              )
                                                              .where(
                                                                'bookedDate',
                                                                isGreaterThan: functions
                                                                    .getDateForSales(
                                                                        getCurrentTimestamp,
                                                                        1),
                                                              )
                                                              .orderBy(
                                                                  'bookedDate',
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
                                                  List<MeetingBookedRecord>
                                                      listViewMeetingBookedRecordList =
                                                      snapshot.data!;
                                                  if (listViewMeetingBookedRecordList
                                                      .isEmpty) {
                                                    return Center(
                                                      child:
                                                          EmptyMessageWidget(),
                                                    );
                                                  }
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewMeetingBookedRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewMeetingBookedRecord =
                                                          listViewMeetingBookedRecordList[
                                                              listViewIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
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
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                    0.0, 1.0),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            100.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                child: AutoSizeText(
                                                                                  dateTimeFormat(
                                                                                    'MMMEd',
                                                                                    listViewMeetingBookedRecord.bookedDate!,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ).maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 16.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              AutoSizeText(
                                                                                dateTimeFormat(
                                                                                  'd',
                                                                                  listViewMeetingBookedRecord.bookedDate!,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ).maybeHandleOverflow(maxChars: 32),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 26.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            180.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.access_time_rounded,
                                                                                color: () {
                                                                                  if (listViewMeetingBookedRecord.sessionTime == 'Morning') {
                                                                                    return Color(0xFFFFB37B);
                                                                                  } else if (listViewMeetingBookedRecord.sessionTime == 'Afternoon') {
                                                                                    return Color(0xFFFFF7AA);
                                                                                  } else {
                                                                                    return Color(0xFFAFC5FF);
                                                                                  }
                                                                                }(),
                                                                                size: 24.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  listViewMeetingBookedRecord.sessionTime.maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: StreamBuilder<UsersRecord>(
                                                                                stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                  final imageUsersRecord = snapshot.data!;
                                                                                  return ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(120.0),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: Duration(milliseconds: 500),
                                                                                      fadeOutDuration: Duration(milliseconds: 500),
                                                                                      imageUrl: imageUsersRecord.photoUrl,
                                                                                      width: 40.0,
                                                                                      height: 40.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    StreamBuilder<UsersRecord>(
                                                                                      stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                              Expanded(
                                                                                                child: AutoSizeText(
                                                                                                  rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                                    maxChars: 32,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                        child: StreamBuilder<UsersRecord>(
                                                                                          stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                            final textUsersRecord = snapshot.data!;
                                                                                            return AutoSizeText(
                                                                                              textUsersRecord.email.maybeHandleOverflow(maxChars: 32),
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                      tablet: false,
                                                                                    ))
                                                                                      StreamBuilder<UsersRecord>(
                                                                                        stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                          final textUsersRecord = snapshot.data!;
                                                                                          return AutoSizeText(
                                                                                            textUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                            textAlign: TextAlign.start,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.format_quote,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  listViewMeetingBookedRecord.remarks.maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
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
                                                                      Container(
                                                                        height:
                                                                            45.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
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
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: Container(
                                                                                          height: 300.0,
                                                                                          child: DeleteMessageWidget(
                                                                                            meetingBookedRef: listViewMeetingBookedRecord,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          8.0)),
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
                                    if ((_model.bookingState == 'archived') &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: FutureBuilder<int>(
                                              future:
                                                  queryMeetingBookedRecordCount(
                                                queryBuilder:
                                                    (meetingBookedRecord) =>
                                                        meetingBookedRecord
                                                            .where(
                                                              'meetingRef',
                                                              isEqualTo: widget
                                                                  .meetingRef
                                                                  ?.reference,
                                                            )
                                                            .where(
                                                              'bookedDate',
                                                              isLessThanOrEqualTo:
                                                                  functions
                                                                      .getDateForSales(
                                                                          getCurrentTimestamp,
                                                                          1),
                                                            )
                                                            .orderBy(
                                                                'bookedDate',
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
                                                int columnCount =
                                                    snapshot.data!;
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (columnCount > 0)
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 150.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7oemnhc3' /* Date */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 200.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                  ),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'yzurh8ev' /* Session */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 270.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                    tablet:
                                                                        false,
                                                                  ),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'hqcmopeb' /* User Details */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '10z6xs55' /* Remarks */,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall,
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    StreamBuilder<
                                                        List<
                                                            MeetingBookedRecord>>(
                                                      stream:
                                                          queryMeetingBookedRecord(
                                                        queryBuilder: (meetingBookedRecord) =>
                                                            meetingBookedRecord
                                                                .where(
                                                                  'meetingRef',
                                                                  isEqualTo: widget
                                                                      .meetingRef
                                                                      ?.reference,
                                                                )
                                                                .where(
                                                                  'bookedDate',
                                                                  isLessThanOrEqualTo:
                                                                      functions.getDateForSales(
                                                                          getCurrentTimestamp,
                                                                          1),
                                                                )
                                                                .orderBy(
                                                                    'bookedDate',
                                                                    descending:
                                                                        true),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
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
                                                                  Color(
                                                                      0x00DF473F),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<MeetingBookedRecord>
                                                            listViewMeetingBookedRecordList =
                                                            snapshot.data!;
                                                        if (listViewMeetingBookedRecordList
                                                            .isEmpty) {
                                                          return Center(
                                                            child:
                                                                EmptyMessageWidget(),
                                                          );
                                                        }
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewMeetingBookedRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewMeetingBookedRecord =
                                                                listViewMeetingBookedRecordList[
                                                                    listViewIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
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
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                150.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00E0E0E0),
                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                    child: AutoSizeText(
                                                                                      dateTimeFormat(
                                                                                        'MMMEd',
                                                                                        listViewMeetingBookedRecord.bookedDate!,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      ).maybeHandleOverflow(maxChars: 32),
                                                                                      textAlign: TextAlign.center,
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                            fontSize: 16.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  AutoSizeText(
                                                                                    dateTimeFormat(
                                                                                      'd',
                                                                                      listViewMeetingBookedRecord.bookedDate!,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ).maybeHandleOverflow(maxChars: 32),
                                                                                    textAlign: TextAlign.center,
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                          color: FlutterFlowTheme.of(context).accent2,
                                                                                          fontSize: 26.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                180.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00FFFFFF),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.access_time_rounded,
                                                                                    color: () {
                                                                                      if (listViewMeetingBookedRecord.sessionTime == 'Morning') {
                                                                                        return Color(0xFFFFB37B);
                                                                                      } else if (listViewMeetingBookedRecord.sessionTime == 'Afternoon') {
                                                                                        return Color(0xFFFFF7AA);
                                                                                      } else {
                                                                                        return Color(0xFFAFC5FF);
                                                                                      }
                                                                                    }(),
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: AutoSizeText(
                                                                                      listViewMeetingBookedRecord.sessionTime.maybeHandleOverflow(maxChars: 32),
                                                                                      textAlign: TextAlign.start,
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                250.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00FFFFFF),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: StreamBuilder<UsersRecord>(
                                                                                    stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                      final imageUsersRecord = snapshot.data!;
                                                                                      return ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(120.0),
                                                                                        child: CachedNetworkImage(
                                                                                          fadeInDuration: Duration(milliseconds: 500),
                                                                                          fadeOutDuration: Duration(milliseconds: 500),
                                                                                          imageUrl: imageUsersRecord.photoUrl,
                                                                                          width: 40.0,
                                                                                          height: 40.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      StreamBuilder<UsersRecord>(
                                                                                        stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                                AutoSizeText(
                                                                                                  rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                                    maxChars: 32,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                          child: StreamBuilder<UsersRecord>(
                                                                                            stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                              final textUsersRecord = snapshot.data!;
                                                                                              return AutoSizeText(
                                                                                                textUsersRecord.email.maybeHandleOverflow(maxChars: 32),
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                      color: FlutterFlowTheme.of(context).accent2,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                    ),
                                                                                              );
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                        tablet: false,
                                                                                      ))
                                                                                        StreamBuilder<UsersRecord>(
                                                                                          stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                            final textUsersRecord = snapshot.data!;
                                                                                            return AutoSizeText(
                                                                                              textUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                              textAlign: TextAlign.start,
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                100.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).accent3,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.format_quote,
                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: AutoSizeText(
                                                                                        listViewMeetingBookedRecord.remarks.maybeHandleOverflow(maxChars: 32),
                                                                                        textAlign: TextAlign.start,
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
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
                                                                            Container(
                                                                              height: 45.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(10.0),
                                                                                child: InkWell(
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
                                                                                          child: GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: Container(
                                                                                                height: 300.0,
                                                                                                child: DeleteMessageWidget(
                                                                                                  meetingBookedRef: listViewMeetingBookedRecord,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  },
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                        ].divide(SizedBox(width: 8.0)),
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
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (_model.bookingState == 'archived')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: FutureBuilder<int>(
                                          future: queryMeetingBookedRecordCount(
                                            queryBuilder:
                                                (meetingBookedRecord) =>
                                                    meetingBookedRecord
                                                        .where(
                                                          'meetingRef',
                                                          isEqualTo: widget
                                                              .meetingRef
                                                              ?.reference,
                                                        )
                                                        .where(
                                                          'bookedDate',
                                                          isLessThanOrEqualTo:
                                                              functions
                                                                  .getDateForSales(
                                                                      getCurrentTimestamp,
                                                                      1),
                                                        )
                                                        .orderBy('bookedDate',
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
                                            int stickyHeaderCount =
                                                snapshot.data!;
                                            return StickyHeader(
                                              overlapHeaders: false,
                                              header: Visibility(
                                                visible: stickyHeaderCount > 0,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            width: 150.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                              ),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'uyewf2ac' /* Date */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 200.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                              ),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'rjmmikv9' /* Session */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: 270.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Visibility(
                                                              visible:
                                                                  responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'g6m7sw6x' /* User Details */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ie2r63dv' /* Remarks */,
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              content: StreamBuilder<
                                                  List<MeetingBookedRecord>>(
                                                stream:
                                                    queryMeetingBookedRecord(
                                                  queryBuilder:
                                                      (meetingBookedRecord) =>
                                                          meetingBookedRecord
                                                              .where(
                                                                'meetingRef',
                                                                isEqualTo: widget
                                                                    .meetingRef
                                                                    ?.reference,
                                                              )
                                                              .where(
                                                                'bookedDate',
                                                                isLessThanOrEqualTo:
                                                                    functions
                                                                        .getDateForSales(
                                                                            getCurrentTimestamp,
                                                                            1),
                                                              )
                                                              .orderBy(
                                                                  'bookedDate',
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
                                                  List<MeetingBookedRecord>
                                                      listViewMeetingBookedRecordList =
                                                      snapshot.data!;
                                                  if (listViewMeetingBookedRecordList
                                                      .isEmpty) {
                                                    return Center(
                                                      child:
                                                          EmptyMessageWidget(),
                                                    );
                                                  }
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewMeetingBookedRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewMeetingBookedRecord =
                                                          listViewMeetingBookedRecordList[
                                                              listViewIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                offset: Offset(
                                                                    0.0, 1.0),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            100.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x00E0E0E0),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                child: AutoSizeText(
                                                                                  dateTimeFormat(
                                                                                    'MMMEd',
                                                                                    listViewMeetingBookedRecord.bookedDate!,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  ).maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                        fontSize: 16.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              AutoSizeText(
                                                                                dateTimeFormat(
                                                                                  'd',
                                                                                  listViewMeetingBookedRecord.bookedDate!,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ).maybeHandleOverflow(maxChars: 32),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).accent2,
                                                                                      fontSize: 26.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            180.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.access_time_rounded,
                                                                                color: () {
                                                                                  if (listViewMeetingBookedRecord.sessionTime == 'Morning') {
                                                                                    return Color(0xFFFFB37B);
                                                                                  } else if (listViewMeetingBookedRecord.sessionTime == 'Afternoon') {
                                                                                    return Color(0xFFFFF7AA);
                                                                                  } else {
                                                                                    return Color(0xFFAFC5FF);
                                                                                  }
                                                                                }(),
                                                                                size: 24.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  listViewMeetingBookedRecord.sessionTime.maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: StreamBuilder<UsersRecord>(
                                                                                stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                  final imageUsersRecord = snapshot.data!;
                                                                                  return ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(120.0),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: Duration(milliseconds: 500),
                                                                                      fadeOutDuration: Duration(milliseconds: 500),
                                                                                      imageUrl: imageUsersRecord.photoUrl,
                                                                                      width: 40.0,
                                                                                      height: 40.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    StreamBuilder<UsersRecord>(
                                                                                      stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                              Expanded(
                                                                                                child: AutoSizeText(
                                                                                                  rowUsersRecord.displayName.maybeHandleOverflow(
                                                                                                    maxChars: 32,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                        child: StreamBuilder<UsersRecord>(
                                                                                          stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                            final textUsersRecord = snapshot.data!;
                                                                                            return AutoSizeText(
                                                                                              textUsersRecord.email.maybeHandleOverflow(maxChars: 32),
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                      tablet: false,
                                                                                    ))
                                                                                      StreamBuilder<UsersRecord>(
                                                                                        stream: UsersRecord.getDocument(listViewMeetingBookedRecord.userRef!),
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
                                                                                          final textUsersRecord = snapshot.data!;
                                                                                          return AutoSizeText(
                                                                                            textUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                            textAlign: TextAlign.start,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).accent2,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          100.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.format_quote,
                                                                              color: FlutterFlowTheme.of(context).accent2,
                                                                              size: 24.0,
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: AutoSizeText(
                                                                                  listViewMeetingBookedRecord.remarks.maybeHandleOverflow(maxChars: 32),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
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
                                                                      Container(
                                                                        height:
                                                                            45.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
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
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: Container(
                                                                                          height: 300.0,
                                                                                          child: DeleteMessageWidget(
                                                                                            meetingBookedRef: listViewMeetingBookedRecord,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          8.0)),
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
