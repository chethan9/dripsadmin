import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingBookedRecord extends FirestoreRecord {
  MeetingBookedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "bookedDate" field.
  DateTime? _bookedDate;
  DateTime? get bookedDate => _bookedDate;
  bool hasBookedDate() => _bookedDate != null;

  // "sessionTime" field.
  String? _sessionTime;
  String get sessionTime => _sessionTime ?? '';
  bool hasSessionTime() => _sessionTime != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "meetingRef" field.
  DocumentReference? _meetingRef;
  DocumentReference? get meetingRef => _meetingRef;
  bool hasMeetingRef() => _meetingRef != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _bookedDate = snapshotData['bookedDate'] as DateTime?;
    _sessionTime = snapshotData['sessionTime'] as String?;
    _remarks = snapshotData['remarks'] as String?;
    _meetingRef = snapshotData['meetingRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meetingBooked');

  static Stream<MeetingBookedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingBookedRecord.fromSnapshot(s));

  static Future<MeetingBookedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingBookedRecord.fromSnapshot(s));

  static MeetingBookedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingBookedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingBookedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingBookedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingBookedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingBookedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingBookedRecordData({
  DocumentReference? userRef,
  DateTime? bookedDate,
  String? sessionTime,
  String? remarks,
  DocumentReference? meetingRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'bookedDate': bookedDate,
      'sessionTime': sessionTime,
      'remarks': remarks,
      'meetingRef': meetingRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingBookedRecordDocumentEquality
    implements Equality<MeetingBookedRecord> {
  const MeetingBookedRecordDocumentEquality();

  @override
  bool equals(MeetingBookedRecord? e1, MeetingBookedRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.bookedDate == e2?.bookedDate &&
        e1?.sessionTime == e2?.sessionTime &&
        e1?.remarks == e2?.remarks &&
        e1?.meetingRef == e2?.meetingRef;
  }

  @override
  int hash(MeetingBookedRecord? e) => const ListEquality().hash(
      [e?.userRef, e?.bookedDate, e?.sessionTime, e?.remarks, e?.meetingRef]);

  @override
  bool isValidKey(Object? o) => o is MeetingBookedRecord;
}
