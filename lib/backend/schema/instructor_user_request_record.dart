import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstructorUserRequestRecord extends FirestoreRecord {
  InstructorUserRequestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "requestDate" field.
  DateTime? _requestDate;
  DateTime? get requestDate => _requestDate;
  bool hasRequestDate() => _requestDate != null;

  // "approvalFrom" field.
  DocumentReference? _approvalFrom;
  DocumentReference? get approvalFrom => _approvalFrom;
  bool hasApprovalFrom() => _approvalFrom != null;

  // "approvalDate" field.
  DateTime? _approvalDate;
  DateTime? get approvalDate => _approvalDate;
  bool hasApprovalDate() => _approvalDate != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _requestDate = snapshotData['requestDate'] as DateTime?;
    _approvalFrom = snapshotData['approvalFrom'] as DocumentReference?;
    _approvalDate = snapshotData['approvalDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('instructorUserRequest');

  static Stream<InstructorUserRequestRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => InstructorUserRequestRecord.fromSnapshot(s));

  static Future<InstructorUserRequestRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InstructorUserRequestRecord.fromSnapshot(s));

  static InstructorUserRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstructorUserRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstructorUserRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstructorUserRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstructorUserRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstructorUserRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInstructorUserRequestRecordData({
  DocumentReference? userRef,
  String? status,
  DateTime? requestDate,
  DocumentReference? approvalFrom,
  DateTime? approvalDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'status': status,
      'requestDate': requestDate,
      'approvalFrom': approvalFrom,
      'approvalDate': approvalDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstructorUserRequestRecordDocumentEquality
    implements Equality<InstructorUserRequestRecord> {
  const InstructorUserRequestRecordDocumentEquality();

  @override
  bool equals(
      InstructorUserRequestRecord? e1, InstructorUserRequestRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.status == e2?.status &&
        e1?.requestDate == e2?.requestDate &&
        e1?.approvalFrom == e2?.approvalFrom &&
        e1?.approvalDate == e2?.approvalDate;
  }

  @override
  int hash(InstructorUserRequestRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.status,
        e?.requestDate,
        e?.approvalFrom,
        e?.approvalDate
      ]);

  @override
  bool isValidKey(Object? o) => o is InstructorUserRequestRecord;
}
