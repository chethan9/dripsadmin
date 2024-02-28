import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZoomCourseRecord extends FirestoreRecord {
  ZoomCourseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "chapterRef" field.
  DocumentReference? _chapterRef;
  DocumentReference? get chapterRef => _chapterRef;
  bool hasChapterRef() => _chapterRef != null;

  // "lessonRef" field.
  DocumentReference? _lessonRef;
  DocumentReference? get lessonRef => _lessonRef;
  bool hasLessonRef() => _lessonRef != null;

  // "serialNumber" field.
  int? _serialNumber;
  int get serialNumber => _serialNumber ?? 0;
  bool hasSerialNumber() => _serialNumber != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "timezone" field.
  String? _timezone;
  String get timezone => _timezone ?? '';
  bool hasTimezone() => _timezone != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "hostURL" field.
  String? _hostURL;
  String get hostURL => _hostURL ?? '';
  bool hasHostURL() => _hostURL != null;

  // "joinURL" field.
  String? _joinURL;
  String get joinURL => _joinURL ?? '';
  bool hasJoinURL() => _joinURL != null;

  // "meetingID" field.
  String? _meetingID;
  String get meetingID => _meetingID ?? '';
  bool hasMeetingID() => _meetingID != null;

  // "meetingPassword" field.
  String? _meetingPassword;
  String get meetingPassword => _meetingPassword ?? '';
  bool hasMeetingPassword() => _meetingPassword != null;

  // "zoomDate" field.
  DateTime? _zoomDate;
  DateTime? get zoomDate => _zoomDate;
  bool hasZoomDate() => _zoomDate != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "zoomJWTtoken" field.
  String? _zoomJWTtoken;
  String get zoomJWTtoken => _zoomJWTtoken ?? '';
  bool hasZoomJWTtoken() => _zoomJWTtoken != null;

  // "titleAutoTranslate" field.
  TranslateStruct? _titleAutoTranslate;
  TranslateStruct get titleAutoTranslate =>
      _titleAutoTranslate ?? TranslateStruct();
  bool hasTitleAutoTranslate() => _titleAutoTranslate != null;

  // "titleManualTranslate" field.
  TranslateStruct? _titleManualTranslate;
  TranslateStruct get titleManualTranslate =>
      _titleManualTranslate ?? TranslateStruct();
  bool hasTitleManualTranslate() => _titleManualTranslate != null;

  // "bioAutoTranslate" field.
  TranslateStruct? _bioAutoTranslate;
  TranslateStruct get bioAutoTranslate =>
      _bioAutoTranslate ?? TranslateStruct();
  bool hasBioAutoTranslate() => _bioAutoTranslate != null;

  // "bioManualTranslate" field.
  TranslateStruct? _bioManualTranslate;
  TranslateStruct get bioManualTranslate =>
      _bioManualTranslate ?? TranslateStruct();
  bool hasBioManualTranslate() => _bioManualTranslate != null;

  void _initializeFields() {
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _chapterRef = snapshotData['chapterRef'] as DocumentReference?;
    _lessonRef = snapshotData['lessonRef'] as DocumentReference?;
    _serialNumber = castToType<int>(snapshotData['serialNumber']);
    _title = snapshotData['title'] as String?;
    _bio = snapshotData['bio'] as String?;
    _timezone = snapshotData['timezone'] as String?;
    _duration = snapshotData['duration'] as String?;
    _password = snapshotData['password'] as String?;
    _hostURL = snapshotData['hostURL'] as String?;
    _joinURL = snapshotData['joinURL'] as String?;
    _meetingID = snapshotData['meetingID'] as String?;
    _meetingPassword = snapshotData['meetingPassword'] as String?;
    _zoomDate = snapshotData['zoomDate'] as DateTime?;
    _startTime = snapshotData['startTime'] as String?;
    _zoomJWTtoken = snapshotData['zoomJWTtoken'] as String?;
    _titleAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['titleAutoTranslate']);
    _titleManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['titleManualTranslate']);
    _bioAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['bioAutoTranslate']);
    _bioManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['bioManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('zoomCourse');

  static Stream<ZoomCourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ZoomCourseRecord.fromSnapshot(s));

  static Future<ZoomCourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ZoomCourseRecord.fromSnapshot(s));

  static ZoomCourseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ZoomCourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ZoomCourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ZoomCourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ZoomCourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ZoomCourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createZoomCourseRecordData({
  DocumentReference? courseRef,
  DocumentReference? chapterRef,
  DocumentReference? lessonRef,
  int? serialNumber,
  String? title,
  String? bio,
  String? timezone,
  String? duration,
  String? password,
  String? hostURL,
  String? joinURL,
  String? meetingID,
  String? meetingPassword,
  DateTime? zoomDate,
  String? startTime,
  String? zoomJWTtoken,
  TranslateStruct? titleAutoTranslate,
  TranslateStruct? titleManualTranslate,
  TranslateStruct? bioAutoTranslate,
  TranslateStruct? bioManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'chapterRef': chapterRef,
      'lessonRef': lessonRef,
      'serialNumber': serialNumber,
      'title': title,
      'bio': bio,
      'timezone': timezone,
      'duration': duration,
      'password': password,
      'hostURL': hostURL,
      'joinURL': joinURL,
      'meetingID': meetingID,
      'meetingPassword': meetingPassword,
      'zoomDate': zoomDate,
      'startTime': startTime,
      'zoomJWTtoken': zoomJWTtoken,
      'titleAutoTranslate': TranslateStruct().toMap(),
      'titleManualTranslate': TranslateStruct().toMap(),
      'bioAutoTranslate': TranslateStruct().toMap(),
      'bioManualTranslate': TranslateStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "titleAutoTranslate" field.
  addTranslateStructData(
      firestoreData, titleAutoTranslate, 'titleAutoTranslate');

  // Handle nested data for "titleManualTranslate" field.
  addTranslateStructData(
      firestoreData, titleManualTranslate, 'titleManualTranslate');

  // Handle nested data for "bioAutoTranslate" field.
  addTranslateStructData(firestoreData, bioAutoTranslate, 'bioAutoTranslate');

  // Handle nested data for "bioManualTranslate" field.
  addTranslateStructData(
      firestoreData, bioManualTranslate, 'bioManualTranslate');

  return firestoreData;
}

class ZoomCourseRecordDocumentEquality implements Equality<ZoomCourseRecord> {
  const ZoomCourseRecordDocumentEquality();

  @override
  bool equals(ZoomCourseRecord? e1, ZoomCourseRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.chapterRef == e2?.chapterRef &&
        e1?.lessonRef == e2?.lessonRef &&
        e1?.serialNumber == e2?.serialNumber &&
        e1?.title == e2?.title &&
        e1?.bio == e2?.bio &&
        e1?.timezone == e2?.timezone &&
        e1?.duration == e2?.duration &&
        e1?.password == e2?.password &&
        e1?.hostURL == e2?.hostURL &&
        e1?.joinURL == e2?.joinURL &&
        e1?.meetingID == e2?.meetingID &&
        e1?.meetingPassword == e2?.meetingPassword &&
        e1?.zoomDate == e2?.zoomDate &&
        e1?.startTime == e2?.startTime &&
        e1?.zoomJWTtoken == e2?.zoomJWTtoken &&
        e1?.titleAutoTranslate == e2?.titleAutoTranslate &&
        e1?.titleManualTranslate == e2?.titleManualTranslate &&
        e1?.bioAutoTranslate == e2?.bioAutoTranslate &&
        e1?.bioManualTranslate == e2?.bioManualTranslate;
  }

  @override
  int hash(ZoomCourseRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.chapterRef,
        e?.lessonRef,
        e?.serialNumber,
        e?.title,
        e?.bio,
        e?.timezone,
        e?.duration,
        e?.password,
        e?.hostURL,
        e?.joinURL,
        e?.meetingID,
        e?.meetingPassword,
        e?.zoomDate,
        e?.startTime,
        e?.zoomJWTtoken,
        e?.titleAutoTranslate,
        e?.titleManualTranslate,
        e?.bioAutoTranslate,
        e?.bioManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is ZoomCourseRecord;
}
