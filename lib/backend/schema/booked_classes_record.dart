import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookedClassesRecord extends FirestoreRecord {
  BookedClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "classesRef" field.
  DocumentReference? _classesRef;
  DocumentReference? get classesRef => _classesRef;
  bool hasClassesRef() => _classesRef != null;

  // "bookedDate" field.
  DateTime? _bookedDate;
  DateTime? get bookedDate => _bookedDate;
  bool hasBookedDate() => _bookedDate != null;

  // "bookedStatus" field.
  bool? _bookedStatus;
  bool get bookedStatus => _bookedStatus ?? false;
  bool hasBookedStatus() => _bookedStatus != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "attendenceStatus" field.
  String? _attendenceStatus;
  String get attendenceStatus => _attendenceStatus ?? '';
  bool hasAttendenceStatus() => _attendenceStatus != null;

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "start_time" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "day_name" field.
  String? _dayName;
  String get dayName => _dayName ?? '';
  bool hasDayName() => _dayName != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "meetingDate" field.
  DateTime? _meetingDate;
  DateTime? get meetingDate => _meetingDate;
  bool hasMeetingDate() => _meetingDate != null;

  void _initializeFields() {
    _classesRef = snapshotData['classesRef'] as DocumentReference?;
    _bookedDate = snapshotData['bookedDate'] as DateTime?;
    _bookedStatus = snapshotData['bookedStatus'] as bool?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _attendenceStatus = snapshotData['attendenceStatus'] as String?;
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _startTime = snapshotData['start_time'] as String?;
    _endTime = snapshotData['end_time'] as String?;
    _dayName = snapshotData['day_name'] as String?;
    _type = snapshotData['type'] as String?;
    _meetingDate = snapshotData['meetingDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookedClasses');

  static Stream<BookedClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookedClassesRecord.fromSnapshot(s));

  static Future<BookedClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookedClassesRecord.fromSnapshot(s));

  static BookedClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookedClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookedClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookedClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookedClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookedClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookedClassesRecordData({
  DocumentReference? classesRef,
  DateTime? bookedDate,
  bool? bookedStatus,
  DocumentReference? userRef,
  String? attendenceStatus,
  DocumentReference? courseRef,
  String? startTime,
  String? endTime,
  String? dayName,
  String? type,
  DateTime? meetingDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'classesRef': classesRef,
      'bookedDate': bookedDate,
      'bookedStatus': bookedStatus,
      'userRef': userRef,
      'attendenceStatus': attendenceStatus,
      'courseRef': courseRef,
      'start_time': startTime,
      'end_time': endTime,
      'day_name': dayName,
      'type': type,
      'meetingDate': meetingDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookedClassesRecordDocumentEquality
    implements Equality<BookedClassesRecord> {
  const BookedClassesRecordDocumentEquality();

  @override
  bool equals(BookedClassesRecord? e1, BookedClassesRecord? e2) {
    return e1?.classesRef == e2?.classesRef &&
        e1?.bookedDate == e2?.bookedDate &&
        e1?.bookedStatus == e2?.bookedStatus &&
        e1?.userRef == e2?.userRef &&
        e1?.attendenceStatus == e2?.attendenceStatus &&
        e1?.courseRef == e2?.courseRef &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.dayName == e2?.dayName &&
        e1?.type == e2?.type &&
        e1?.meetingDate == e2?.meetingDate;
  }

  @override
  int hash(BookedClassesRecord? e) => const ListEquality().hash([
        e?.classesRef,
        e?.bookedDate,
        e?.bookedStatus,
        e?.userRef,
        e?.attendenceStatus,
        e?.courseRef,
        e?.startTime,
        e?.endTime,
        e?.dayName,
        e?.type,
        e?.meetingDate
      ]);

  @override
  bool isValidKey(Object? o) => o is BookedClassesRecord;
}
