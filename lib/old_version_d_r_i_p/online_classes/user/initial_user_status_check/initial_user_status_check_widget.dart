import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/old_version_d_r_i_p/online_classes/user/block_status/block_status_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'initial_user_status_check_model.dart';
export 'initial_user_status_check_model.dart';

class InitialUserStatusCheckWidget extends StatefulWidget {
  const InitialUserStatusCheckWidget({super.key});

  @override
  State<InitialUserStatusCheckWidget> createState() =>
      _InitialUserStatusCheckWidgetState();
}

class _InitialUserStatusCheckWidgetState
    extends State<InitialUserStatusCheckWidget> {
  late InitialUserStatusCheckModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialUserStatusCheckModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentUserUid != '') {
        if (valueOrDefault(currentUserDocument?.status, '') != 'Block') {
          if (valueOrDefault(currentUserDocument?.userRole, '') == 'Student') {
            GoRouter.of(context).prepareAuthEvent();
            await authManager.signOut();
            GoRouter.of(context).clearRedirectLocation();

            context.pushNamedAuth('SignIN', context.mounted);
          }
        } else {
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
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    child: BlockStatusWidget(
                      message:
                          valueOrDefault(currentUserDocument?.blockReason, ''),
                    ),
                  ),
                ),
              );
            },
          ).then((value) => setState(() {}));

          GoRouter.of(context).prepareAuthEvent();
          await authManager.signOut();
          GoRouter.of(context).clearRedirectLocation();

          context.pushNamedAuth('SignIN', context.mounted);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Your account has been blocked, Please contact support team.',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
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

    return Builder(
      builder: (context) => Container(),
    );
  }
}
