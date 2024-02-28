import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubscriptionRecord extends FirestoreRecord {
  SubscriptionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "payment_id" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  // "payment_status" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "paymentType" field.
  String? _paymentType;
  String get paymentType => _paymentType ?? '';
  bool hasPaymentType() => _paymentType != null;

  // "firstPaymentID" field.
  String? _firstPaymentID;
  String get firstPaymentID => _firstPaymentID ?? '';
  bool hasFirstPaymentID() => _firstPaymentID != null;

  // "firstPaymentStatus" field.
  String? _firstPaymentStatus;
  String get firstPaymentStatus => _firstPaymentStatus ?? '';
  bool hasFirstPaymentStatus() => _firstPaymentStatus != null;

  // "firstEMIvalidUpto" field.
  DateTime? _firstEMIvalidUpto;
  DateTime? get firstEMIvalidUpto => _firstEMIvalidUpto;
  bool hasFirstEMIvalidUpto() => _firstEMIvalidUpto != null;

  // "secondPaymentID" field.
  String? _secondPaymentID;
  String get secondPaymentID => _secondPaymentID ?? '';
  bool hasSecondPaymentID() => _secondPaymentID != null;

  // "secondPaymentStatus" field.
  String? _secondPaymentStatus;
  String get secondPaymentStatus => _secondPaymentStatus ?? '';
  bool hasSecondPaymentStatus() => _secondPaymentStatus != null;

  // "secondEMIvalidUpto" field.
  DateTime? _secondEMIvalidUpto;
  DateTime? get secondEMIvalidUpto => _secondEMIvalidUpto;
  bool hasSecondEMIvalidUpto() => _secondEMIvalidUpto != null;

  // "thirdPaymentID" field.
  String? _thirdPaymentID;
  String get thirdPaymentID => _thirdPaymentID ?? '';
  bool hasThirdPaymentID() => _thirdPaymentID != null;

  // "thirdPaymentStatus" field.
  String? _thirdPaymentStatus;
  String get thirdPaymentStatus => _thirdPaymentStatus ?? '';
  bool hasThirdPaymentStatus() => _thirdPaymentStatus != null;

  // "thirdEMIvalidUpto" field.
  DateTime? _thirdEMIvalidUpto;
  DateTime? get thirdEMIvalidUpto => _thirdEMIvalidUpto;
  bool hasThirdEMIvalidUpto() => _thirdEMIvalidUpto != null;

  // "batchesRef" field.
  DocumentReference? _batchesRef;
  DocumentReference? get batchesRef => _batchesRef;
  bool hasBatchesRef() => _batchesRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "coursePlan" field.
  DocumentReference? _coursePlan;
  DocumentReference? get coursePlan => _coursePlan;
  bool hasCoursePlan() => _coursePlan != null;

  // "numberClass" field.
  int? _numberClass;
  int get numberClass => _numberClass ?? 0;
  bool hasNumberClass() => _numberClass != null;

  // "numberDay" field.
  int? _numberDay;
  int get numberDay => _numberDay ?? 0;
  bool hasNumberDay() => _numberDay != null;

  // "remainingClass" field.
  int? _remainingClass;
  int get remainingClass => _remainingClass ?? 0;
  bool hasRemainingClass() => _remainingClass != null;

  // "totalClass" field.
  int? _totalClass;
  int get totalClass => _totalClass ?? 0;
  bool hasTotalClass() => _totalClass != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _paymentId = snapshotData['payment_id'] as String?;
    _paymentStatus = snapshotData['payment_status'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _paymentType = snapshotData['paymentType'] as String?;
    _firstPaymentID = snapshotData['firstPaymentID'] as String?;
    _firstPaymentStatus = snapshotData['firstPaymentStatus'] as String?;
    _firstEMIvalidUpto = snapshotData['firstEMIvalidUpto'] as DateTime?;
    _secondPaymentID = snapshotData['secondPaymentID'] as String?;
    _secondPaymentStatus = snapshotData['secondPaymentStatus'] as String?;
    _secondEMIvalidUpto = snapshotData['secondEMIvalidUpto'] as DateTime?;
    _thirdPaymentID = snapshotData['thirdPaymentID'] as String?;
    _thirdPaymentStatus = snapshotData['thirdPaymentStatus'] as String?;
    _thirdEMIvalidUpto = snapshotData['thirdEMIvalidUpto'] as DateTime?;
    _batchesRef = snapshotData['batchesRef'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _coursePlan = snapshotData['coursePlan'] as DocumentReference?;
    _numberClass = castToType<int>(snapshotData['numberClass']);
    _numberDay = castToType<int>(snapshotData['numberDay']);
    _remainingClass = castToType<int>(snapshotData['remainingClass']);
    _totalClass = castToType<int>(snapshotData['totalClass']);
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subscription');

  static Stream<SubscriptionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubscriptionRecord.fromSnapshot(s));

  static Future<SubscriptionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubscriptionRecord.fromSnapshot(s));

  static SubscriptionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubscriptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubscriptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubscriptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubscriptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubscriptionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubscriptionRecordData({
  DocumentReference? courseRef,
  DocumentReference? userRef,
  String? paymentId,
  String? paymentStatus,
  DateTime? startDate,
  String? paymentType,
  String? firstPaymentID,
  String? firstPaymentStatus,
  DateTime? firstEMIvalidUpto,
  String? secondPaymentID,
  String? secondPaymentStatus,
  DateTime? secondEMIvalidUpto,
  String? thirdPaymentID,
  String? thirdPaymentStatus,
  DateTime? thirdEMIvalidUpto,
  DocumentReference? batchesRef,
  String? status,
  DateTime? endDate,
  DocumentReference? coursePlan,
  int? numberClass,
  int? numberDay,
  int? remainingClass,
  int? totalClass,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'userRef': userRef,
      'payment_id': paymentId,
      'payment_status': paymentStatus,
      'startDate': startDate,
      'paymentType': paymentType,
      'firstPaymentID': firstPaymentID,
      'firstPaymentStatus': firstPaymentStatus,
      'firstEMIvalidUpto': firstEMIvalidUpto,
      'secondPaymentID': secondPaymentID,
      'secondPaymentStatus': secondPaymentStatus,
      'secondEMIvalidUpto': secondEMIvalidUpto,
      'thirdPaymentID': thirdPaymentID,
      'thirdPaymentStatus': thirdPaymentStatus,
      'thirdEMIvalidUpto': thirdEMIvalidUpto,
      'batchesRef': batchesRef,
      'status': status,
      'endDate': endDate,
      'coursePlan': coursePlan,
      'numberClass': numberClass,
      'numberDay': numberDay,
      'remainingClass': remainingClass,
      'totalClass': totalClass,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubscriptionRecordDocumentEquality
    implements Equality<SubscriptionRecord> {
  const SubscriptionRecordDocumentEquality();

  @override
  bool equals(SubscriptionRecord? e1, SubscriptionRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.userRef == e2?.userRef &&
        e1?.paymentId == e2?.paymentId &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.startDate == e2?.startDate &&
        e1?.paymentType == e2?.paymentType &&
        e1?.firstPaymentID == e2?.firstPaymentID &&
        e1?.firstPaymentStatus == e2?.firstPaymentStatus &&
        e1?.firstEMIvalidUpto == e2?.firstEMIvalidUpto &&
        e1?.secondPaymentID == e2?.secondPaymentID &&
        e1?.secondPaymentStatus == e2?.secondPaymentStatus &&
        e1?.secondEMIvalidUpto == e2?.secondEMIvalidUpto &&
        e1?.thirdPaymentID == e2?.thirdPaymentID &&
        e1?.thirdPaymentStatus == e2?.thirdPaymentStatus &&
        e1?.thirdEMIvalidUpto == e2?.thirdEMIvalidUpto &&
        e1?.batchesRef == e2?.batchesRef &&
        e1?.status == e2?.status &&
        e1?.endDate == e2?.endDate &&
        e1?.coursePlan == e2?.coursePlan &&
        e1?.numberClass == e2?.numberClass &&
        e1?.numberDay == e2?.numberDay &&
        e1?.remainingClass == e2?.remainingClass &&
        e1?.totalClass == e2?.totalClass &&
        e1?.type == e2?.type;
  }

  @override
  int hash(SubscriptionRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.userRef,
        e?.paymentId,
        e?.paymentStatus,
        e?.startDate,
        e?.paymentType,
        e?.firstPaymentID,
        e?.firstPaymentStatus,
        e?.firstEMIvalidUpto,
        e?.secondPaymentID,
        e?.secondPaymentStatus,
        e?.secondEMIvalidUpto,
        e?.thirdPaymentID,
        e?.thirdPaymentStatus,
        e?.thirdEMIvalidUpto,
        e?.batchesRef,
        e?.status,
        e?.endDate,
        e?.coursePlan,
        e?.numberClass,
        e?.numberDay,
        e?.remainingClass,
        e?.totalClass,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is SubscriptionRecord;
}
