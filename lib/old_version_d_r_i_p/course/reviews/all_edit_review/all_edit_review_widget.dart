import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'all_edit_review_model.dart';
export 'all_edit_review_model.dart';

class AllEditReviewWidget extends StatefulWidget {
  const AllEditReviewWidget({
    super.key,
    required this.reviewRef,
  });

  final ReviewRecord? reviewRef;

  @override
  State<AllEditReviewWidget> createState() => _AllEditReviewWidgetState();
}

class _AllEditReviewWidgetState extends State<AllEditReviewWidget> {
  late AllEditReviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllEditReviewModel());

    _model.daysController ??= TextEditingController();
    _model.daysFocusNode ??= FocusNode();

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
        width: MediaQuery.sizeOf(context).width * 0.5,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 0.0),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'indigah9' /* Review */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                fontSize: 20.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                    ),
                    AutoSizeText(
                      '${dateTimeFormat(
                        'd/M h:mm a',
                        widget.reviewRef?.commentDate,
                        locale: FFLocalizations.of(context).languageCode,
                      )} - ${widget.reviewRef?.commentStatus}'
                          .maybeHandleOverflow(
                        maxChars: 32,
                        replacement: '…',
                      ),
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  '${widget.reviewRef?.comment}'
                                      .maybeHandleOverflow(
                                    maxChars: 32,
                                    replacement: '…',
                                  ),
                                  maxLines: 2,
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue ??=
                                          widget.reviewRef?.commentStatus,
                                    ),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'etcs36jd' /* Approved */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'vfci1jkb' /* Rejected */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '0pdroggi' /* Pending */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue = val),
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.2,
                                    height: 50.0,
                                    textStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'ddhtmq0i' /* Select Status... */,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.reviewRef!.reference
                                          .update(createReviewRecordData(
                                        commentStatus: _model.dropDownValue,
                                      ));
                                      _model.userIP1 =
                                          await actions.getUserIPaddress();
                                      _model.userSession1 =
                                          await actions.getUserSessionID(
                                        currentUserUid,
                                      );

                                      await ActivityLogRecord.collection
                                          .doc()
                                          .set({
                                        ...createActivityLogRecordData(
                                          userRef: currentUserReference,
                                          userIP: _model.userIP1,
                                          userRole: valueOrDefault(
                                              currentUserDocument?.userRole,
                                              ''),
                                          createdAt: getCurrentTimestamp,
                                          eventType: 'Modified',
                                          object: 'Review',
                                          eventId:
                                              widget.reviewRef?.reference.id,
                                          eventTitle: _model.dropDownValue,
                                          userSessionID: _model.userSession1,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'eventStatus': ['Modify'],
                                          },
                                        ),
                                      });
                                      Navigator.pop(context);

                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.addButtonModel1,
                                      updateCallback: () => setState(() {}),
                                      child: AddButtonWidget(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'cebl069p' /* Update */,
                                        ),
                                        icon: Icon(
                                          Icons.save_outlined,
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
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'hr3tkvlj' /* Course: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: StreamBuilder<CourseRecord>(
                                          stream: CourseRecord.getDocument(
                                              widget.reviewRef!.courseRef!),
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
                                            final rowCourseRecord =
                                                snapshot.data!;
                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: AutoSizeText(
                                                    rowCourseRecord.name
                                                        .maybeHandleOverflow(
                                                      maxChars: 32,
                                                      replacement: '…',
                                                    ),
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          fontSize: 14.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'cgg7imv0' /* User Details */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 10.0, 0.0),
                                    child: StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(
                                          widget.reviewRef!.userRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 10.0,
                                              height: 10.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0x00DF473F),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final rowUsersRecord = snapshot.data!;
                                        return Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 6.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        120.0),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: Duration(
                                                      milliseconds: 500),
                                                  fadeOutDuration: Duration(
                                                      milliseconds: 500),
                                                  imageUrl:
                                                      valueOrDefault<String>(
                                                    rowUsersRecord.photoUrl,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/d-r-i-p-admin-new-g8kal3/assets/upm83dg63c6r/Placeholder_view_vector.svg_(1).png',
                                                  ),
                                                  width: 50.0,
                                                  height: 50.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(
                                              rowUsersRecord.displayName
                                                  .maybeHandleOverflow(
                                                maxChars: 32,
                                                replacement: '…',
                                              ),
                                              maxLines: 2,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall,
                                            ),
                                          ],
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'llrmvf0q' /* Admin Reply */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                        ),
                      ),
                      if (widget.reviewRef?.rplyStatus != '')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  '${dateTimeFormat(
                                    'd/M h:mm a',
                                    widget.reviewRef?.rplyCreatedAt,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )} - ${widget.reviewRef?.rplyStatus}'
                                      .maybeHandleOverflow(
                                    maxChars: 32,
                                    replacement: '…',
                                  ),
                                  maxLines: 2,
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  '${widget.reviewRef?.rplyComments}'
                                      .maybeHandleOverflow(
                                    maxChars: 32,
                                    replacement: '…',
                                  ),
                                  maxLines: 2,
                                  style:
                                      FlutterFlowTheme.of(context).titleSmall,
                                ),
                              ),
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
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.3,
                                              child: DeleteMessage1Widget(
                                                reviewRef: widget.reviewRef,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    setState(() {
                                      FFAppState().refresh =
                                          FFAppState().refresh + 1;
                                    });
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'fybyqkfi' /* Delete */,
                                  ),
                                  icon: Icon(
                                    Icons.delete_outlined,
                                    color: Color(0xFFE0E0E0),
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Colors.black,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: Color(0xFFE0E0E0),
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
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
                ),
              ),
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  if (widget.reviewRef?.rplyStatus == '')
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a43gsb3h' /* Reply */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      fontSize: 18.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller: _model.daysController,
                                focusNode: _model.daysFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'dayrz01s' /* Enter your response */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
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
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 32.0, 20.0, 12.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.multiline,
                                validator: _model.daysControllerValidator
                                    .asValidator(context),
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
                                  await widget.reviewRef!.reference
                                      .update(createReviewRecordData(
                                    rplyComments: _model.daysController.text,
                                    rplyUserRef: currentUserReference,
                                    rplyCreatedAt: getCurrentTimestamp,
                                    rplyStatus: 'Publish',
                                  ));
                                  _model.userIP2 =
                                      await actions.getUserIPaddress();
                                  _model.userSession2 =
                                      await actions.getUserSessionID(
                                    currentUserUid,
                                  );

                                  await ActivityLogRecord.collection.doc().set({
                                    ...createActivityLogRecordData(
                                      userRef: currentUserReference,
                                      userIP: _model.userIP2,
                                      userRole: valueOrDefault(
                                          currentUserDocument?.userRole, ''),
                                      createdAt: getCurrentTimestamp,
                                      eventType: 'Modified',
                                      object: 'Review',
                                      eventId: widget.reviewRef?.reference.id,
                                      eventTitle: _model.daysController.text,
                                      userSessionID: _model.userSession2,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'eventStatus': ['Review rply'],
                                      },
                                    ),
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Admin Replay Added Successfuly',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                child: wrapWithModel(
                                  model: _model.addButtonModel2,
                                  updateCallback: () => setState(() {}),
                                  child: AddButtonWidget(
                                    text: FFLocalizations.of(context).getText(
                                      'qzrylvcv' /* Reply */,
                                    ),
                                    icon: Icon(
                                      Icons.save_outlined,
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
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
