import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/online_classes/batches/expand_textfield/expand_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'textfield_popup_model.dart';
export 'textfield_popup_model.dart';

class TextfieldPopupWidget extends StatefulWidget {
  const TextfieldPopupWidget({super.key});

  @override
  State<TextfieldPopupWidget> createState() => _TextfieldPopupWidgetState();
}

class _TextfieldPopupWidgetState extends State<TextfieldPopupWidget> {
  late TextfieldPopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextfieldPopupModel());

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

    return Container(
      width: 130.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) => FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 100.0,
                borderWidth: 1.0,
                buttonSize: 30.0,
                fillColor: Color(0x5BFF6262),
                icon: Icon(
                  Icons.zoom_out_map,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 15.0,
                ),
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        child: WebViewAware(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            child: ExpandTextfieldWidget(),
                          ),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 100.0,
              borderWidth: 1.0,
              buttonSize: 30.0,
              fillColor: Color(0xFFD2F3D1),
              icon: Icon(
                Icons.content_copy,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 15.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 100.0,
              borderWidth: 1.0,
              buttonSize: 30.0,
              fillColor: Color(0xFFF76A6A),
              icon: Icon(
                Icons.remove_circle_outline,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 15.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
