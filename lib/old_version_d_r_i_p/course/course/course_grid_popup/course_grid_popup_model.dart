import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import 'course_grid_popup_widget.dart' show CourseGridPopupWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourseGridPopupModel extends FlutterFlowModel<CourseGridPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Add_button component.
  late AddButtonModel addButtonModel1;
  // Model for Add_button component.
  late AddButtonModel addButtonModel2;
  // Model for Add_button component.
  late AddButtonModel addButtonModel3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    addButtonModel1 = createModel(context, () => AddButtonModel());
    addButtonModel2 = createModel(context, () => AddButtonModel());
    addButtonModel3 = createModel(context, () => AddButtonModel());
  }

  @override
  void dispose() {
    addButtonModel1.dispose();
    addButtonModel2.dispose();
    addButtonModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
