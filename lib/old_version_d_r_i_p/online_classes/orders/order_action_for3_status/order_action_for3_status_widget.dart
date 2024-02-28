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
import 'order_action_for3_status_model.dart';
export 'order_action_for3_status_model.dart';

class OrderActionFor3StatusWidget extends StatefulWidget {
  const OrderActionFor3StatusWidget({
    super.key,
    this.subscriptionRef,
    required this.orderHistoryRef,
    int? orderUpdateStatus,
    required this.userRef,
    required this.chargeID,
    String? paymentStatus,
    required this.orderRef,
  })  : this.orderUpdateStatus = orderUpdateStatus ?? 1,
        this.paymentStatus = paymentStatus ?? '';

  final SubscriptionRecord? subscriptionRef;
  final OrderHistoryRecord? orderHistoryRef;
  final int orderUpdateStatus;
  final DocumentReference? userRef;
  final String? chargeID;
  final String paymentStatus;
  final OrdersRecord? orderRef;

  @override
  State<OrderActionFor3StatusWidget> createState() =>
      _OrderActionFor3StatusWidgetState();
}

class _OrderActionFor3StatusWidgetState
    extends State<OrderActionFor3StatusWidget> {
  late OrderActionFor3StatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderActionFor3StatusModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.coursePlanRslt1 = await CoursePlanRecord.getDocumentOnce(
          widget.orderHistoryRef!.coursePlan!);
      if (widget.orderUpdateStatus == 0) {
        if (widget.orderHistoryRef?.paymentType == 'Full payment') {
          if (widget.paymentStatus != 'PENDING') {
            await SubscriptionRecord.collection
                .doc()
                .set(createSubscriptionRecordData(
                  courseRef: widget.orderHistoryRef?.courseRef,
                  userRef: widget.userRef,
                  paymentId: widget.chargeID,
                  paymentStatus: widget.paymentStatus,
                  startDate: getCurrentTimestamp,
                  paymentType: 'Full payment',
                  batchesRef: widget.orderHistoryRef?.batchesRef,
                  status: 'Ongoing',
                  endDate: functions.getDateForSubscription(
                      getCurrentTimestamp, _model.coursePlanRslt1!.numberDays),
                  coursePlan: widget.orderHistoryRef?.coursePlan,
                ));

            await widget.orderHistoryRef!.courseRef!.update({
              ...mapToFirestore(
                {
                  'bookedCount': FieldValue.increment(-(1)),
                },
              ),
            });
          }
        } else {
          if (widget.orderHistoryRef?.emiPaymentType == 'First') {
            if (widget.paymentStatus != 'PENDING') {
              await SubscriptionRecord.collection
                  .doc()
                  .set(createSubscriptionRecordData(
                    courseRef: widget.orderHistoryRef?.courseRef,
                    userRef: widget.userRef,
                    startDate: getCurrentTimestamp,
                    paymentType: 'EMI',
                    firstPaymentID: widget.chargeID,
                    firstPaymentStatus: widget.paymentStatus,
                    firstEMIvalidUpto: functions.getDateForSubscription(
                        getCurrentTimestamp, 30),
                    batchesRef: widget.orderHistoryRef?.batchesRef,
                    status: 'Ongoing',
                    endDate: functions.getDateForSubscription(
                        getCurrentTimestamp,
                        _model.coursePlanRslt1!.numberDays),
                    coursePlan: widget.orderHistoryRef?.coursePlan,
                  ));

              await widget.orderHistoryRef!.courseRef!.update({
                ...mapToFirestore(
                  {
                    'bookedCount': FieldValue.increment(-(1)),
                  },
                ),
              });
            }
          }
        }

        _model.coursRslt1 = await CourseRecord.getDocumentOnce(
            widget.orderHistoryRef!.courseRef!);
        _model.batchRslt1 =
            await BatchesRecord.getDocumentOnce(_model.coursRslt1!.batchesRef!);
        _model.userRslt1 = await UsersRecord.getDocumentOnce(widget.userRef!);

        await MailRecord.collection.doc().set(createMailRecordData(
              to: _model.userRslt1?.email,
              template: createTemplateMainStruct(
                data: createTemplateMessagePartStruct(
                  userName: _model.userRslt1?.displayName,
                  title: _model.coursRslt1?.name,
                  subtitle: _model.batchRslt1?.name,
                  image: _model.coursRslt1?.imageBlurhash,
                  date: dateTimeFormat(
                    'd/M h:mm a',
                    getCurrentTimestamp,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  clearUnsetFields: false,
                  create: true,
                ),
                name: 'CourseEnroll',
                clearUnsetFields: false,
                create: true,
              ),
              createdAt: getCurrentTimestamp,
            ));
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
        );
        _model.transactionOrderbarRslt1 =
            await queryTransactionOrderBarRecordOnce(
          queryBuilder: (transactionOrderBarRecord) =>
              transactionOrderBarRecord.where(
            'createdAt',
            isEqualTo: functions.getDateForOrderCurrentDate(),
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
                    .toDouble() +
                _model.transactionOrderbarRslt1!.totalOrderPrice,
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
      } else {
        if (widget.orderHistoryRef?.paymentType == 'Full payment') {
          if (widget.paymentStatus == 'CANCELLED') {
            await widget.subscriptionRef!.reference.delete();
          } else {
            if (widget.paymentStatus != 'PENDING') {
              await widget.subscriptionRef!.reference
                  .update(createSubscriptionRecordData(
                paymentId: widget.chargeID,
                paymentStatus: widget.paymentStatus,
                startDate: getCurrentTimestamp,
              ));
            }
          }
        } else {
          if (widget.orderHistoryRef?.emiPaymentType == 'First') {
            if (widget.paymentStatus == 'CANCELLED') {
              await widget.subscriptionRef!.reference
                  .update(createSubscriptionRecordData(
                firstPaymentID: '',
                firstPaymentStatus: '',
                firstEMIvalidUpto: getCurrentTimestamp,
              ));
            } else {
              if (widget.paymentStatus != 'PENDING') {
                await widget.subscriptionRef!.reference
                    .update(createSubscriptionRecordData(
                  startDate: getCurrentTimestamp,
                  firstPaymentID: widget.chargeID,
                  firstPaymentStatus: widget.paymentStatus,
                  firstEMIvalidUpto:
                      functions.getDateForSubscription(getCurrentTimestamp, 30),
                ));
              }
            }
          } else {
            if (widget.orderHistoryRef?.emiPaymentType == 'Second') {
              if (widget.paymentStatus == 'CANCELLED') {
                await widget.subscriptionRef!.reference
                    .update(createSubscriptionRecordData(
                  secondPaymentID: '',
                  secondPaymentStatus: '',
                  secondEMIvalidUpto: getCurrentTimestamp,
                ));
              } else {
                if (widget.paymentStatus != 'PENDING') {
                  await widget.subscriptionRef!.reference
                      .update(createSubscriptionRecordData(
                    startDate: getCurrentTimestamp,
                    secondPaymentID: widget.chargeID,
                    secondPaymentStatus: widget.paymentStatus,
                    secondEMIvalidUpto: functions.getDateForSubscription(
                        getCurrentTimestamp, 30),
                  ));
                }
              }
            } else {
              if (widget.paymentStatus == 'CANCELLED') {
                await widget.subscriptionRef!.reference
                    .update(createSubscriptionRecordData(
                  thirdPaymentID: '',
                  thirdPaymentStatus: '',
                  thirdEMIvalidUpto: getCurrentTimestamp,
                ));
              } else {
                if (widget.paymentStatus != 'PENDING') {
                  await widget.subscriptionRef!.reference
                      .update(createSubscriptionRecordData(
                    startDate: getCurrentTimestamp,
                    thirdPaymentID: widget.chargeID,
                    thirdPaymentStatus: widget.paymentStatus,
                    thirdEMIvalidUpto: functions.getDateForSubscription(
                        getCurrentTimestamp, 30),
                  ));
                }
              }
            }
          }
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
