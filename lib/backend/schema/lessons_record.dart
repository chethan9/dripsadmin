import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonsRecord extends FirestoreRecord {
  LessonsRecord._(
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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "courseOthers" field.
  DocumentReference? _courseOthers;
  DocumentReference? get courseOthers => _courseOthers;
  bool hasCourseOthers() => _courseOthers != null;

  // "videoDuration" field.
  int? _videoDuration;
  int get videoDuration => _videoDuration ?? 0;
  bool hasVideoDuration() => _videoDuration != null;

  // "serialNum" field.
  int? _serialNum;
  int get serialNum => _serialNum ?? 0;
  bool hasSerialNum() => _serialNum != null;

  // "lessonStatus" field.
  String? _lessonStatus;
  String get lessonStatus => _lessonStatus ?? '';
  bool hasLessonStatus() => _lessonStatus != null;

  // "videoRef" field.
  DocumentReference? _videoRef;
  DocumentReference? get videoRef => _videoRef;
  bool hasVideoRef() => _videoRef != null;

  // "nameAutoTranslate" field.
  TranslateStruct? _nameAutoTranslate;
  TranslateStruct get nameAutoTranslate =>
      _nameAutoTranslate ?? TranslateStruct();
  bool hasNameAutoTranslate() => _nameAutoTranslate != null;

  // "nameManualTranslate" field.
  TranslateStruct? _nameManualTranslate;
  TranslateStruct get nameManualTranslate =>
      _nameManualTranslate ?? TranslateStruct();
  bool hasNameManualTranslate() => _nameManualTranslate != null;

  // "descriptionAutoTranslate" field.
  TranslateStruct? _descriptionAutoTranslate;
  TranslateStruct get descriptionAutoTranslate =>
      _descriptionAutoTranslate ?? TranslateStruct();
  bool hasDescriptionAutoTranslate() => _descriptionAutoTranslate != null;

  // "descriptionManualTranslate" field.
  TranslateStruct? _descriptionManualTranslate;
  TranslateStruct get descriptionManualTranslate =>
      _descriptionManualTranslate ?? TranslateStruct();
  bool hasDescriptionManualTranslate() => _descriptionManualTranslate != null;

  void _initializeFields() {
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _chapterRef = snapshotData['chapterRef'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
    _file = snapshotData['file'] as String?;
    _courseOthers = snapshotData['courseOthers'] as DocumentReference?;
    _videoDuration = castToType<int>(snapshotData['videoDuration']);
    _serialNum = castToType<int>(snapshotData['serialNum']);
    _lessonStatus = snapshotData['lessonStatus'] as String?;
    _videoRef = snapshotData['videoRef'] as DocumentReference?;
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
    _descriptionAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['descriptionAutoTranslate']);
    _descriptionManualTranslate = TranslateStruct.maybeFromMap(
        snapshotData['descriptionManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lessons');

  static Stream<LessonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonsRecord.fromSnapshot(s));

  static Future<LessonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonsRecord.fromSnapshot(s));

  static LessonsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LessonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonsRecordData({
  DocumentReference? courseRef,
  DocumentReference? chapterRef,
  String? name,
  String? description,
  String? image,
  String? video,
  String? file,
  DocumentReference? courseOthers,
  int? videoDuration,
  int? serialNum,
  String? lessonStatus,
  DocumentReference? videoRef,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  TranslateStruct? descriptionAutoTranslate,
  TranslateStruct? descriptionManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'chapterRef': chapterRef,
      'name': name,
      'description': description,
      'image': image,
      'video': video,
      'file': file,
      'courseOthers': courseOthers,
      'videoDuration': videoDuration,
      'serialNum': serialNum,
      'lessonStatus': lessonStatus,
      'videoRef': videoRef,
      'nameAutoTranslate': TranslateStruct().toMap(),
      'nameManualTranslate': TranslateStruct().toMap(),
      'descriptionAutoTranslate': TranslateStruct().toMap(),
      'descriptionManualTranslate': TranslateStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "nameAutoTranslate" field.
  addTranslateStructData(firestoreData, nameAutoTranslate, 'nameAutoTranslate');

  // Handle nested data for "nameManualTranslate" field.
  addTranslateStructData(
      firestoreData, nameManualTranslate, 'nameManualTranslate');

  // Handle nested data for "descriptionAutoTranslate" field.
  addTranslateStructData(
      firestoreData, descriptionAutoTranslate, 'descriptionAutoTranslate');

  // Handle nested data for "descriptionManualTranslate" field.
  addTranslateStructData(
      firestoreData, descriptionManualTranslate, 'descriptionManualTranslate');

  return firestoreData;
}

class LessonsRecordDocumentEquality implements Equality<LessonsRecord> {
  const LessonsRecordDocumentEquality();

  @override
  bool equals(LessonsRecord? e1, LessonsRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.chapterRef == e2?.chapterRef &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video &&
        e1?.file == e2?.file &&
        e1?.courseOthers == e2?.courseOthers &&
        e1?.videoDuration == e2?.videoDuration &&
        e1?.serialNum == e2?.serialNum &&
        e1?.lessonStatus == e2?.lessonStatus &&
        e1?.videoRef == e2?.videoRef &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.descriptionAutoTranslate == e2?.descriptionAutoTranslate &&
        e1?.descriptionManualTranslate == e2?.descriptionManualTranslate;
  }

  @override
  int hash(LessonsRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.chapterRef,
        e?.name,
        e?.description,
        e?.image,
        e?.video,
        e?.file,
        e?.courseOthers,
        e?.videoDuration,
        e?.serialNum,
        e?.lessonStatus,
        e?.videoRef,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.descriptionAutoTranslate,
        e?.descriptionManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is LessonsRecord;
}
