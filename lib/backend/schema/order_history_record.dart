import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderHistoryRecord extends FirestoreRecord {
  OrderHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderRef" field.
  DocumentReference? _orderRef;
  DocumentReference? get orderRef => _orderRef;
  bool hasOrderRef() => _orderRef != null;

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "paymentType" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  // "emiPaymentType" field.
  String? _emiPaymentType;
  String get emiPaymentType => _emiPaymentType ?? '';
  bool hasEmiPaymentType() => _emiPaymentType != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "orderNum" field.
  String? _orderNum;
  String get orderNum => _orderNum ?? '';
  bool hasOrderNum() => _orderNum != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "batchesRef" field.
  DocumentReference? _batchesRef;
  DocumentReference? get batchesRef => _batchesRef;
  bool hasBatchesRef() => _batchesRef != null;

  // "couponStatus" field.
  bool? _couponStatus;
  bool get couponStatus => _couponStatus ?? false;
  bool hasCouponStatus() => _couponStatus != null;

  // "couponRef" field.
  DocumentReference? _couponRef;
  DocumentReference? get couponRef => _couponRef;
  bool hasCouponRef() => _couponRef != null;

  // "couponPrice" field.
  double? _couponPrice;
  double get couponPrice => _couponPrice ?? 0.0;
  bool hasCouponPrice() => _couponPrice != null;

  // "coursePlan" field.
  DocumentReference? _coursePlan;
  DocumentReference? get coursePlan => _coursePlan;
  bool hasCoursePlan() => _coursePlan != null;

  void _initializeFields() {
    _orderRef = snapshotData['orderRef'] as DocumentReference?;
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _paymentType = snapshotData['paymentType'] as String?;
    _emiPaymentType = snapshotData['emiPaymentType'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _orderNum = snapshotData['orderNum'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _batchesRef = snapshotData['batchesRef'] as DocumentReference?;
    _couponStatus = snapshotData['couponStatus'] as bool?;
    _couponRef = snapshotData['couponRef'] as DocumentReference?;
    _couponPrice = castToType<double>(snapshotData['couponPrice']);
    _coursePlan = snapshotData['coursePlan'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderHistory');

  static Stream<OrderHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderHistoryRecord.fromSnapshot(s));

  static Future<OrderHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderHistoryRecord.fromSnapshot(s));

  static OrderHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderHistoryRecordData({
  DocumentReference? orderRef,
  DocumentReference? courseRef,
  String? paymentType,
  String? emiPaymentType,
  double? price,
  String? orderNum,
  DateTime? createdAt,
  DocumentReference? batchesRef,
  bool? couponStatus,
  DocumentReference? couponRef,
  double? couponPrice,
  DocumentReference? coursePlan,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderRef': orderRef,
      'courseRef': courseRef,
      'paymentType': paymentType,
      'emiPaymentType': emiPaymentType,
      'price': price,
      'orderNum': orderNum,
      'createdAt': createdAt,
      'batchesRef': batchesRef,
      'couponStatus': couponStatus,
      'couponRef': couponRef,
      'couponPrice': couponPrice,
      'coursePlan': coursePlan,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderHistoryRecordDocumentEquality
    implements Equality<OrderHistoryRecord> {
  const OrderHistoryRecordDocumentEquality();

  @override
  bool equals(OrderHistoryRecord? e1, OrderHistoryRecord? e2) {
    return e1?.orderRef == e2?.orderRef &&
        e1?.courseRef == e2?.courseRef &&
        e1?.paymentType == e2?.paymentType &&
        e1?.emiPaymentType == e2?.emiPaymentType &&
        e1?.price == e2?.price &&
        e1?.orderNum == e2?.orderNum &&
        e1?.createdAt == e2?.createdAt &&
        e1?.batchesRef == e2?.batchesRef &&
        e1?.couponStatus == e2?.couponStatus &&
        e1?.couponRef == e2?.couponRef &&
        e1?.couponPrice == e2?.couponPrice &&
        e1?.coursePlan == e2?.coursePlan;
  }

  @override
  int hash(OrderHistoryRecord? e) => const ListEquality().hash([
        e?.orderRef,
        e?.courseRef,
        e?.paymentType,
        e?.emiPaymentType,
        e?.price,
        e?.orderNum,
        e?.createdAt,
        e?.batchesRef,
        e?.couponStatus,
        e?.couponRef,
        e?.couponPrice,
        e?.coursePlan
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderHistoryRecord;
}
