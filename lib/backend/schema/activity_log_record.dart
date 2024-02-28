import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityLogRecord extends FirestoreRecord {
  ActivityLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "userIP" field.
  String? _userIP;
  String get userIP => _userIP ?? '';
  bool hasUserIP() => _userIP != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "userAgent" field.
  String? _userAgent;
  String get userAgent => _userAgent ?? '';
  bool hasUserAgent() => _userAgent != null;

  // "userDeviceID" field.
  String? _userDeviceID;
  String get userDeviceID => _userDeviceID ?? '';
  bool hasUserDeviceID() => _userDeviceID != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "eventType" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  // "object" field.
  String? _object;
  String get object => _object ?? '';
  bool hasObject() => _object != null;

  // "eventId" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  // "eventTitle" field.
  String? _eventTitle;
  String get eventTitle => _eventTitle ?? '';
  bool hasEventTitle() => _eventTitle != null;

  // "eventStatus" field.
  List<String>? _eventStatus;
  List<String> get eventStatus => _eventStatus ?? const [];
  bool hasEventStatus() => _eventStatus != null;

  // "userSessionID" field.
  String? _userSessionID;
  String get userSessionID => _userSessionID ?? '';
  bool hasUserSessionID() => _userSessionID != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userIP = snapshotData['userIP'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _userAgent = snapshotData['userAgent'] as String?;
    _userDeviceID = snapshotData['userDeviceID'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _eventType = snapshotData['eventType'] as String?;
    _object = snapshotData['object'] as String?;
    _eventId = snapshotData['eventId'] as String?;
    _eventTitle = snapshotData['eventTitle'] as String?;
    _eventStatus = getDataList(snapshotData['eventStatus']);
    _userSessionID = snapshotData['userSessionID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activityLog');

  static Stream<ActivityLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityLogRecord.fromSnapshot(s));

  static Future<ActivityLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityLogRecord.fromSnapshot(s));

  static ActivityLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityLogRecordData({
  DocumentReference? userRef,
  String? userIP,
  String? userRole,
  String? userAgent,
  String? userDeviceID,
  DateTime? createdAt,
  String? eventType,
  String? object,
  String? eventId,
  String? eventTitle,
  String? userSessionID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'userIP': userIP,
      'userRole': userRole,
      'userAgent': userAgent,
      'userDeviceID': userDeviceID,
      'createdAt': createdAt,
      'eventType': eventType,
      'object': object,
      'eventId': eventId,
      'eventTitle': eventTitle,
      'userSessionID': userSessionID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityLogRecordDocumentEquality implements Equality<ActivityLogRecord> {
  const ActivityLogRecordDocumentEquality();

  @override
  bool equals(ActivityLogRecord? e1, ActivityLogRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.userIP == e2?.userIP &&
        e1?.userRole == e2?.userRole &&
        e1?.userAgent == e2?.userAgent &&
        e1?.userDeviceID == e2?.userDeviceID &&
        e1?.createdAt == e2?.createdAt &&
        e1?.eventType == e2?.eventType &&
        e1?.object == e2?.object &&
        e1?.eventId == e2?.eventId &&
        e1?.eventTitle == e2?.eventTitle &&
        listEquality.equals(e1?.eventStatus, e2?.eventStatus) &&
        e1?.userSessionID == e2?.userSessionID;
  }

  @override
  int hash(ActivityLogRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.userIP,
        e?.userRole,
        e?.userAgent,
        e?.userDeviceID,
        e?.createdAt,
        e?.eventType,
        e?.object,
        e?.eventId,
        e?.eventTitle,
        e?.eventStatus,
        e?.userSessionID
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityLogRecord;
}
