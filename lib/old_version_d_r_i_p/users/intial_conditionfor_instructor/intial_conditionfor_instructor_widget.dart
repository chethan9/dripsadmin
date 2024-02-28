import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'intial_conditionfor_instructor_model.dart';
export 'intial_conditionfor_instructor_model.dart';

class IntialConditionforInstructorWidget extends StatefulWidget {
  const IntialConditionforInstructorWidget({super.key});

  @override
  State<IntialConditionforInstructorWidget> createState() =>
      _IntialConditionforInstructorWidgetState();
}

class _IntialConditionforInstructorWidgetState
    extends State<IntialConditionforInstructorWidget> {
  late IntialConditionforInstructorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntialConditionforInstructorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.userRole, '') == 'Instructor') {
        context.goNamedAuth(
          'Course',
          context.mounted,
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      } else {
        if (valueOrDefault(currentUserDocument?.userRole, '') == 'Student') {
          GoRouter.of(context).prepareAuthEvent();
          await authManager.signOut();
          GoRouter.of(context).clearRedirectLocation();
        }
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

    return Container();
  }
}
