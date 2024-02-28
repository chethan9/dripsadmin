import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_list_model.dart';
export 'create_list_model.dart';

class CreateListWidget extends StatefulWidget {
  const CreateListWidget({
    super.key,
    this.countryRef,
    this.universityRef,
    this.categoryRef,
  });

  final CountryRecord? countryRef;
  final UniversityRecord? universityRef;
  final CategoryRecord? categoryRef;

  @override
  State<CreateListWidget> createState() => _CreateListWidgetState();
}

class _CreateListWidgetState extends State<CreateListWidget> {
  late CreateListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateListModel());

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

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
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.3,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      _model.uploadedFileUrl,
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academy-backend-uubu81/assets/4jkvsr538si7/Placeholder_view_vector.svg.png',
                    ),
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 210.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            maxWidth: 1500.00,
                            maxHeight: 1500.00,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            setState(() => _model.isDataUploading = true);
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
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                            } else {
                              setState(() {});
                              return;
                            }
                          }

                          setState(() {
                            FFAppState().courseImgFeature =
                                _model.uploadedFileUrl;
                          });
                        },
                        text: FFLocalizations.of(context).getText(
                          '7avntsae' /* Add Image */,
                        ),
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).backgroundComponents,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context).overlay,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Lexend Deca'),
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                    if (_model.uploadedFileUrl != '')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
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
                                      height: 200.0,
                                      child: RemoveWidget(
                                        image: 1,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: FFLocalizations.of(context).getText(
                            'n3bi5y7d' /* Remove */,
                          ),
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Lexend Deca'),
                                ),
                            elevation: 0.5,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: TextFormField(
                    controller: _model.nameController,
                    focusNode: _model.nameFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'gb3qefds' /* Name */,
                      ),
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
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 32.0, 20.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.multiline,
                    validator:
                        _model.nameControllerValidator.asValidator(context),
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
                      _model.userIP1 = await actions.getUserIPaddress();
                      _model.userSession1 = await actions.getUserSessionID(
                        currentUserUid,
                      );
                      if (((widget.universityRef != null) == true) &&
                          ((widget.countryRef != null) == true) &&
                          ((widget.categoryRef != null) == true)) {
                        var branchRecordReference =
                            BranchRecord.collection.doc();
                        await branchRecordReference.set(createBranchRecordData(
                          name: _model.nameController.text,
                          image: _model.uploadedFileUrl,
                          universityRef: widget.universityRef?.reference,
                          categoryRef: widget.categoryRef?.reference,
                        ));
                        _model.branchResult1 = BranchRecord.getDocumentFromData(
                            createBranchRecordData(
                              name: _model.nameController.text,
                              image: _model.uploadedFileUrl,
                              universityRef: widget.universityRef?.reference,
                              categoryRef: widget.categoryRef?.reference,
                            ),
                            branchRecordReference);

                        await ActivityLogRecord.collection.doc().set({
                          ...createActivityLogRecordData(
                            userRef: currentUserReference,
                            userIP: _model.userIP1,
                            userRole: valueOrDefault(
                                currentUserDocument?.userRole, ''),
                            createdAt: getCurrentTimestamp,
                            eventType: 'Created',
                            object: 'Branch',
                            eventId: _model.branchResult1?.reference.id,
                            eventTitle: _model.nameController.text,
                            userSessionID: _model.userSession1,
                          ),
                          ...mapToFirestore(
                            {
                              'eventStatus': ['Create'],
                            },
                          ),
                        });
                        Navigator.pop(context);
                      } else {
                        if (((widget.universityRef != null) == true) &&
                            ((widget.countryRef != null) == true)) {
                          var categoryRecordReference =
                              CategoryRecord.collection.doc();
                          await categoryRecordReference
                              .set(createCategoryRecordData(
                            name: _model.nameController.text,
                            image: _model.uploadedFileUrl,
                            countryRef: widget.countryRef?.reference,
                            universityRef: widget.universityRef?.reference,
                          ));
                          _model.categoryResult1 =
                              CategoryRecord.getDocumentFromData(
                                  createCategoryRecordData(
                                    name: _model.nameController.text,
                                    image: _model.uploadedFileUrl,
                                    countryRef: widget.countryRef?.reference,
                                    universityRef:
                                        widget.universityRef?.reference,
                                  ),
                                  categoryRecordReference);

                          await ActivityLogRecord.collection.doc().set({
                            ...createActivityLogRecordData(
                              userRef: currentUserReference,
                              userIP: _model.userIP1,
                              userRole: valueOrDefault(
                                  currentUserDocument?.userRole, ''),
                              createdAt: getCurrentTimestamp,
                              eventType: 'Created',
                              object: 'Category',
                              eventId: _model.categoryResult1?.reference.id,
                              eventTitle: _model.nameController.text,
                              userSessionID: _model.userSession1,
                            ),
                            ...mapToFirestore(
                              {
                                'eventStatus': ['Create'],
                              },
                            ),
                          });
                          Navigator.pop(context);
                        } else {
                          if ((widget.countryRef != null) == true) {
                            var universityRecordReference =
                                UniversityRecord.collection.doc();
                            await universityRecordReference
                                .set(createUniversityRecordData(
                              name: _model.nameController.text,
                              image: _model.uploadedFileUrl,
                              countryRef: widget.countryRef?.reference,
                            ));
                            _model.universityRslt1 =
                                UniversityRecord.getDocumentFromData(
                                    createUniversityRecordData(
                                      name: _model.nameController.text,
                                      image: _model.uploadedFileUrl,
                                      countryRef: widget.countryRef?.reference,
                                    ),
                                    universityRecordReference);

                            await ActivityLogRecord.collection.doc().set({
                              ...createActivityLogRecordData(
                                userRef: currentUserReference,
                                userIP: _model.userIP1,
                                userRole: valueOrDefault(
                                    currentUserDocument?.userRole, ''),
                                createdAt: getCurrentTimestamp,
                                eventType: 'Created',
                                object: 'University',
                                eventId: _model.universityRslt1?.reference.id,
                                eventTitle: _model.nameController.text,
                                userSessionID: _model.userSession1,
                              ),
                              ...mapToFirestore(
                                {
                                  'eventStatus': ['Create'],
                                },
                              ),
                            });
                            Navigator.pop(context);
                          } else {
                            var countryRecordReference =
                                CountryRecord.collection.doc();
                            await countryRecordReference
                                .set(createCountryRecordData(
                              name: _model.nameController.text,
                              image: _model.uploadedFileUrl,
                            ));
                            _model.countryRslt1 =
                                CountryRecord.getDocumentFromData(
                                    createCountryRecordData(
                                      name: _model.nameController.text,
                                      image: _model.uploadedFileUrl,
                                    ),
                                    countryRecordReference);

                            await ActivityLogRecord.collection.doc().set({
                              ...createActivityLogRecordData(
                                userRef: currentUserReference,
                                userIP: _model.userIP1,
                                userRole: valueOrDefault(
                                    currentUserDocument?.userRole, ''),
                                createdAt: getCurrentTimestamp,
                                eventType: 'Created',
                                object: 'Country',
                                eventId: _model.countryRslt1?.reference.id,
                                eventTitle: _model.nameController.text,
                                userSessionID: _model.userSession1,
                              ),
                              ...mapToFirestore(
                                {
                                  'eventStatus': ['Create'],
                                },
                              ),
                            });
                            Navigator.pop(context);
                          }
                        }
                      }

                      setState(() {});
                    },
                    child: wrapWithModel(
                      model: _model.addButtonModel,
                      updateCallback: () => setState(() {}),
                      child: AddButtonWidget(
                        text: FFLocalizations.of(context).getText(
                          'xqtu2cer' /* Save */,
                        ),
                        icon: Icon(
                          Icons.save_outlined,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
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
      ),
    );
  }
}
