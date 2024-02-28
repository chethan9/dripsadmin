import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'initial_order_bar_processes_model.dart';
export 'initial_order_bar_processes_model.dart';

class InitialOrderBarProcessesWidget extends StatefulWidget {
  const InitialOrderBarProcessesWidget({super.key});

  @override
  State<InitialOrderBarProcessesWidget> createState() =>
      _InitialOrderBarProcessesWidgetState();
}

class _InitialOrderBarProcessesWidgetState
    extends State<InitialOrderBarProcessesWidget> {
  late InitialOrderBarProcessesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialOrderBarProcessesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dailyOrderRslt = await queryOrdersRecordOnce(
        queryBuilder: (ordersRecord) => ordersRecord
            .where(
              'status',
              isEqualTo: 'Paid',
            )
            .where(
              'createdAt',
              isGreaterThan: functions.getDateForOrderCurrentDate(),
            ),
        limit: 300,
      );
      _model.transactionOrderbarRslt1 =
          await queryTransactionOrderBarRecordOnce(
        queryBuilder: (transactionOrderBarRecord) =>
            transactionOrderBarRecord.where(
          'createdAt',
          isGreaterThan: functions.getDateForOrderCurrentDate(),
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if ((_model.transactionOrderbarRslt1 != null) == true) {
        await _model.transactionOrderbarRslt1!.reference
            .update(createTransactionOrderBarRecordData(
          numberOfOrder: _model.dailyOrderRslt?.length?.toDouble(),
          totalOrderPrice: functions
              .newOrderTotal(_model.dailyOrderRslt!
                  .map((e) => e.cartTotal)
                  .toList()
                  .toList())
              .toDouble(),
        ));
      } else {
        await TransactionOrderBarRecord.collection
            .doc()
            .set(createTransactionOrderBarRecordData(
              numberOfOrder: _model.dailyOrderRslt?.length?.toDouble(),
              month: dateTimeFormat(
                'yMMMd',
                getCurrentTimestamp,
                locale: FFLocalizations.of(context).languageCode,
              ),
              createdAt: functions.getDateForOrderCurrentDate(),
              totalOrderPrice: functions
                  .newOrderTotal(_model.dailyOrderRslt!
                      .map((e) => e.cartTotal)
                      .toList()
                      .toList())
                  .toDouble(),
            ));
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
