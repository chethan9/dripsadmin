import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionOrderBarRecord extends FirestoreRecord {
  TransactionOrderBarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  bool hasMonth() => _month != null;

  // "numberOfOrder" field.
  double? _numberOfOrder;
  double get numberOfOrder => _numberOfOrder ?? 0.0;
  bool hasNumberOfOrder() => _numberOfOrder != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "totalOrderPrice" field.
  double? _totalOrderPrice;
  double get totalOrderPrice => _totalOrderPrice ?? 0.0;
  bool hasTotalOrderPrice() => _totalOrderPrice != null;

  void _initializeFields() {
    _month = snapshotData['month'] as String?;
    _numberOfOrder = castToType<double>(snapshotData['numberOfOrder']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _totalOrderPrice = castToType<double>(snapshotData['totalOrderPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactionOrderBar');

  static Stream<TransactionOrderBarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionOrderBarRecord.fromSnapshot(s));

  static Future<TransactionOrderBarRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TransactionOrderBarRecord.fromSnapshot(s));

  static TransactionOrderBarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionOrderBarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionOrderBarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionOrderBarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionOrderBarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionOrderBarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionOrderBarRecordData({
  String? month,
  double? numberOfOrder,
  DateTime? createdAt,
  double? totalOrderPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'month': month,
      'numberOfOrder': numberOfOrder,
      'createdAt': createdAt,
      'totalOrderPrice': totalOrderPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionOrderBarRecordDocumentEquality
    implements Equality<TransactionOrderBarRecord> {
  const TransactionOrderBarRecordDocumentEquality();

  @override
  bool equals(TransactionOrderBarRecord? e1, TransactionOrderBarRecord? e2) {
    return e1?.month == e2?.month &&
        e1?.numberOfOrder == e2?.numberOfOrder &&
        e1?.createdAt == e2?.createdAt &&
        e1?.totalOrderPrice == e2?.totalOrderPrice;
  }

  @override
  int hash(TransactionOrderBarRecord? e) => const ListEquality()
      .hash([e?.month, e?.numberOfOrder, e?.createdAt, e?.totalOrderPrice]);

  @override
  bool isValidKey(Object? o) => o is TransactionOrderBarRecord;
}
