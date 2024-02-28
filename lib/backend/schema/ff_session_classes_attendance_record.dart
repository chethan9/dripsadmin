import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FfSessionClassesAttendanceRecord extends FirestoreRecord {
  FfSessionClassesAttendanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ff_session_classesRef" field.
  DocumentReference? _ffSessionClassesRef;
  DocumentReference? get ffSessionClassesRef => _ffSessionClassesRef;
  bool hasFfSessionClassesRef() => _ffSessionClassesRef != null;

  // "ff_session_classes_bookedRef" field.
  DocumentReference? _ffSessionClassesBookedRef;
  DocumentReference? get ffSessionClassesBookedRef =>
      _ffSessionClassesBookedRef;
  bool hasFfSessionClassesBookedRef() => _ffSessionClassesBookedRef != null;

  // "booked_userRef" field.
  DocumentReference? _bookedUserRef;
  DocumentReference? get bookedUserRef => _bookedUserRef;
  bool hasBookedUserRef() => _bookedUserRef != null;

  // "booked_user_subscriptionRef" field.
  DocumentReference? _bookedUserSubscriptionRef;
  DocumentReference? get bookedUserSubscriptionRef =>
      _bookedUserSubscriptionRef;
  bool hasBookedUserSubscriptionRef() => _bookedUserSubscriptionRef != null;

  // "booked_user_attendance_status" field.
  String? _bookedUserAttendanceStatus;
  String get bookedUserAttendanceStatus => _bookedUserAttendanceStatus ?? '';
  bool hasBookedUserAttendanceStatus() => _bookedUserAttendanceStatus != null;

  // "instructor_updated_userRef" field.
  DocumentReference? _instructorUpdatedUserRef;
  DocumentReference? get instructorUpdatedUserRef => _instructorUpdatedUserRef;
  bool hasInstructorUpdatedUserRef() => _instructorUpdatedUserRef != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _ffSessionClassesRef =
        snapshotData['ff_session_classesRef'] as DocumentReference?;
    _ffSessionClassesBookedRef =
        snapshotData['ff_session_classes_bookedRef'] as DocumentReference?;
    _bookedUserRef = snapshotData['booked_userRef'] as DocumentReference?;
    _bookedUserSubscriptionRef =
        snapshotData['booked_user_subscriptionRef'] as DocumentReference?;
    _bookedUserAttendanceStatus =
        snapshotData['booked_user_attendance_status'] as String?;
    _instructorUpdatedUserRef =
        snapshotData['instructor_updated_userRef'] as DocumentReference?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ff_session_classes_attendance');

  static Stream<FfSessionClassesAttendanceRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => FfSessionClassesAttendanceRecord.fromSnapshot(s));

  static Future<FfSessionClassesAttendanceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FfSessionClassesAttendanceRecord.fromSnapshot(s));

  static FfSessionClassesAttendanceRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      FfSessionClassesAttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FfSessionClassesAttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FfSessionClassesAttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FfSessionClassesAttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FfSessionClassesAttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFfSessionClassesAttendanceRecordData({
  DocumentReference? ffSessionClassesRef,
  DocumentReference? ffSessionClassesBookedRef,
  DocumentReference? bookedUserRef,
  DocumentReference? bookedUserSubscriptionRef,
  String? bookedUserAttendanceStatus,
  DocumentReference? instructorUpdatedUserRef,
  DateTime? updatedAt,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ff_session_classesRef': ffSessionClassesRef,
      'ff_session_classes_bookedRef': ffSessionClassesBookedRef,
      'booked_userRef': bookedUserRef,
      'booked_user_subscriptionRef': bookedUserSubscriptionRef,
      'booked_user_attendance_status': bookedUserAttendanceStatus,
      'instructor_updated_userRef': instructorUpdatedUserRef,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class FfSessionClassesAttendanceRecordDocumentEquality
    implements Equality<FfSessionClassesAttendanceRecord> {
  const FfSessionClassesAttendanceRecordDocumentEquality();

  @override
  bool equals(FfSessionClassesAttendanceRecord? e1,
      FfSessionClassesAttendanceRecord? e2) {
    return e1?.ffSessionClassesRef == e2?.ffSessionClassesRef &&
        e1?.ffSessionClassesBookedRef == e2?.ffSessionClassesBookedRef &&
        e1?.bookedUserRef == e2?.bookedUserRef &&
        e1?.bookedUserSubscriptionRef == e2?.bookedUserSubscriptionRef &&
        e1?.bookedUserAttendanceStatus == e2?.bookedUserAttendanceStatus &&
        e1?.instructorUpdatedUserRef == e2?.instructorUpdatedUserRef &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(FfSessionClassesAttendanceRecord? e) => const ListEquality().hash([
        e?.ffSessionClassesRef,
        e?.ffSessionClassesBookedRef,
        e?.bookedUserRef,
        e?.bookedUserSubscriptionRef,
        e?.bookedUserAttendanceStatus,
        e?.instructorUpdatedUserRef,
        e?.updatedAt,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is FfSessionClassesAttendanceRecord;
}
