import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollRecord extends FirestoreRecord {
  PollRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "serialNum" field.
  int? _serialNum;
  int get serialNum => _serialNum ?? 0;
  bool hasSerialNum() => _serialNum != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "authRef" field.
  DocumentReference? _authRef;
  DocumentReference? get authRef => _authRef;
  bool hasAuthRef() => _authRef != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "endAt" field.
  DateTime? _endAt;
  DateTime? get endAt => _endAt;
  bool hasEndAt() => _endAt != null;

  // "pollType" field.
  String? _pollType;
  String get pollType => _pollType ?? '';
  bool hasPollType() => _pollType != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

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

  // "questionAutoTranslate" field.
  TranslateStruct? _questionAutoTranslate;
  TranslateStruct get questionAutoTranslate =>
      _questionAutoTranslate ?? TranslateStruct();
  bool hasQuestionAutoTranslate() => _questionAutoTranslate != null;

  // "questionManualTranslate" field.
  TranslateStruct? _questionManualTranslate;
  TranslateStruct get questionManualTranslate =>
      _questionManualTranslate ?? TranslateStruct();
  bool hasQuestionManualTranslate() => _questionManualTranslate != null;

  void _initializeFields() {
    _serialNum = castToType<int>(snapshotData['serialNum']);
    _title = snapshotData['title'] as String?;
    _bio = snapshotData['bio'] as String?;
    _image = snapshotData['image'] as String?;
    _authRef = snapshotData['authRef'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _endAt = snapshotData['endAt'] as DateTime?;
    _pollType = snapshotData['pollType'] as String?;
    _question = snapshotData['question'] as String?;
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _titleAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['titleAutoTranslate']);
    _titleManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['titleManualTranslate']);
    _bioAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['bioAutoTranslate']);
    _bioManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['bioManualTranslate']);
    _questionAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['questionAutoTranslate']);
    _questionManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['questionManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('poll');

  static Stream<PollRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PollRecord.fromSnapshot(s));

  static Future<PollRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PollRecord.fromSnapshot(s));

  static PollRecord fromSnapshot(DocumentSnapshot snapshot) => PollRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PollRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PollRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PollRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PollRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPollRecordData({
  int? serialNum,
  String? title,
  String? bio,
  String? image,
  DocumentReference? authRef,
  DateTime? createdAt,
  DateTime? endAt,
  String? pollType,
  String? question,
  DocumentReference? courseRef,
  TranslateStruct? titleAutoTranslate,
  TranslateStruct? titleManualTranslate,
  TranslateStruct? bioAutoTranslate,
  TranslateStruct? bioManualTranslate,
  TranslateStruct? questionAutoTranslate,
  TranslateStruct? questionManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'serialNum': serialNum,
      'title': title,
      'bio': bio,
      'image': image,
      'authRef': authRef,
      'createdAt': createdAt,
      'endAt': endAt,
      'pollType': pollType,
      'question': question,
      'courseRef': courseRef,
      'titleAutoTranslate': TranslateStruct().toMap(),
      'titleManualTranslate': TranslateStruct().toMap(),
      'bioAutoTranslate': TranslateStruct().toMap(),
      'bioManualTranslate': TranslateStruct().toMap(),
      'questionAutoTranslate': TranslateStruct().toMap(),
      'questionManualTranslate': TranslateStruct().toMap(),
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

  // Handle nested data for "questionAutoTranslate" field.
  addTranslateStructData(
      firestoreData, questionAutoTranslate, 'questionAutoTranslate');

  // Handle nested data for "questionManualTranslate" field.
  addTranslateStructData(
      firestoreData, questionManualTranslate, 'questionManualTranslate');

  return firestoreData;
}

class PollRecordDocumentEquality implements Equality<PollRecord> {
  const PollRecordDocumentEquality();

  @override
  bool equals(PollRecord? e1, PollRecord? e2) {
    return e1?.serialNum == e2?.serialNum &&
        e1?.title == e2?.title &&
        e1?.bio == e2?.bio &&
        e1?.image == e2?.image &&
        e1?.authRef == e2?.authRef &&
        e1?.createdAt == e2?.createdAt &&
        e1?.endAt == e2?.endAt &&
        e1?.pollType == e2?.pollType &&
        e1?.question == e2?.question &&
        e1?.courseRef == e2?.courseRef &&
        e1?.titleAutoTranslate == e2?.titleAutoTranslate &&
        e1?.titleManualTranslate == e2?.titleManualTranslate &&
        e1?.bioAutoTranslate == e2?.bioAutoTranslate &&
        e1?.bioManualTranslate == e2?.bioManualTranslate &&
        e1?.questionAutoTranslate == e2?.questionAutoTranslate &&
        e1?.questionManualTranslate == e2?.questionManualTranslate;
  }

  @override
  int hash(PollRecord? e) => const ListEquality().hash([
        e?.serialNum,
        e?.title,
        e?.bio,
        e?.image,
        e?.authRef,
        e?.createdAt,
        e?.endAt,
        e?.pollType,
        e?.question,
        e?.courseRef,
        e?.titleAutoTranslate,
        e?.titleManualTranslate,
        e?.bioAutoTranslate,
        e?.bioManualTranslate,
        e?.questionAutoTranslate,
        e?.questionManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is PollRecord;
}
