import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponRecord extends FirestoreRecord {
  CouponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "usage" field.
  int? _usage;
  int get usage => _usage ?? 0;
  bool hasUsage() => _usage != null;

  // "totalUsage" field.
  int? _totalUsage;
  int get totalUsage => _totalUsage ?? 0;
  bool hasTotalUsage() => _totalUsage != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "orderRef" field.
  List<DocumentReference>? _orderRef;
  List<DocumentReference> get orderRef => _orderRef ?? const [];
  bool hasOrderRef() => _orderRef != null;

  // "userRef" field.
  List<DocumentReference>? _userRef;
  List<DocumentReference> get userRef => _userRef ?? const [];
  bool hasUserRef() => _userRef != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "maximumAmount" field.
  double? _maximumAmount;
  double get maximumAmount => _maximumAmount ?? 0.0;
  bool hasMaximumAmount() => _maximumAmount != null;

  // "minimumAmount" field.
  double? _minimumAmount;
  double get minimumAmount => _minimumAmount ?? 0.0;
  bool hasMinimumAmount() => _minimumAmount != null;

  // "courseList" field.
  List<DocumentReference>? _courseList;
  List<DocumentReference> get courseList => _courseList ?? const [];
  bool hasCourseList() => _courseList != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _usage = castToType<int>(snapshotData['usage']);
    _totalUsage = castToType<int>(snapshotData['totalUsage']);
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _orderRef = getDataList(snapshotData['orderRef']);
    _userRef = getDataList(snapshotData['userRef']);
    _type = snapshotData['type'] as String?;
    _discount = castToType<double>(snapshotData['discount']);
    _maximumAmount = castToType<double>(snapshotData['maximumAmount']);
    _minimumAmount = castToType<double>(snapshotData['minimumAmount']);
    _courseList = getDataList(snapshotData['courseList']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coupon');

  static Stream<CouponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CouponRecord.fromSnapshot(s));

  static Future<CouponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CouponRecord.fromSnapshot(s));

  static CouponRecord fromSnapshot(DocumentSnapshot snapshot) => CouponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CouponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CouponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CouponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CouponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCouponRecordData({
  String? name,
  double? amount,
  int? usage,
  int? totalUsage,
  DateTime? startDate,
  DateTime? endDate,
  String? type,
  double? discount,
  double? maximumAmount,
  double? minimumAmount,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'usage': usage,
      'totalUsage': totalUsage,
      'startDate': startDate,
      'endDate': endDate,
      'type': type,
      'discount': discount,
      'maximumAmount': maximumAmount,
      'minimumAmount': minimumAmount,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class CouponRecordDocumentEquality implements Equality<CouponRecord> {
  const CouponRecordDocumentEquality();

  @override
  bool equals(CouponRecord? e1, CouponRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.usage == e2?.usage &&
        e1?.totalUsage == e2?.totalUsage &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        listEquality.equals(e1?.orderRef, e2?.orderRef) &&
        listEquality.equals(e1?.userRef, e2?.userRef) &&
        e1?.type == e2?.type &&
        e1?.discount == e2?.discount &&
        e1?.maximumAmount == e2?.maximumAmount &&
        e1?.minimumAmount == e2?.minimumAmount &&
        listEquality.equals(e1?.courseList, e2?.courseList) &&
        e1?.status == e2?.status;
  }

  @override
  int hash(CouponRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.usage,
        e?.totalUsage,
        e?.startDate,
        e?.endDate,
        e?.orderRef,
        e?.userRef,
        e?.type,
        e?.discount,
        e?.maximumAmount,
        e?.minimumAmount,
        e?.courseList,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is CouponRecord;
}
