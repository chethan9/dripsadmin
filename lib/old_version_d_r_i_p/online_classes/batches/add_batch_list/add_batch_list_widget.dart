import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_batch_list_model.dart';
export 'add_batch_list_model.dart';

class AddBatchListWidget extends StatefulWidget {
  const AddBatchListWidget({
    super.key,
    required this.batchesRef,
    required this.batchID,
  });

  final DocumentReference? batchesRef;
  final String? batchID;

  @override
  State<AddBatchListWidget> createState() => _AddBatchListWidgetState();
}

class _AddBatchListWidgetState extends State<AddBatchListWidget> {
  late AddBatchListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddBatchListModel());

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
        width: MediaQuery.sizeOf(context).width * 0.25,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
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
                    StreamBuilder<List<CourseRecord>>(
                      stream: queryCourseRecord(),
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
                        List<CourseRecord> containerCourseRecordList =
                            snapshot.data!;
                        return Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: containerCourseRecordList
                                  .map((e) => e.name)
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue = val),
                              height: 60.0,
                              searchHintTextStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              searchTextStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: FFLocalizations.of(context).getText(
                                '2g6r2u7e' /* Select course... */,
                              ),
                              searchHintText:
                                  FFLocalizations.of(context).getText(
                                '3d24r8qx' /* Search for an course... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: true,
                              isMultiSelect: false,
                            ),
                          ),
                        );
                      },
                    ),
                    StreamBuilder<List<CourseRecord>>(
                      stream: queryCourseRecord(
                        queryBuilder: (courseRecord) => courseRecord.where(
                          'name',
                          isEqualTo: _model.dropDownValue,
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
                        List<CourseRecord> wrapCourseRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final wrapCourseRecord = wrapCourseRecordList.isNotEmpty
                            ? wrapCourseRecordList.first
                            : null;
                        return Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    _model.batchExistsCount =
                                        await queryBatchesRecordOnce(
                                      queryBuilder: (batchesRecord) =>
                                          batchesRecord
                                              .where(
                                                'courseRef',
                                                arrayContains:
                                                    wrapCourseRecord?.reference,
                                              )
                                              .where(
                                                'id',
                                                isEqualTo: widget.batchID,
                                              ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    _shouldSetState = true;
                                    if ((_model.batchExistsCount != null) ==
                                        false) {
                                      _model.batchExistsCount2 =
                                          await queryBatchesRecordOnce(
                                        queryBuilder: (batchesRecord) =>
                                            batchesRecord
                                                .where(
                                                  'archiveCourseRef',
                                                  arrayContains:
                                                      wrapCourseRecord
                                                          ?.reference,
                                                )
                                                .where(
                                                  'id',
                                                  isEqualTo: widget.batchID,
                                                ),
                                        singleRecord: true,
                                      ).then((s) => s.firstOrNull);
                                      _shouldSetState = true;
                                      if ((_model.batchExistsCount2 != null) ==
                                          false) {
                                        await widget.batchesRef!.update({
                                          ...mapToFirestore(
                                            {
                                              'courseRef':
                                                  FieldValue.arrayUnion([
                                                wrapCourseRecord?.reference
                                              ]),
                                            },
                                          ),
                                        });
                                        _model.batchRslt1 =
                                            await BatchesRecord.getDocumentOnce(
                                                widget.batchesRef!);
                                        _shouldSetState = true;

                                        await wrapCourseRecord!.reference
                                            .update(createCourseRecordData(
                                          bookingLimit:
                                              _model.batchRslt1?.bookingLimit,
                                          bookedCount:
                                              _model.batchRslt1?.bookingLimit,
                                        ));
                                        Navigator.pop(context);

                                        context.goNamed(
                                          'Batch',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'This course already added in Archive Course List',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'This course already added in Ongoing Course List',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.addButtonModel,
                                    updateCallback: () => setState(() {}),
                                    child: AddButtonWidget(
                                      text: FFLocalizations.of(context).getText(
                                        'l16rhw71' /* Save */,
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
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
