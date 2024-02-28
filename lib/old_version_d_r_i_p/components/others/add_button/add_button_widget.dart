import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_button_model.dart';
export 'add_button_model.dart';

class AddButtonWidget extends StatefulWidget {
  const AddButtonWidget({
    super.key,
    this.text,
    this.icon,
    Color? bg1,
    Color? bg2,
    int? height,
    int? width,
    int? fontSize,
    int? iconSize,
  })  : this.bg1 = bg1 ?? const Color(0xFF3A7B5B),
        this.bg2 = bg2 ?? const Color(0xFF4FB57E),
        this.height = height ?? 50,
        this.width = width ?? 120,
        this.fontSize = fontSize ?? 16,
        this.iconSize = iconSize ?? 18;

  final String? text;
  final Widget? icon;
  final Color bg1;
  final Color bg2;
  final int height;
  final int width;
  final int fontSize;
  final int iconSize;

  @override
  State<AddButtonWidget> createState() => _AddButtonWidgetState();
}

class _AddButtonWidgetState extends State<AddButtonWidget> {
  late AddButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddButtonModel());

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

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: widget.width.toDouble(),
        height: widget.height.toDouble(),
        decoration: BoxDecoration(
          color: widget.bg2,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: widget.bg1,
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: widget.icon!,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Text(
                  widget.text!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.white,
                        fontSize: widget.fontSize.toDouble(),
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
