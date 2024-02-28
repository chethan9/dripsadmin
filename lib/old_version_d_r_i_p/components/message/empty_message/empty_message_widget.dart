import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_message_model.dart';
export 'empty_message_model.dart';

class EmptyMessageWidget extends StatefulWidget {
  const EmptyMessageWidget({
    super.key,
    String? emptyText,
  }) : this.emptyText = emptyText ?? 'Empty';

  final String emptyText;

  @override
  State<EmptyMessageWidget> createState() => _EmptyMessageWidgetState();
}

class _EmptyMessageWidgetState extends State<EmptyMessageWidget> {
  late EmptyMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyMessageModel());

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

    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/no-record.png',
              width: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
