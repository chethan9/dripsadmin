import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SmsMarketRecord extends FirestoreRecord {
  SmsMarketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "userPhoneList" field.
  List<String>? _userPhoneList;
  List<String> get userPhoneList => _userPhoneList ?? const [];
  bool hasUserPhoneList() => _userPhoneList != null;

  // "userRef" field.
  List<DocumentReference>? _userRef;
  List<DocumentReference> get userRef => _userRef ?? const [];
  bool hasUserRef() => _userRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _userPhoneList = getDataList(snapshotData['userPhoneList']);
    _userRef = getDataList(snapshotData['userRef']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('smsMarket');

  static Stream<SmsMarketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SmsMarketRecord.fromSnapshot(s));

  static Future<SmsMarketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SmsMarketRecord.fromSnapshot(s));

  static SmsMarketRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SmsMarketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SmsMarketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SmsMarketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SmsMarketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SmsMarketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSmsMarketRecordData({
  String? message,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'status': status,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SmsMarketRecordDocumentEquality implements Equality<SmsMarketRecord> {
  const SmsMarketRecordDocumentEquality();

  @override
  bool equals(SmsMarketRecord? e1, SmsMarketRecord? e2) {
    const listEquality = ListEquality();
    return e1?.message == e2?.message &&
        listEquality.equals(e1?.userPhoneList, e2?.userPhoneList) &&
        listEquality.equals(e1?.userRef, e2?.userRef) &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SmsMarketRecord? e) => const ListEquality().hash(
      [e?.message, e?.userPhoneList, e?.userRef, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is SmsMarketRecord;
}
