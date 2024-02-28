import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/marketing/s_m_smarketing/s_m_sfor_paricular_course/s_m_sfor_paricular_course_widget.dart';
import '/old_version_d_r_i_p/marketing/s_m_smarketing/user_phone_number_list_add_for_s_m_s/user_phone_number_list_add_for_s_m_s_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'students_model.dart';
export 'students_model.dart';

class StudentsWidget extends StatefulWidget {
  const StudentsWidget({
    super.key,
    this.courseRef,
  });

  final CourseRecord? courseRef;

  @override
  State<StudentsWidget> createState() => _StudentsWidgetState();
}

class _StudentsWidgetState extends State<StudentsWidget> {
  late StudentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentsModel());

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
        title: 'Students',
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
                        '0zzvo30p' /* Contracts */,
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
                                    colorBgSeven: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    colorBgNine: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    colorBgTen: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    expand: false,
                                    colorBgPrimarydropdwon2:
                                        FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              Expanded(
                                child: SingleChildScrollView(
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
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 60.0,
                                                    icon: Icon(
                                                      Icons.chevron_left,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.safePop();
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ccjxgzvx' /* Enrolled Students */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
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
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .addButtonModel1,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child: AddButtonWidget(
                                                        text: 'Add',
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                        height: 50,
                                                      ),
                                                    ),
                                                  ),
                                                if ((FFAppState()
                                                            .currentUserRole ==
                                                        'Admin') &&
                                                    responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
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
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35,
                                                                    child:
                                                                        SMSforParicularCourseWidget(),
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
                                                            .addButtonModel2,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child: AddButtonWidget(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'z63zmhn7' /* SMS */,
                                                          ),
                                                          icon: Icon(
                                                            Icons.send,
                                                            color: Colors.white,
                                                          ),
                                                          height: 50,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 16.0, 0.0),
                                          child: FutureBuilder<int>(
                                            future:
                                                querySubscriptionRecordCount(
                                              queryBuilder:
                                                  (subscriptionRecord) =>
                                                      subscriptionRecord.where(
                                                'courseRef',
                                                isEqualTo:
                                                    widget.courseRef?.reference,
                                              ),
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
                                              int mainCardCount =
                                                  snapshot.data!;
                                              return Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: mainCardCount == 0
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x1F000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      if (mainCardCount > 0)
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                            ),
                                                          ),
                                                          child: Visibility(
                                                            visible:
                                                                mainCardCount >
                                                                    0,
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '5cdtq3or' /* Name */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall,
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
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'u4io9wsf' /* Email ID */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall,
                                                                      ),
                                                                    ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'dovfdq9r' /* Phone Number */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
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
                                                                        '23u31pxt' /* Order */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
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
                                                                        'os4w1w4f' /* Payment Status */,
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
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      StreamBuilder<
                                                          List<
                                                              SubscriptionRecord>>(
                                                        stream:
                                                            querySubscriptionRecord(
                                                          queryBuilder:
                                                              (subscriptionRecord) =>
                                                                  subscriptionRecord
                                                                      .where(
                                                            'courseRef',
                                                            isEqualTo: widget
                                                                .courseRef
                                                                ?.reference,
                                                          ),
                                                        ),
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
                                                          List<SubscriptionRecord>
                                                              listViewSubscriptionRecordList =
                                                              snapshot.data!;
                                                          if (listViewSubscriptionRecordList
                                                              .isEmpty) {
                                                            return Center(
                                                              child:
                                                                  EmptyMessageWidget(),
                                                            );
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewSubscriptionRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewSubscriptionRecord =
                                                                  listViewSubscriptionRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            0.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            6.0,
                                                                            12.0,
                                                                            6.0),
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(listViewSubscriptionRecord.userRef!),
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
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: InkWell(
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(120.0),
                                                                                            child: CachedNetworkImage(
                                                                                              fadeInDuration: Duration(milliseconds: 500),
                                                                                              fadeOutDuration: Duration(milliseconds: 500),
                                                                                              imageUrl: valueOrDefault<String>(
                                                                                                rowUsersRecord.photoUrl,
                                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
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
                                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              if (responsiveVisibility(
                                                                                                context: context,
                                                                                                tabletLandscape: false,
                                                                                                desktop: false,
                                                                                              ))
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'ii8zj81j' /* user@domainname.com */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
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
                                                                                            rowUsersRecord.email.maybeHandleOverflow(maxChars: 32),
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                  fontSize: 14.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                ),
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
                                                                                            rowUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                            textAlign: TextAlign.start,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      if (listViewSubscriptionRecord.paymentType == 'Full payment')
                                                                                        StreamBuilder<List<OrdersRecord>>(
                                                                                          stream: queryOrdersRecord(
                                                                                            queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                              'orderID',
                                                                                              isEqualTo: listViewSubscriptionRecord.paymentId,
                                                                                            ),
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
                                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                      Color(0x00DF473F),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                            final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                            return Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                StreamBuilder<List<OrderHistoryRecord>>(
                                                                                                  stream: queryOrderHistoryRecord(
                                                                                                    queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                        .where(
                                                                                                          'orderRef',
                                                                                                          isEqualTo: columnOrdersRecord?.reference,
                                                                                                        )
                                                                                                        .where(
                                                                                                          'courseRef',
                                                                                                          isEqualTo: widget.courseRef?.reference,
                                                                                                        ),
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
                                                                                                            valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                              Color(0x00DF473F),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                    List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                    final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                    return Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: InkWell(
                                                                                                            splashColor: Colors.transparent,
                                                                                                            focusColor: Colors.transparent,
                                                                                                            hoverColor: Colors.transparent,
                                                                                                            highlightColor: Colors.transparent,
                                                                                                            onTap: () async {
                                                                                                              context.pushNamed(
                                                                                                                'Singleorder',
                                                                                                                queryParameters: {
                                                                                                                  'orderRef': serializeParam(
                                                                                                                    columnOrdersRecord,
                                                                                                                    ParamType.Document,
                                                                                                                  ),
                                                                                                                }.withoutNulls,
                                                                                                                extra: <String, dynamic>{
                                                                                                                  'orderRef': columnOrdersRecord,
                                                                                                                },
                                                                                                              );
                                                                                                            },
                                                                                                            child: AutoSizeText(
                                                                                                              '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.paymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                              textAlign: TextAlign.start,
                                                                                                              maxLines: 2,
                                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                    fontSize: 12.0,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.firstPaymentStatus == 'CAPTURED'))
                                                                                            StreamBuilder<List<OrdersRecord>>(
                                                                                              stream: queryOrdersRecord(
                                                                                                queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                                  'orderID',
                                                                                                  isEqualTo: listViewSubscriptionRecord.firstPaymentID,
                                                                                                ),
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
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0x00DF473F),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                                // Return an empty Container when the item does not exist.
                                                                                                if (snapshot.data!.isEmpty) {
                                                                                                  return Container();
                                                                                                }
                                                                                                final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    StreamBuilder<List<OrderHistoryRecord>>(
                                                                                                      stream: queryOrderHistoryRecord(
                                                                                                        queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                            .where(
                                                                                                              'orderRef',
                                                                                                              isEqualTo: columnOrdersRecord?.reference,
                                                                                                            )
                                                                                                            .where(
                                                                                                              'courseRef',
                                                                                                              isEqualTo: widget.courseRef?.reference,
                                                                                                            ),
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
                                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                  Color(0x00DF473F),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        }
                                                                                                        List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                        // Return an empty Container when the item does not exist.
                                                                                                        if (snapshot.data!.isEmpty) {
                                                                                                          return Container();
                                                                                                        }
                                                                                                        final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                        return Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  context.pushNamed(
                                                                                                                    'Singleorder',
                                                                                                                    queryParameters: {
                                                                                                                      'orderRef': serializeParam(
                                                                                                                        columnOrdersRecord,
                                                                                                                        ParamType.Document,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                    extra: <String, dynamic>{
                                                                                                                      'orderRef': columnOrdersRecord,
                                                                                                                    },
                                                                                                                  );
                                                                                                                },
                                                                                                                child: AutoSizeText(
                                                                                                                  '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.emiPaymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  maxLines: 2,
                                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                        fontSize: 12.0,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.secondPaymentStatus == 'CAPTURED'))
                                                                                            StreamBuilder<List<OrdersRecord>>(
                                                                                              stream: queryOrdersRecord(
                                                                                                queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                                  'orderID',
                                                                                                  isEqualTo: listViewSubscriptionRecord.secondPaymentID,
                                                                                                ),
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
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0x00DF473F),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                                // Return an empty Container when the item does not exist.
                                                                                                if (snapshot.data!.isEmpty) {
                                                                                                  return Container();
                                                                                                }
                                                                                                final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    StreamBuilder<List<OrderHistoryRecord>>(
                                                                                                      stream: queryOrderHistoryRecord(
                                                                                                        queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                            .where(
                                                                                                              'orderRef',
                                                                                                              isEqualTo: columnOrdersRecord?.reference,
                                                                                                            )
                                                                                                            .where(
                                                                                                              'courseRef',
                                                                                                              isEqualTo: widget.courseRef?.reference,
                                                                                                            ),
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
                                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                  Color(0x00DF473F),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        }
                                                                                                        List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                        // Return an empty Container when the item does not exist.
                                                                                                        if (snapshot.data!.isEmpty) {
                                                                                                          return Container();
                                                                                                        }
                                                                                                        final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                        return Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  context.pushNamed(
                                                                                                                    'Singleorder',
                                                                                                                    queryParameters: {
                                                                                                                      'orderRef': serializeParam(
                                                                                                                        columnOrdersRecord,
                                                                                                                        ParamType.Document,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                    extra: <String, dynamic>{
                                                                                                                      'orderRef': columnOrdersRecord,
                                                                                                                    },
                                                                                                                  );
                                                                                                                },
                                                                                                                child: AutoSizeText(
                                                                                                                  '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.emiPaymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  maxLines: 2,
                                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                        fontSize: 12.0,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.thirdPaymentStatus == 'CAPTURED'))
                                                                                            StreamBuilder<List<OrdersRecord>>(
                                                                                              stream: queryOrdersRecord(
                                                                                                queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                                  'orderID',
                                                                                                  isEqualTo: listViewSubscriptionRecord.thirdPaymentID,
                                                                                                ),
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
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0x00DF473F),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                                // Return an empty Container when the item does not exist.
                                                                                                if (snapshot.data!.isEmpty) {
                                                                                                  return Container();
                                                                                                }
                                                                                                final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    StreamBuilder<List<OrderHistoryRecord>>(
                                                                                                      stream: queryOrderHistoryRecord(
                                                                                                        queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                            .where(
                                                                                                              'orderRef',
                                                                                                              isEqualTo: columnOrdersRecord?.reference,
                                                                                                            )
                                                                                                            .where(
                                                                                                              'courseRef',
                                                                                                              isEqualTo: widget.courseRef?.reference,
                                                                                                            ),
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
                                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                                  Color(0x00DF473F),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        }
                                                                                                        List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                        // Return an empty Container when the item does not exist.
                                                                                                        if (snapshot.data!.isEmpty) {
                                                                                                          return Container();
                                                                                                        }
                                                                                                        final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                        return Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: InkWell(
                                                                                                                splashColor: Colors.transparent,
                                                                                                                focusColor: Colors.transparent,
                                                                                                                hoverColor: Colors.transparent,
                                                                                                                highlightColor: Colors.transparent,
                                                                                                                onTap: () async {
                                                                                                                  context.pushNamed(
                                                                                                                    'Singleorder',
                                                                                                                    queryParameters: {
                                                                                                                      'orderRef': serializeParam(
                                                                                                                        columnOrdersRecord,
                                                                                                                        ParamType.Document,
                                                                                                                      ),
                                                                                                                    }.withoutNulls,
                                                                                                                    extra: <String, dynamic>{
                                                                                                                      'orderRef': columnOrdersRecord,
                                                                                                                    },
                                                                                                                  );
                                                                                                                },
                                                                                                                child: AutoSizeText(
                                                                                                                  '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.emiPaymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                                  textAlign: TextAlign.start,
                                                                                                                  maxLines: 2,
                                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                        fontSize: 12.0,
                                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      if (listViewSubscriptionRecord.paymentType == 'Full payment')
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: AutoSizeText(
                                                                                                listViewSubscriptionRecord.paymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.paymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                                textAlign: TextAlign.start,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (listViewSubscriptionRecord.paymentType == 'EMI')
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.firstPaymentStatus == 'CAPTURED'))
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: AutoSizeText(
                                                                                                      listViewSubscriptionRecord.firstPaymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.firstPaymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 12.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.secondPaymentStatus == 'CAPTURED'))
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: AutoSizeText(
                                                                                                      listViewSubscriptionRecord.secondPaymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.secondPaymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 12.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.thirdPaymentStatus == 'CAPTURED'))
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: AutoSizeText(
                                                                                                      listViewSubscriptionRecord.thirdPaymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.thirdPaymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 12.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            );
                                                                          },
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
                                              );
                                            },
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: FutureBuilder<int>(
                                          future: querySubscriptionRecordCount(
                                            queryBuilder:
                                                (subscriptionRecord) =>
                                                    subscriptionRecord.where(
                                              'courseRef',
                                              isEqualTo:
                                                  widget.courseRef?.reference,
                                            ),
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
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'e0hcpnpy' /* Name */,
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
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
                                                                'odxmfwtm' /* Email ID */,
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
                                                              'mg4odq2c' /* Phone Number */,
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
                                                              'sxe5k04c' /* Verification */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ttffjbgi' /* Order */,
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
                                                              'affuj2tw' /* Payment Status */,
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              content: StreamBuilder<
                                                  List<SubscriptionRecord>>(
                                                stream: querySubscriptionRecord(
                                                  queryBuilder:
                                                      (subscriptionRecord) =>
                                                          subscriptionRecord
                                                              .where(
                                                                'courseRef',
                                                                isEqualTo: widget
                                                                    .courseRef
                                                                    ?.reference,
                                                              )
                                                              .where(
                                                                'status',
                                                                isEqualTo:
                                                                    'Ongoing',
                                                              )
                                                              .orderBy(
                                                                  'startDate',
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
                                                  List<SubscriptionRecord>
                                                      listViewSubscriptionRecordList =
                                                      snapshot.data!;
                                                  if (listViewSubscriptionRecordList
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
                                                        listViewSubscriptionRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewSubscriptionRecord =
                                                          listViewSubscriptionRecordList[
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
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        6.0,
                                                                        12.0,
                                                                        6.0),
                                                                child: StreamBuilder<
                                                                    UsersRecord>(
                                                                  stream: UsersRecord
                                                                      .getDocument(
                                                                          listViewSubscriptionRecord
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
                                                                      children:
                                                                          [
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
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(120.0),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: Duration(milliseconds: 500),
                                                                                      fadeOutDuration: Duration(milliseconds: 500),
                                                                                      imageUrl: valueOrDefault<String>(
                                                                                        rowUsersRecord.photoUrl,
                                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
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
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        tabletLandscape: false,
                                                                                        desktop: false,
                                                                                      ))
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '47toa5zp' /* user@domainname.com */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
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
                                                                                    rowUsersRecord.email.maybeHandleOverflow(maxChars: 32),
                                                                                    maxLines: 2,
                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                          fontSize: 14.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
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
                                                                              if (responsiveVisibility(
                                                                                context: context,
                                                                                phone: false,
                                                                                tablet: false,
                                                                              ))
                                                                                Expanded(
                                                                                  child: AutoSizeText(
                                                                                    rowUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
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
                                                                            children:
                                                                                [
                                                                              if (rowUsersRecord.phoneVerified)
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'ry4jrdhp' /* Mobile number verified */,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Artboard_3.png',
                                                                                      width: 32.0,
                                                                                      height: 32.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (rowUsersRecord.emailVerifed == true)
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'lrxehx1z' /* Email verified */,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Artboard_4.png',
                                                                                      width: 32.0,
                                                                                      height: 32.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (rowUsersRecord.emailVerifed == false)
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'ws5zsm2x' /* Email not verified */,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Artboard_5.png',
                                                                                      width: 32.0,
                                                                                      height: 32.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (rowUsersRecord.userRole == 'Admin')
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'zkax3j6m' /* Admin profile */,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Artboard_6.png',
                                                                                      width: 32.0,
                                                                                      height: 32.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (rowUsersRecord.userRole == 'Instructor')
                                                                                AlignedTooltip(
                                                                                  content: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'yikkw2k7' /* Instructor profile */,
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
                                                                                  waitDuration: Duration(milliseconds: 100),
                                                                                  showDuration: Duration(milliseconds: 1500),
                                                                                  triggerMode: TooltipTriggerMode.tap,
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Artboard_8.png',
                                                                                      width: 32.0,
                                                                                      height: 32.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ].divide(SizedBox(width: 4.0)),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              if (listViewSubscriptionRecord.paymentType == 'Full payment')
                                                                                StreamBuilder<List<OrdersRecord>>(
                                                                                  stream: queryOrdersRecord(
                                                                                    queryBuilder: (ordersRecord) => ordersRecord
                                                                                        .where(
                                                                                          'orderID',
                                                                                          isEqualTo: listViewSubscriptionRecord.paymentId,
                                                                                        )
                                                                                        .where(
                                                                                          'userRef',
                                                                                          isEqualTo: rowUsersRecord.reference,
                                                                                        ),
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
                                                                                            valueColor: AlwaysStoppedAnimation<Color>(
                                                                                              Color(0x00DF473F),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }
                                                                                    List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                    final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                    return Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        StreamBuilder<List<OrderHistoryRecord>>(
                                                                                          stream: queryOrderHistoryRecord(
                                                                                            queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                .where(
                                                                                                  'orderRef',
                                                                                                  isEqualTo: columnOrdersRecord?.reference,
                                                                                                )
                                                                                                .where(
                                                                                                  'courseRef',
                                                                                                  isEqualTo: widget.courseRef?.reference,
                                                                                                ),
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
                                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                      Color(0x00DF473F),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                            final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                            return Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'Singleorder',
                                                                                                        queryParameters: {
                                                                                                          'orderRef': serializeParam(
                                                                                                            columnOrdersRecord,
                                                                                                            ParamType.Document,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                        extra: <String, dynamic>{
                                                                                                          'orderRef': columnOrdersRecord,
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                    child: AutoSizeText(
                                                                                                      '${columnOrdersRecord?.order}'.maybeHandleOverflow(maxChars: 32),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 12.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.firstPaymentStatus == 'CAPTURED'))
                                                                                    StreamBuilder<List<OrdersRecord>>(
                                                                                      stream: queryOrdersRecord(
                                                                                        queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                          'orderID',
                                                                                          isEqualTo: listViewSubscriptionRecord.firstPaymentID,
                                                                                        ),
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
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0x00DF473F),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                        // Return an empty Container when the item does not exist.
                                                                                        if (snapshot.data!.isEmpty) {
                                                                                          return Container();
                                                                                        }
                                                                                        final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            StreamBuilder<List<OrderHistoryRecord>>(
                                                                                              stream: queryOrderHistoryRecord(
                                                                                                queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                    .where(
                                                                                                      'orderRef',
                                                                                                      isEqualTo: columnOrdersRecord?.reference,
                                                                                                    )
                                                                                                    .where(
                                                                                                      'courseRef',
                                                                                                      isEqualTo: widget.courseRef?.reference,
                                                                                                    ),
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
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0x00DF473F),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                // Return an empty Container when the item does not exist.
                                                                                                if (snapshot.data!.isEmpty) {
                                                                                                  return Container();
                                                                                                }
                                                                                                final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                return Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          context.pushNamed(
                                                                                                            'Singleorder',
                                                                                                            queryParameters: {
                                                                                                              'orderRef': serializeParam(
                                                                                                                columnOrdersRecord,
                                                                                                                ParamType.Document,
                                                                                                              ),
                                                                                                            }.withoutNulls,
                                                                                                            extra: <String, dynamic>{
                                                                                                              'orderRef': columnOrdersRecord,
                                                                                                            },
                                                                                                          );
                                                                                                        },
                                                                                                        child: AutoSizeText(
                                                                                                          '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.emiPaymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                          textAlign: TextAlign.start,
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                fontSize: 12.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.secondPaymentStatus == 'CAPTURED'))
                                                                                    StreamBuilder<List<OrdersRecord>>(
                                                                                      stream: queryOrdersRecord(
                                                                                        queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                          'orderID',
                                                                                          isEqualTo: listViewSubscriptionRecord.secondPaymentID,
                                                                                        ),
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
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0x00DF473F),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                        // Return an empty Container when the item does not exist.
                                                                                        if (snapshot.data!.isEmpty) {
                                                                                          return Container();
                                                                                        }
                                                                                        final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            StreamBuilder<List<OrderHistoryRecord>>(
                                                                                              stream: queryOrderHistoryRecord(
                                                                                                queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                    .where(
                                                                                                      'orderRef',
                                                                                                      isEqualTo: columnOrdersRecord?.reference,
                                                                                                    )
                                                                                                    .where(
                                                                                                      'courseRef',
                                                                                                      isEqualTo: widget.courseRef?.reference,
                                                                                                    ),
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
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0x00DF473F),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                // Return an empty Container when the item does not exist.
                                                                                                if (snapshot.data!.isEmpty) {
                                                                                                  return Container();
                                                                                                }
                                                                                                final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                return Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          context.pushNamed(
                                                                                                            'Singleorder',
                                                                                                            queryParameters: {
                                                                                                              'orderRef': serializeParam(
                                                                                                                columnOrdersRecord,
                                                                                                                ParamType.Document,
                                                                                                              ),
                                                                                                            }.withoutNulls,
                                                                                                            extra: <String, dynamic>{
                                                                                                              'orderRef': columnOrdersRecord,
                                                                                                            },
                                                                                                          );
                                                                                                        },
                                                                                                        child: AutoSizeText(
                                                                                                          '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.emiPaymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                          textAlign: TextAlign.start,
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                fontSize: 12.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.thirdPaymentStatus == 'CAPTURED'))
                                                                                    StreamBuilder<List<OrdersRecord>>(
                                                                                      stream: queryOrdersRecord(
                                                                                        queryBuilder: (ordersRecord) => ordersRecord.where(
                                                                                          'orderID',
                                                                                          isEqualTo: listViewSubscriptionRecord.thirdPaymentID,
                                                                                        ),
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
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0x00DF473F),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        List<OrdersRecord> columnOrdersRecordList = snapshot.data!;
                                                                                        // Return an empty Container when the item does not exist.
                                                                                        if (snapshot.data!.isEmpty) {
                                                                                          return Container();
                                                                                        }
                                                                                        final columnOrdersRecord = columnOrdersRecordList.isNotEmpty ? columnOrdersRecordList.first : null;
                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            StreamBuilder<List<OrderHistoryRecord>>(
                                                                                              stream: queryOrderHistoryRecord(
                                                                                                queryBuilder: (orderHistoryRecord) => orderHistoryRecord
                                                                                                    .where(
                                                                                                      'orderRef',
                                                                                                      isEqualTo: columnOrdersRecord?.reference,
                                                                                                    )
                                                                                                    .where(
                                                                                                      'courseRef',
                                                                                                      isEqualTo: widget.courseRef?.reference,
                                                                                                    ),
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
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0x00DF473F),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<OrderHistoryRecord> rowOrderHistoryRecordList = snapshot.data!;
                                                                                                // Return an empty Container when the item does not exist.
                                                                                                if (snapshot.data!.isEmpty) {
                                                                                                  return Container();
                                                                                                }
                                                                                                final rowOrderHistoryRecord = rowOrderHistoryRecordList.isNotEmpty ? rowOrderHistoryRecordList.first : null;
                                                                                                return Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          context.pushNamed(
                                                                                                            'Singleorder',
                                                                                                            queryParameters: {
                                                                                                              'orderRef': serializeParam(
                                                                                                                columnOrdersRecord,
                                                                                                                ParamType.Document,
                                                                                                              ),
                                                                                                            }.withoutNulls,
                                                                                                            extra: <String, dynamic>{
                                                                                                              'orderRef': columnOrdersRecord,
                                                                                                            },
                                                                                                          );
                                                                                                        },
                                                                                                        child: AutoSizeText(
                                                                                                          '${columnOrdersRecord?.order} - ${rowOrderHistoryRecord?.emiPaymentType}'.maybeHandleOverflow(maxChars: 32),
                                                                                                          textAlign: TextAlign.start,
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                fontSize: 12.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              if (listViewSubscriptionRecord.paymentType == 'Full payment')
                                                                                StreamBuilder<CoursePlanRecord>(
                                                                                  stream: CoursePlanRecord.getDocument(listViewSubscriptionRecord.coursePlan!),
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
                                                                                    final dripCoursePlanRecord = snapshot.data!;
                                                                                    return Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: AutoSizeText(
                                                                                            listViewSubscriptionRecord.paymentStatus == 'CAPTURED'
                                                                                                ? '${dripCoursePlanRecord.name} (${dripCoursePlanRecord.numberClasses.toString()} Classes ) : End Date - ${dateTimeFormat(
                                                                                                    'yMMMd',
                                                                                                    listViewSubscriptionRecord.endDate,
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  )}'
                                                                                                : listViewSubscriptionRecord.paymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                            textAlign: TextAlign.start,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 12.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              if ((listViewSubscriptionRecord.paymentType == 'EMI') &&
                                                                                  responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                    tabletLandscape: false,
                                                                                    desktop: false,
                                                                                  ))
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.firstPaymentStatus == 'CAPTURED'))
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: AutoSizeText(
                                                                                              listViewSubscriptionRecord.firstPaymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.firstPaymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                              textAlign: TextAlign.start,
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.secondPaymentStatus == 'CAPTURED'))
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: AutoSizeText(
                                                                                              listViewSubscriptionRecord.secondPaymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.secondPaymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                              textAlign: TextAlign.start,
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    if ((listViewSubscriptionRecord.paymentType != 'Full payment') && (listViewSubscriptionRecord.thirdPaymentStatus == 'CAPTURED'))
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: AutoSizeText(
                                                                                              listViewSubscriptionRecord.thirdPaymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.thirdPaymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                              textAlign: TextAlign.start,
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              if ((listViewSubscriptionRecord.paymentType == 'Full payment') &&
                                                                                  responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                    tabletLandscape: false,
                                                                                    desktop: false,
                                                                                  ))
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: AutoSizeText(
                                                                                        listViewSubscriptionRecord.paymentStatus == 'CAPTURED' ? 'PAID' : listViewSubscriptionRecord.paymentStatus.maybeHandleOverflow(maxChars: 32),
                                                                                        textAlign: TextAlign.start,
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        UserPhoneNumberListAddForSMSWidget(
                                                                          key: Key(
                                                                              'Keygi6_${listViewIndex}_of_${listViewSubscriptionRecordList.length}'),
                                                                          phoneNumber:
                                                                              rowUsersRecord.phoneNumber,
                                                                          userRef:
                                                                              rowUsersRecord.reference,
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 8.0)),
                                                                    );
                                                                  },
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
          ),
        ));
  }
}
