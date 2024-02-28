import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 's_m_s_bulk_check_box_model.dart';
export 's_m_s_bulk_check_box_model.dart';

class SMSBulkCheckBoxWidget extends StatefulWidget {
  const SMSBulkCheckBoxWidget({super.key});

  @override
  State<SMSBulkCheckBoxWidget> createState() => _SMSBulkCheckBoxWidgetState();
}

class _SMSBulkCheckBoxWidgetState extends State<SMSBulkCheckBoxWidget> {
  late SMSBulkCheckBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SMSBulkCheckBoxModel());

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

    return FlutterFlowCheckboxGroup(
      options: [''],
      onChanged: (val) => setState(() => _model.checkboxGroupValues = val),
      controller: _model.checkboxGroupValueController ??=
          FormFieldController<List<String>>(
        [],
      ),
      activeColor: FlutterFlowTheme.of(context).primary,
      checkColor: FlutterFlowTheme.of(context).secondaryBackground,
      checkboxBorderColor: FlutterFlowTheme.of(context).secondaryText,
      textStyle: FlutterFlowTheme.of(context).bodyMedium,
      checkboxBorderRadius: BorderRadius.circular(4.0),
      initialized: _model.checkboxGroupValues != null,
    );
  }
}
