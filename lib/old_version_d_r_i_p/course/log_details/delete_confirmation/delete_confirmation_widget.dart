import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_confirmation_model.dart';
export 'delete_confirmation_model.dart';

class DeleteConfirmationWidget extends StatefulWidget {
  const DeleteConfirmationWidget({
    super.key,
    this.countryRef,
    this.universityRef,
    this.categoryRef,
  });

  final CountryRecord? countryRef;
  final UniversityRecord? universityRef;
  final CategoryRecord? categoryRef;

  @override
  State<DeleteConfirmationWidget> createState() =>
      _DeleteConfirmationWidgetState();
}

class _DeleteConfirmationWidgetState extends State<DeleteConfirmationWidget> {
  late DeleteConfirmationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteConfirmationModel());

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
        width: MediaQuery.sizeOf(context).width * 0.3,
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
                        '84si4klh' /* Do you want to really delete t... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  if (widget.countryRef != null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Text(
                        'University: ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  if (widget.countryRef != null)
                    StreamBuilder<List<UniversityRecord>>(
                      stream: queryUniversityRecord(
                        queryBuilder: (universityRecord) => universityRecord
                            .where(
                              'countryRef',
                              isEqualTo: widget.countryRef?.reference,
                            )
                            .orderBy('name'),
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
                        List<UniversityRecord>
                            countryBasedUniversityRecordList = snapshot.data!;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              countryBasedUniversityRecordList.length,
                              (countryBasedIndex) {
                            final countryBasedUniversityRecord =
                                countryBasedUniversityRecordList[
                                    countryBasedIndex];
                            return Text(
                              '${countryBasedUniversityRecord.name} , ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            );
                          }),
                        );
                      },
                    ),
                  if ((widget.universityRef != null) ||
                      (widget.countryRef != null))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Category:',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  if (widget.countryRef != null)
                    StreamBuilder<List<CategoryRecord>>(
                      stream: queryCategoryRecord(
                        queryBuilder: (categoryRecord) => categoryRecord
                            .where(
                              'countryRef',
                              isEqualTo: widget.countryRef?.reference,
                            )
                            .orderBy('name'),
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
                        List<CategoryRecord> countryBasedCategoryRecordList =
                            snapshot.data!;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              countryBasedCategoryRecordList.length,
                              (countryBasedIndex) {
                            final countryBasedCategoryRecord =
                                countryBasedCategoryRecordList[
                                    countryBasedIndex];
                            return Text(
                              '${countryBasedCategoryRecord.name} , ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            );
                          }),
                        );
                      },
                    ),
                  if (widget.universityRef != null)
                    StreamBuilder<List<CategoryRecord>>(
                      stream: queryCategoryRecord(
                        queryBuilder: (categoryRecord) => categoryRecord
                            .where(
                              'universityRef',
                              isEqualTo: widget.universityRef?.reference,
                            )
                            .orderBy('name'),
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
                        List<CategoryRecord> universityBasedCategoryRecordList =
                            snapshot.data!;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              universityBasedCategoryRecordList.length,
                              (universityBasedIndex) {
                            final universityBasedCategoryRecord =
                                universityBasedCategoryRecordList[
                                    universityBasedIndex];
                            return Text(
                              '${universityBasedCategoryRecord.name} , ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            );
                          }),
                        );
                      },
                    ),
                  if ((widget.universityRef != null) ||
                      (widget.countryRef != null) ||
                      (widget.categoryRef != null))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Branch: ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  if (widget.countryRef != null)
                    StreamBuilder<List<BranchRecord>>(
                      stream: queryBranchRecord(
                        queryBuilder: (branchRecord) => branchRecord
                            .where(
                              'country',
                              isEqualTo: widget.countryRef?.reference,
                            )
                            .orderBy('name'),
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
                        List<BranchRecord> countryBasedBranchRecordList =
                            snapshot.data!;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              List.generate(countryBasedBranchRecordList.length,
                                  (countryBasedIndex) {
                            final countryBasedBranchRecord =
                                countryBasedBranchRecordList[countryBasedIndex];
                            return Text(
                              '${countryBasedBranchRecord.name} , ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            );
                          }),
                        );
                      },
                    ),
                  if (widget.universityRef != null)
                    StreamBuilder<List<BranchRecord>>(
                      stream: queryBranchRecord(
                        queryBuilder: (branchRecord) => branchRecord
                            .where(
                              'universityRef',
                              isEqualTo: widget.universityRef?.reference,
                            )
                            .orderBy('name'),
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
                        List<BranchRecord> universityBasedBranchRecordList =
                            snapshot.data!;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              universityBasedBranchRecordList.length,
                              (universityBasedIndex) {
                            final universityBasedBranchRecord =
                                universityBasedBranchRecordList[
                                    universityBasedIndex];
                            return Text(
                              '${universityBasedBranchRecord.name} , ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            );
                          }),
                        );
                      },
                    ),
                  if (widget.categoryRef != null)
                    StreamBuilder<List<BranchRecord>>(
                      stream: queryBranchRecord(
                        queryBuilder: (branchRecord) => branchRecord
                            .where(
                              'categoryRef',
                              isEqualTo: widget.categoryRef?.reference,
                            )
                            .orderBy('name'),
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
                        List<BranchRecord> categoryBasedBranchRecordList =
                            snapshot.data!;
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              categoryBasedBranchRecordList.length,
                              (categoryBasedIndex) {
                            final categoryBasedBranchRecord =
                                categoryBasedBranchRecordList[
                                    categoryBasedIndex];
                            return Text(
                              '${categoryBasedBranchRecord.name} , ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            );
                          }),
                        );
                      },
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                              _model.userIP1 = await actions.getUserIPaddress();
                              _model.userSession1 =
                                  await actions.getUserSessionID(
                                currentUserUid,
                              );
                              if (widget.countryRef != null) {
                                await actions.findDeleteUnderCountry(
                                  widget.countryRef!.reference,
                                );

                                await ActivityLogRecord.collection.doc().set({
                                  ...createActivityLogRecordData(
                                    userRef: currentUserReference,
                                    userIP: _model.userIP1,
                                    userRole: valueOrDefault(
                                        currentUserDocument?.userRole, ''),
                                    createdAt: getCurrentTimestamp,
                                    eventType: 'Deleted',
                                    object: 'Country',
                                    eventId: widget.countryRef?.reference.id,
                                    eventTitle: widget.countryRef?.name,
                                    userSessionID: _model.userSession1,
                                  ),
                                  ...mapToFirestore(
                                    {
                                      'eventStatus': ['Delete'],
                                    },
                                  ),
                                });
                                await widget.countryRef!.reference.delete();
                                Navigator.pop(context);
                              } else {
                                if (widget.universityRef != null) {
                                  await actions.findDeleteUnderUniversity(
                                    widget.universityRef!.reference,
                                  );

                                  await ActivityLogRecord.collection.doc().set({
                                    ...createActivityLogRecordData(
                                      userRef: currentUserReference,
                                      userIP: _model.userIP1,
                                      userRole: valueOrDefault(
                                          currentUserDocument?.userRole, ''),
                                      createdAt: getCurrentTimestamp,
                                      eventType: 'Deleted',
                                      object: 'University',
                                      eventId:
                                          widget.universityRef?.reference.id,
                                      eventTitle: widget.universityRef?.name,
                                      userSessionID: _model.userSession1,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'eventStatus': ['Delete'],
                                      },
                                    ),
                                  });
                                  await widget.universityRef!.reference
                                      .delete();
                                  Navigator.pop(context);
                                } else {
                                  if (widget.categoryRef != null) {
                                    await actions.findDeleteUnderCategory(
                                      widget.categoryRef!.reference,
                                    );

                                    await ActivityLogRecord.collection
                                        .doc()
                                        .set({
                                      ...createActivityLogRecordData(
                                        userRef: currentUserReference,
                                        userIP: _model.userIP1,
                                        userRole: valueOrDefault(
                                            currentUserDocument?.userRole, ''),
                                        createdAt: getCurrentTimestamp,
                                        eventType: 'Deleted',
                                        object: 'Category',
                                        eventId:
                                            widget.categoryRef?.reference.id,
                                        eventTitle: widget.categoryRef?.name,
                                        userSessionID: _model.userSession1,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'eventStatus': ['Delete'],
                                        },
                                      ),
                                    });
                                    await widget.categoryRef!.reference
                                        .delete();
                                    Navigator.pop(context);
                                  }
                                }
                              }

                              setState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.addButtonModel1,
                              updateCallback: () => setState(() {}),
                              child: AddButtonWidget(
                                text: FFLocalizations.of(context).getText(
                                  'oxhdsky7' /* Yes */,
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
                                  '9omtdsgl' /* No */,
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
