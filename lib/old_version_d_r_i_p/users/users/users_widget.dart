import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/message/delete_message/delete_message_widget.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'users_model.dart';
export 'users_model.dart';

class UsersWidget extends StatefulWidget {
  const UsersWidget({
    super.key,
    this.meetingRef,
  });

  final MeetingRecord? meetingRef;

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}

class _UsersWidgetState extends State<UsersWidget>
    with TickerProviderStateMixin {
  late UsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersModel());

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

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        title: 'Users',
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
                        'e1qukerz' /* Contracts */,
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
                                    colorBgEight: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    colorBgNine: FlutterFlowTheme.of(context)
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
                                            0.0, 28.0, 16.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'azwa1kt8' /* Users */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 15.0, 15.0, 0.0),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.9,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment(0.0, 0),
                                                child: TabBar(
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: [
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hmvs90fa' /* All */,
                                                      ),
                                                    ),
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fke24uws' /* Admin */,
                                                      ),
                                                    ),
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8de3acpy' /* Instructor */,
                                                      ),
                                                    ),
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jmgzi4wv' /* Student */,
                                                      ),
                                                    ),
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6a2rel97' /* Deleted */,
                                                      ),
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController,
                                                  children: [
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FutureBuilder<int>(
                                                            future:
                                                                queryUsersRecordCount(
                                                              queryBuilder: (usersRecord) =>
                                                                  usersRecord
                                                                      .where(
                                                                        'status',
                                                                        isEqualTo:
                                                                            'Approved',
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'riy54lve' /* Name */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4d9nyo9f' /* Email ID */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'z1c3j0kf' /* Phone Number */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                FFLocalizations.of(context).getText(
                                                                                  'pq5nvg01' /* Verification */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          Container(
                                                                            width:
                                                                                160.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00E0E0E0),
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'kamau7fn' /* Action */,
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
                                                                content: PagedListView<
                                                                    DocumentSnapshot<
                                                                        Object?>?,
                                                                    UsersRecord>(
                                                                  pagingController:
                                                                      _model
                                                                          .setListViewController1(
                                                                    UsersRecord
                                                                        .collection
                                                                        .where(
                                                                          'status',
                                                                          isEqualTo:
                                                                              'Approved',
                                                                        )
                                                                        .orderBy(
                                                                            'created_time',
                                                                            descending:
                                                                                true),
                                                                  ),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  reverse:
                                                                      false,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  builderDelegate:
                                                                      PagedChildBuilderDelegate<
                                                                          UsersRecord>(
                                                                    // Customize what your widget looks like when it's loading the first page.
                                                                    firstPageProgressIndicatorBuilder:
                                                                        (_) =>
                                                                            Center(
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
                                                                    ),
                                                                    // Customize what your widget looks like when it's loading another page.
                                                                    newPageProgressIndicatorBuilder:
                                                                        (_) =>
                                                                            Center(
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
                                                                    ),
                                                                    noItemsFoundIndicatorBuilder:
                                                                        (_) =>
                                                                            Center(
                                                                      child:
                                                                          EmptyMessageWidget(),
                                                                    ),
                                                                    itemBuilder:
                                                                        (context,
                                                                            _,
                                                                            listViewIndex) {
                                                                      final listViewUsersRecord = _model
                                                                          .listViewPagingController1!
                                                                          .itemList![listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 0.0,
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                offset: Offset(0.0, 1.0),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsets.all(12.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                                                                                listViewUsersRecord,
                                                                                                ParamType.Document,
                                                                                              ),
                                                                                            }.withoutNulls,
                                                                                            extra: <String, dynamic>{
                                                                                              'userRef': listViewUsersRecord,
                                                                                            },
                                                                                          );
                                                                                        },
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
                                                                                                    listViewUsersRecord.photoUrl,
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
                                                                                                    '${listViewUsersRecord.firstName} ${listViewUsersRecord.lastName}'.maybeHandleOverflow(
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
                                                                                                listViewUsersRecord.email.maybeHandleOverflow(
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
                                                                                                listViewUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                                textAlign: TextAlign.start,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                      fontSize: 14.0,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                                          if (listViewUsersRecord.phoneVerified)
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'gxsuhgzp' /* Mobile number verified */,
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
                                                                                          if (listViewUsersRecord.emailVerifed == true)
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'vqih2jaq' /* Email verified */,
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
                                                                                          if (listViewUsersRecord.emailVerifed == false)
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'ewwescqz' /* Email not verified */,
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
                                                                                          if (listViewUsersRecord.userRole == 'Admin')
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'cwqz019g' /* Admin profile */,
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
                                                                                          if (listViewUsersRecord.userRole == 'Instructor')
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'q1xnb9h6' /* Instructor profile */,
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
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 120.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
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
                                                                                                        listViewUsersRecord,
                                                                                                        ParamType.Document,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                    extra: <String, dynamic>{
                                                                                                      'userRef': listViewUsersRecord,
                                                                                                      kTransitionInfoKey: TransitionInfo(
                                                                                                        hasTransition: true,
                                                                                                        transitionType: PageTransitionType.fade,
                                                                                                        duration: Duration(milliseconds: 0),
                                                                                                      ),
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: AddButtonWidget(
                                                                                                  key: Key('Keyvbp_${listViewIndex}_of_${_model.listViewPagingController1!.itemList!.length}'),
                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                    'ylderod4' /* Edit */,
                                                                                                  ),
                                                                                                  icon: Icon(
                                                                                                    Icons.edit_outlined,
                                                                                                    color: Colors.white,
                                                                                                    size: 16.0,
                                                                                                  ),
                                                                                                  bg1: FlutterFlowTheme.of(context).darkOrange,
                                                                                                  bg2: FlutterFlowTheme.of(context).orange,
                                                                                                  height: 40,
                                                                                                  width: 100,
                                                                                                  fontSize: 14,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
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
                                                                                                          width: 400.0,
                                                                                                          child: DeleteMessageWidget(
                                                                                                            userRef: listViewUsersRecord,
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
                                                                                      ],
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FutureBuilder<int>(
                                                            future:
                                                                queryUsersRecordCount(
                                                              queryBuilder: (usersRecord) =>
                                                                  usersRecord
                                                                      .where(
                                                                        'userRole',
                                                                        isEqualTo:
                                                                            'Admin',
                                                                      )
                                                                      .where(
                                                                        'status',
                                                                        isEqualTo:
                                                                            'Approved',
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'etc64gtv' /* Name */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                FFLocalizations.of(context).getText(
                                                                                  'dx60wbwy' /* Email ID */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'x66d2uxg' /* Phone Number */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'l23g3vt7' /* Verification */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                160.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00E0E0E0),
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'wa53d3l2' /* Action */,
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
                                                                content: PagedListView<
                                                                    DocumentSnapshot<
                                                                        Object?>?,
                                                                    UsersRecord>(
                                                                  pagingController:
                                                                      _model
                                                                          .setListViewController2(
                                                                    UsersRecord
                                                                        .collection
                                                                        .where(
                                                                          'userRole',
                                                                          isEqualTo:
                                                                              'Admin',
                                                                        )
                                                                        .where(
                                                                          'status',
                                                                          isEqualTo:
                                                                              'Approved',
                                                                        )
                                                                        .orderBy(
                                                                            'created_time',
                                                                            descending:
                                                                                true),
                                                                  ),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  primary:
                                                                      false,
                                                                  shrinkWrap:
                                                                      true,
                                                                  reverse:
                                                                      false,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  builderDelegate:
                                                                      PagedChildBuilderDelegate<
                                                                          UsersRecord>(
                                                                    // Customize what your widget looks like when it's loading the first page.
                                                                    firstPageProgressIndicatorBuilder:
                                                                        (_) =>
                                                                            Center(
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
                                                                    ),
                                                                    // Customize what your widget looks like when it's loading another page.
                                                                    newPageProgressIndicatorBuilder:
                                                                        (_) =>
                                                                            Center(
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
                                                                    ),
                                                                    noItemsFoundIndicatorBuilder:
                                                                        (_) =>
                                                                            EmptyMessageWidget(),
                                                                    itemBuilder:
                                                                        (context,
                                                                            _,
                                                                            listViewIndex) {
                                                                      final listViewUsersRecord = _model
                                                                          .listViewPagingController2!
                                                                          .itemList![listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 0.0,
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                offset: Offset(0.0, 1.0),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsets.all(12.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                                                                                listViewUsersRecord,
                                                                                                ParamType.Document,
                                                                                              ),
                                                                                            }.withoutNulls,
                                                                                            extra: <String, dynamic>{
                                                                                              'userRef': listViewUsersRecord,
                                                                                            },
                                                                                          );
                                                                                        },
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
                                                                                                    listViewUsersRecord.photoUrl,
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
                                                                                                    '${listViewUsersRecord.firstName} ${listViewUsersRecord.lastName}'.maybeHandleOverflow(
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
                                                                                                listViewUsersRecord.email.maybeHandleOverflow(
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
                                                                                                listViewUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                                textAlign: TextAlign.start,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                      fontSize: 14.0,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                                          if (listViewUsersRecord.phoneVerified)
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'ezesvqj8' /* Mobile number verified */,
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
                                                                                          if (listViewUsersRecord.emailVerifed == true)
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      '4ubhkzth' /* Email verified */,
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
                                                                                          if (listViewUsersRecord.emailVerifed == false)
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'ixp12l0r' /* Email not verified */,
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
                                                                                          if (listViewUsersRecord.userRole == 'Admin')
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'evcakfz6' /* Admin profile */,
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
                                                                                          if (listViewUsersRecord.userRole == 'Instructor')
                                                                                            AlignedTooltip(
                                                                                              content: Padding(
                                                                                                  padding: EdgeInsets.all(4.0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      '7edbu8lb' /* Instructor profile */,
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
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 120.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
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
                                                                                                        listViewUsersRecord,
                                                                                                        ParamType.Document,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                    extra: <String, dynamic>{
                                                                                                      'userRef': listViewUsersRecord,
                                                                                                      kTransitionInfoKey: TransitionInfo(
                                                                                                        hasTransition: true,
                                                                                                        transitionType: PageTransitionType.fade,
                                                                                                        duration: Duration(milliseconds: 0),
                                                                                                      ),
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: AddButtonWidget(
                                                                                                  key: Key('Keyk0v_${listViewIndex}_of_${_model.listViewPagingController2!.itemList!.length}'),
                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                    'vasx7zbe' /* Edit */,
                                                                                                  ),
                                                                                                  icon: Icon(
                                                                                                    Icons.edit_outlined,
                                                                                                    color: Colors.white,
                                                                                                    size: 16.0,
                                                                                                  ),
                                                                                                  bg1: FlutterFlowTheme.of(context).darkOrange,
                                                                                                  bg2: FlutterFlowTheme.of(context).orange,
                                                                                                  height: 40,
                                                                                                  width: 100,
                                                                                                  fontSize: 14,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
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
                                                                                                          width: 400.0,
                                                                                                          child: DeleteMessageWidget(
                                                                                                            userRef: listViewUsersRecord,
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
                                                                                      ],
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FutureBuilder<int>(
                                                            future:
                                                                queryUsersRecordCount(
                                                              queryBuilder:
                                                                  (usersRecord) =>
                                                                      usersRecord
                                                                          .where(
                                                                            'userRole',
                                                                            isEqualTo:
                                                                                'Instructor',
                                                                          )
                                                                          .where(
                                                                            'instuctorStatus',
                                                                            isEqualTo:
                                                                                'Approved',
                                                                          )
                                                                          .where(
                                                                            'status',
                                                                            isEqualTo:
                                                                                'Approved',
                                                                          ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'ok3iaq8p' /* Name */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                FFLocalizations.of(context).getText(
                                                                                  '21kus49p' /* Email ID */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'cianw2wn' /* Phone Number */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'v0ddlsro' /* Verification */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                160.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00F4F6FC),
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '5iu9lall' /* Action */,
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
                                                                        List<
                                                                            UsersRecord>>(
                                                                  stream:
                                                                      queryUsersRecord(
                                                                    queryBuilder: (usersRecord) =>
                                                                        usersRecord
                                                                            .where(
                                                                              'userRole',
                                                                              isEqualTo: 'Instructor',
                                                                            )
                                                                            .where(
                                                                              'instuctorStatus',
                                                                              isEqualTo: 'Approved',
                                                                            )
                                                                            .where(
                                                                              'status',
                                                                              isEqualTo: 'Approved',
                                                                            ),
                                                                  ),
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
                                                                    List<UsersRecord>
                                                                        listViewUsersRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    if (listViewUsersRecordList
                                                                        .isEmpty) {
                                                                      return EmptyMessageWidget();
                                                                    }
                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewUsersRecordList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewUsersRecord =
                                                                            listViewUsersRecordList[listViewIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              2.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 0.0,
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                  offset: Offset(0.0, 1.0),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsets.all(12.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                                                                  listViewUsersRecord,
                                                                                                  ParamType.Document,
                                                                                                ),
                                                                                              }.withoutNulls,
                                                                                              extra: <String, dynamic>{
                                                                                                'userRef': listViewUsersRecord,
                                                                                              },
                                                                                            );
                                                                                          },
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
                                                                                                      listViewUsersRecord.photoUrl,
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
                                                                                                      '${listViewUsersRecord.firstName} ${listViewUsersRecord.lastName}'.maybeHandleOverflow(
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
                                                                                                  listViewUsersRecord.email.maybeHandleOverflow(
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
                                                                                                  listViewUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                                  textAlign: TextAlign.start,
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        fontSize: 14.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                                            if (listViewUsersRecord.phoneVerified)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'b6skzcxx' /* Mobile number verified */,
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
                                                                                            if (listViewUsersRecord.emailVerifed == true)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'np2aopq9' /* Email verified */,
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
                                                                                            if (listViewUsersRecord.emailVerifed == false)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        '9ik78gbo' /* Email not verified */,
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
                                                                                            if (listViewUsersRecord.userRole == 'Admin')
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        '8l9egjg0' /* Admin profile */,
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
                                                                                            if (listViewUsersRecord.userRole == 'Instructor')
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'mb8s59w1' /* Instructor profile */,
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
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 120.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
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
                                                                                                          listViewUsersRecord,
                                                                                                          ParamType.Document,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                      extra: <String, dynamic>{
                                                                                                        'userRef': listViewUsersRecord,
                                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                                          hasTransition: true,
                                                                                                          transitionType: PageTransitionType.fade,
                                                                                                          duration: Duration(milliseconds: 0),
                                                                                                        ),
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: AddButtonWidget(
                                                                                                    key: Key('Key7uh_${listViewIndex}_of_${listViewUsersRecordList.length}'),
                                                                                                    text: FFLocalizations.of(context).getText(
                                                                                                      'bvqylfoy' /* Edit */,
                                                                                                    ),
                                                                                                    icon: Icon(
                                                                                                      Icons.edit_outlined,
                                                                                                      color: Colors.white,
                                                                                                      size: 16.0,
                                                                                                    ),
                                                                                                    bg1: FlutterFlowTheme.of(context).darkOrange,
                                                                                                    bg2: FlutterFlowTheme.of(context).orange,
                                                                                                    height: 40,
                                                                                                    width: 100,
                                                                                                    fontSize: 14,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
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
                                                                                                            width: 400.0,
                                                                                                            child: DeleteMessageWidget(
                                                                                                              userRef: listViewUsersRecord,
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
                                                                                        ],
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
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FutureBuilder<int>(
                                                            future:
                                                                queryUsersRecordCount(
                                                              queryBuilder:
                                                                  (usersRecord) =>
                                                                      usersRecord
                                                                          .where(
                                                                            'userRole',
                                                                            isEqualTo:
                                                                                'Student',
                                                                          )
                                                                          .where(
                                                                            'status',
                                                                            isNotEqualTo:
                                                                                'Archived',
                                                                          ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '5t44tfnb' /* Name */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                FFLocalizations.of(context).getText(
                                                                                  'cl0g5c7s' /* Email ID */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'bfyokhey' /* Phone Number */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'llaumlqb' /* Verification */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'jmesm73c' /* Status */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                160.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x00E0E0E0),
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'yj45u46v' /* Action */,
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
                                                                        List<
                                                                            UsersRecord>>(
                                                                  stream:
                                                                      queryUsersRecord(
                                                                    queryBuilder: (usersRecord) =>
                                                                        usersRecord
                                                                            .where(
                                                                              'userRole',
                                                                              isEqualTo: 'Student',
                                                                            )
                                                                            .where(
                                                                              'status',
                                                                              isNotEqualTo: 'Archived',
                                                                            ),
                                                                  ),
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
                                                                    List<UsersRecord>
                                                                        listViewUsersRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    if (listViewUsersRecordList
                                                                        .isEmpty) {
                                                                      return EmptyMessageWidget();
                                                                    }
                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewUsersRecordList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewUsersRecord =
                                                                            listViewUsersRecordList[listViewIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              2.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 0.0,
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                  offset: Offset(0.0, 1.0),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsets.all(12.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                                                                  listViewUsersRecord,
                                                                                                  ParamType.Document,
                                                                                                ),
                                                                                              }.withoutNulls,
                                                                                              extra: <String, dynamic>{
                                                                                                'userRef': listViewUsersRecord,
                                                                                              },
                                                                                            );
                                                                                          },
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
                                                                                                      listViewUsersRecord.photoUrl,
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
                                                                                                      '${listViewUsersRecord.firstName} ${listViewUsersRecord.lastName}'.maybeHandleOverflow(
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
                                                                                                  listViewUsersRecord.email.maybeHandleOverflow(
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
                                                                                                  listViewUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                                  textAlign: TextAlign.start,
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        fontSize: 14.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                                            if (listViewUsersRecord.phoneVerified)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'ksumthm4' /* Mobile number verified */,
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
                                                                                            if (listViewUsersRecord.emailVerifed == true)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'am5wqfv0' /* Email verified */,
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
                                                                                            if (listViewUsersRecord.emailVerifed == false)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'cvmjn7k6' /* Email not verified */,
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
                                                                                            if (listViewUsersRecord.userRole == 'Admin')
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'nnavo9gj' /* Admin profile */,
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
                                                                                            if (listViewUsersRecord.userRole == 'Instructor')
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        '2qqdaq7r' /* Instructor profile */,
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
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              () {
                                                                                                if (listViewUsersRecord.status == 'Approved') {
                                                                                                  return 'Active';
                                                                                                } else if (listViewUsersRecord.status == 'Archived') {
                                                                                                  return 'Deleted';
                                                                                                } else {
                                                                                                  return 'Blocked';
                                                                                                }
                                                                                              }(),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 120.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
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
                                                                                                          listViewUsersRecord,
                                                                                                          ParamType.Document,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                      extra: <String, dynamic>{
                                                                                                        'userRef': listViewUsersRecord,
                                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                                          hasTransition: true,
                                                                                                          transitionType: PageTransitionType.fade,
                                                                                                          duration: Duration(milliseconds: 0),
                                                                                                        ),
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                  child: AddButtonWidget(
                                                                                                    key: Key('Keysuv_${listViewIndex}_of_${listViewUsersRecordList.length}'),
                                                                                                    text: FFLocalizations.of(context).getText(
                                                                                                      'cvulkcjl' /* Edit */,
                                                                                                    ),
                                                                                                    icon: Icon(
                                                                                                      Icons.edit_outlined,
                                                                                                      color: Colors.white,
                                                                                                      size: 16.0,
                                                                                                    ),
                                                                                                    bg1: FlutterFlowTheme.of(context).darkOrange,
                                                                                                    bg2: FlutterFlowTheme.of(context).orange,
                                                                                                    height: 40,
                                                                                                    width: 100,
                                                                                                    fontSize: 14,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
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
                                                                                                            width: 400.0,
                                                                                                            child: DeleteMessageWidget(
                                                                                                              userRef: listViewUsersRecord,
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
                                                                                        ],
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
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          FutureBuilder<int>(
                                                            future:
                                                                queryUsersRecordCount(
                                                              queryBuilder:
                                                                  (usersRecord) =>
                                                                      usersRecord
                                                                          .where(
                                                                'status',
                                                                isNotEqualTo:
                                                                    'Approved',
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
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
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'aef8dxkl' /* Name */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
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
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1mysmk4e' /* Email ID */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'fxwannfo' /* Phone Number */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'mco656pm' /* Verification */,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'kuw2dmy3' /* Status */,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodySmall,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                content:
                                                                    StreamBuilder<
                                                                        List<
                                                                            UsersRecord>>(
                                                                  stream:
                                                                      queryUsersRecord(
                                                                    queryBuilder:
                                                                        (usersRecord) =>
                                                                            usersRecord.where(
                                                                      'status',
                                                                      isNotEqualTo:
                                                                          'Approved',
                                                                    ),
                                                                  ),
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
                                                                    List<UsersRecord>
                                                                        listViewUsersRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    if (listViewUsersRecordList
                                                                        .isEmpty) {
                                                                      return EmptyMessageWidget();
                                                                    }
                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewUsersRecordList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewUsersRecord =
                                                                            listViewUsersRecordList[listViewIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              2.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 0.0,
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                  offset: Offset(0.0, 1.0),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsets.all(12.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                                                                  listViewUsersRecord,
                                                                                                  ParamType.Document,
                                                                                                ),
                                                                                              }.withoutNulls,
                                                                                              extra: <String, dynamic>{
                                                                                                'userRef': listViewUsersRecord,
                                                                                              },
                                                                                            );
                                                                                          },
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
                                                                                                      listViewUsersRecord.photoUrl,
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
                                                                                                      '${listViewUsersRecord.firstName} ${listViewUsersRecord.lastName}'.maybeHandleOverflow(
                                                                                                        maxChars: 32,
                                                                                                        replacement: '…',
                                                                                                      ),
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
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
                                                                                                  listViewUsersRecord.email.maybeHandleOverflow(
                                                                                                    maxChars: 32,
                                                                                                    replacement: '…',
                                                                                                  ),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                        color: FlutterFlowTheme.of(context).accent2,
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
                                                                                                  listViewUsersRecord.phoneNumber.maybeHandleOverflow(maxChars: 32),
                                                                                                  textAlign: TextAlign.start,
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                                        color: FlutterFlowTheme.of(context).accent2,
                                                                                                        fontSize: 14.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                                            if (listViewUsersRecord.phoneVerified)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        '735up2id' /* Mobile number verified */,
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
                                                                                            if (listViewUsersRecord.emailVerifed == true)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'cz49ezoq' /* Email verified */,
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
                                                                                            if (listViewUsersRecord.emailVerifed == false)
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        '6evu18mf' /* Email not verified */,
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
                                                                                            if (listViewUsersRecord.userRole == 'Admin')
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'q74zi8od' /* Admin profile */,
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
                                                                                            if (listViewUsersRecord.userRole == 'Instructor')
                                                                                              AlignedTooltip(
                                                                                                content: Padding(
                                                                                                    padding: EdgeInsets.all(4.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'j5gn6cxg' /* Instructor profile */,
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
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              listViewUsersRecord.status,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Padding(
                                                                                              padding: EdgeInsets.all(10.0),
                                                                                              child: FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Color(0x00FFFFFF),
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return WebViewAware(
                                                                                                        child: GestureDetector(
                                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                          child: Padding(
                                                                                                            padding: MediaQuery.viewInsetsOf(context),
                                                                                                            child: Container(
                                                                                                              height: 200.0,
                                                                                                              child: DeleteMessage1Widget(
                                                                                                                userRef: listViewUsersRecord,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));
                                                                                                },
                                                                                                text: FFLocalizations.of(context).getText(
                                                                                                  '42m836ec' /*  */,
                                                                                                ),
                                                                                                icon: Icon(
                                                                                                  Icons.delete_outlined,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  size: 15.0,
                                                                                                ),
                                                                                                options: FFButtonOptions(
                                                                                                  height: 40.0,
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
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
                                                              );
                                                            },
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
