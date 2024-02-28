import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "orderID" field.
  String? _orderID;
  String get orderID => _orderID ?? '';
  bool hasOrderID() => _orderID != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "item" field.
  List<DocumentReference>? _item;
  List<DocumentReference> get item => _item ?? const [];
  bool hasItem() => _item != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "order" field.
  String? _order;
  String get order => _order ?? '';
  bool hasOrder() => _order != null;

  // "paymentmethod" field.
  String? _paymentmethod;
  String get paymentmethod => _paymentmethod ?? '';
  bool hasPaymentmethod() => _paymentmethod != null;

  // "paymenttype" field.
  String? _paymenttype;
  String get paymenttype => _paymenttype ?? '';
  bool hasPaymenttype() => _paymenttype != null;

  // "couponRef" field.
  DocumentReference? _couponRef;
  DocumentReference? get couponRef => _couponRef;
  bool hasCouponRef() => _couponRef != null;

  // "orderProcesses" field.
  String? _orderProcesses;
  String get orderProcesses => _orderProcesses ?? '';
  bool hasOrderProcesses() => _orderProcesses != null;

  // "order_product" field.
  List<OrderProductStruct>? _orderProduct;
  List<OrderProductStruct> get orderProduct => _orderProduct ?? const [];
  bool hasOrderProduct() => _orderProduct != null;

  // "cartTotal" field.
  int? _cartTotal;
  int get cartTotal => _cartTotal ?? 0;
  bool hasCartTotal() => _cartTotal != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _orderID = snapshotData['orderID'] as String?;
    _status = snapshotData['status'] as String?;
    _item = getDataList(snapshotData['item']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _order = snapshotData['order'] as String?;
    _paymentmethod = snapshotData['paymentmethod'] as String?;
    _paymenttype = snapshotData['paymenttype'] as String?;
    _couponRef = snapshotData['couponRef'] as DocumentReference?;
    _orderProcesses = snapshotData['orderProcesses'] as String?;
    _orderProduct = getStructList(
      snapshotData['order_product'],
      OrderProductStruct.fromMap,
    );
    _cartTotal = castToType<int>(snapshotData['cartTotal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? userRef,
  String? orderID,
  String? status,
  DateTime? createdAt,
  String? order,
  String? paymentmethod,
  String? paymenttype,
  DocumentReference? couponRef,
  String? orderProcesses,
  int? cartTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'orderID': orderID,
      'status': status,
      'createdAt': createdAt,
      'order': order,
      'paymentmethod': paymentmethod,
      'paymenttype': paymenttype,
      'couponRef': couponRef,
      'orderProcesses': orderProcesses,
      'cartTotal': cartTotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.orderID == e2?.orderID &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.item, e2?.item) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.order == e2?.order &&
        e1?.paymentmethod == e2?.paymentmethod &&
        e1?.paymenttype == e2?.paymenttype &&
        e1?.couponRef == e2?.couponRef &&
        e1?.orderProcesses == e2?.orderProcesses &&
        listEquality.equals(e1?.orderProduct, e2?.orderProduct) &&
        e1?.cartTotal == e2?.cartTotal;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.orderID,
        e?.status,
        e?.item,
        e?.createdAt,
        e?.order,
        e?.paymentmethod,
        e?.paymenttype,
        e?.couponRef,
        e?.orderProcesses,
        e?.orderProduct,
        e?.cartTotal
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
