import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'bulk_sms_processing_model.dart';
export 'bulk_sms_processing_model.dart';

class BulkSmsProcessingWidget extends StatefulWidget {
  const BulkSmsProcessingWidget({
    super.key,
    required this.message,
    required this.phoneNumberList,
    required this.smsBulkRef,
    required this.navigation,
  });

  final String? message;
  final List<String>? phoneNumberList;
  final DocumentReference? smsBulkRef;
  final String? navigation;

  @override
  State<BulkSmsProcessingWidget> createState() =>
      _BulkSmsProcessingWidgetState();
}

class _BulkSmsProcessingWidgetState extends State<BulkSmsProcessingWidget> {
  late BulkSmsProcessingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BulkSmsProcessingModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult6hmCopy = await SMSmaketingBulkCall.call(
        message: widget.message,
        phoneListList: widget.phoneNumberList,
      );
      if ((_model.apiResult6hmCopy?.succeeded ?? true)) {
        await widget.smsBulkRef!.update(createSmsMarketRecordData(
          status: 'Success',
        ));
        Navigator.pop(context);

        context.pushNamed(
          'BulkSMSMarketing',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      } else {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Error',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    });

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
                  Lottie.asset(
                    'assets/lottie_animations/animation_llp3dv8a.json',
                    width: 250.0,
                    height: 250.0,
                    fit: BoxFit.cover,
                    animate: true,
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
