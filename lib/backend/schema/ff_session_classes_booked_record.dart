import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FfSessionClassesBookedRecord extends FirestoreRecord {
  FfSessionClassesBookedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ff_session_classesRef" field.
  DocumentReference? _ffSessionClassesRef;
  DocumentReference? get ffSessionClassesRef => _ffSessionClassesRef;
  bool hasFfSessionClassesRef() => _ffSessionClassesRef != null;

  // "booked_userRef" field.
  DocumentReference? _bookedUserRef;
  DocumentReference? get bookedUserRef => _bookedUserRef;
  bool hasBookedUserRef() => _bookedUserRef != null;

  // "classes_name" field.
  String? _classesName;
  String get classesName => _classesName ?? '';
  bool hasClassesName() => _classesName != null;

  // "classes_type" field.
  String? _classesType;
  String get classesType => _classesType ?? '';
  bool hasClassesType() => _classesType != null;

  // "classes_start_date_time" field.
  DateTime? _classesStartDateTime;
  DateTime? get classesStartDateTime => _classesStartDateTime;
  bool hasClassesStartDateTime() => _classesStartDateTime != null;

  // "classes_end_date_time" field.
  DateTime? _classesEndDateTime;
  DateTime? get classesEndDateTime => _classesEndDateTime;
  bool hasClassesEndDateTime() => _classesEndDateTime != null;

  // "booked_user_date_time" field.
  DateTime? _bookedUserDateTime;
  DateTime? get bookedUserDateTime => _bookedUserDateTime;
  bool hasBookedUserDateTime() => _bookedUserDateTime != null;

  // "day_name" field.
  String? _dayName;
  String get dayName => _dayName ?? '';
  bool hasDayName() => _dayName != null;

  // "booked_user_attendence_status" field.
  String? _bookedUserAttendenceStatus;
  String get bookedUserAttendenceStatus => _bookedUserAttendenceStatus ?? '';
  bool hasBookedUserAttendenceStatus() => _bookedUserAttendenceStatus != null;

  // "instructor_user_booked_status" field.
  String? _instructorUserBookedStatus;
  String get instructorUserBookedStatus => _instructorUserBookedStatus ?? '';
  bool hasInstructorUserBookedStatus() => _instructorUserBookedStatus != null;

  // "booked_user_name" field.
  String? _bookedUserName;
  String get bookedUserName => _bookedUserName ?? '';
  bool hasBookedUserName() => _bookedUserName != null;

  // "booked_user_phone" field.
  String? _bookedUserPhone;
  String get bookedUserPhone => _bookedUserPhone ?? '';
  bool hasBookedUserPhone() => _bookedUserPhone != null;

  // "booked_user_email" field.
  String? _bookedUserEmail;
  String get bookedUserEmail => _bookedUserEmail ?? '';
  bool hasBookedUserEmail() => _bookedUserEmail != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "booked_user_subscriptionRef" field.
  DocumentReference? _bookedUserSubscriptionRef;
  DocumentReference? get bookedUserSubscriptionRef =>
      _bookedUserSubscriptionRef;
  bool hasBookedUserSubscriptionRef() => _bookedUserSubscriptionRef != null;

  void _initializeFields() {
    _ffSessionClassesRef =
        snapshotData['ff_session_classesRef'] as DocumentReference?;
    _bookedUserRef = snapshotData['booked_userRef'] as DocumentReference?;
    _classesName = snapshotData['classes_name'] as String?;
    _classesType = snapshotData['classes_type'] as String?;
    _classesStartDateTime =
        snapshotData['classes_start_date_time'] as DateTime?;
    _classesEndDateTime = snapshotData['classes_end_date_time'] as DateTime?;
    _bookedUserDateTime = snapshotData['booked_user_date_time'] as DateTime?;
    _dayName = snapshotData['day_name'] as String?;
    _bookedUserAttendenceStatus =
        snapshotData['booked_user_attendence_status'] as String?;
    _instructorUserBookedStatus =
        snapshotData['instructor_user_booked_status'] as String?;
    _bookedUserName = snapshotData['booked_user_name'] as String?;
    _bookedUserPhone = snapshotData['booked_user_phone'] as String?;
    _bookedUserEmail = snapshotData['booked_user_email'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _bookedUserSubscriptionRef =
        snapshotData['booked_user_subscriptionRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ff_session_classes_booked');

  static Stream<FfSessionClassesBookedRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => FfSessionClassesBookedRecord.fromSnapshot(s));

  static Future<FfSessionClassesBookedRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FfSessionClassesBookedRecord.fromSnapshot(s));

  static FfSessionClassesBookedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FfSessionClassesBookedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FfSessionClassesBookedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FfSessionClassesBookedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FfSessionClassesBookedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FfSessionClassesBookedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFfSessionClassesBookedRecordData({
  DocumentReference? ffSessionClassesRef,
  DocumentReference? bookedUserRef,
  String? classesName,
  String? classesType,
  DateTime? classesStartDateTime,
  DateTime? classesEndDateTime,
  DateTime? bookedUserDateTime,
  String? dayName,
  String? bookedUserAttendenceStatus,
  String? instructorUserBookedStatus,
  String? bookedUserName,
  String? bookedUserPhone,
  String? bookedUserEmail,
  DateTime? createdAt,
  DocumentReference? bookedUserSubscriptionRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ff_session_classesRef': ffSessionClassesRef,
      'booked_userRef': bookedUserRef,
      'classes_name': classesName,
      'classes_type': classesType,
      'classes_start_date_time': classesStartDateTime,
      'classes_end_date_time': classesEndDateTime,
      'booked_user_date_time': bookedUserDateTime,
      'day_name': dayName,
      'booked_user_attendence_status': bookedUserAttendenceStatus,
      'instructor_user_booked_status': instructorUserBookedStatus,
      'booked_user_name': bookedUserName,
      'booked_user_phone': bookedUserPhone,
      'booked_user_email': bookedUserEmail,
      'createdAt': createdAt,
      'booked_user_subscriptionRef': bookedUserSubscriptionRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class FfSessionClassesBookedRecordDocumentEquality
    implements Equality<FfSessionClassesBookedRecord> {
  const FfSessionClassesBookedRecordDocumentEquality();

  @override
  bool equals(
      FfSessionClassesBookedRecord? e1, FfSessionClassesBookedRecord? e2) {
    return e1?.ffSessionClassesRef == e2?.ffSessionClassesRef &&
        e1?.bookedUserRef == e2?.bookedUserRef &&
        e1?.classesName == e2?.classesName &&
        e1?.classesType == e2?.classesType &&
        e1?.classesStartDateTime == e2?.classesStartDateTime &&
        e1?.classesEndDateTime == e2?.classesEndDateTime &&
        e1?.bookedUserDateTime == e2?.bookedUserDateTime &&
        e1?.dayName == e2?.dayName &&
        e1?.bookedUserAttendenceStatus == e2?.bookedUserAttendenceStatus &&
        e1?.instructorUserBookedStatus == e2?.instructorUserBookedStatus &&
        e1?.bookedUserName == e2?.bookedUserName &&
        e1?.bookedUserPhone == e2?.bookedUserPhone &&
        e1?.bookedUserEmail == e2?.bookedUserEmail &&
        e1?.createdAt == e2?.createdAt &&
        e1?.bookedUserSubscriptionRef == e2?.bookedUserSubscriptionRef;
  }

  @override
  int hash(FfSessionClassesBookedRecord? e) => const ListEquality().hash([
        e?.ffSessionClassesRef,
        e?.bookedUserRef,
        e?.classesName,
        e?.classesType,
        e?.classesStartDateTime,
        e?.classesEndDateTime,
        e?.bookedUserDateTime,
        e?.dayName,
        e?.bookedUserAttendenceStatus,
        e?.instructorUserBookedStatus,
        e?.bookedUserName,
        e?.bookedUserPhone,
        e?.bookedUserEmail,
        e?.createdAt,
        e?.bookedUserSubscriptionRef
      ]);

  @override
  bool isValidKey(Object? o) => o is FfSessionClassesBookedRecord;
}
