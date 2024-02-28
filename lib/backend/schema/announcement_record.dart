import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnouncementRecord extends FirestoreRecord {
  AnnouncementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

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
    _title = snapshotData['title'] as String?;
    _bio = snapshotData['bio'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
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
      FirebaseFirestore.instance.collection('announcement');

  static Stream<AnnouncementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnouncementRecord.fromSnapshot(s));

  static Future<AnnouncementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnouncementRecord.fromSnapshot(s));

  static AnnouncementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnouncementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnouncementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnouncementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnouncementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnouncementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnouncementRecordData({
  DocumentReference? courseRef,
  String? title,
  String? bio,
  DateTime? createdAt,
  DocumentReference? userRef,
  TranslateStruct? titleAutoTranslate,
  TranslateStruct? titleManualTranslate,
  TranslateStruct? bioAutoTranslate,
  TranslateStruct? bioManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'title': title,
      'bio': bio,
      'createdAt': createdAt,
      'userRef': userRef,
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

class AnnouncementRecordDocumentEquality
    implements Equality<AnnouncementRecord> {
  const AnnouncementRecordDocumentEquality();

  @override
  bool equals(AnnouncementRecord? e1, AnnouncementRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.title == e2?.title &&
        e1?.bio == e2?.bio &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userRef == e2?.userRef &&
        e1?.titleAutoTranslate == e2?.titleAutoTranslate &&
        e1?.titleManualTranslate == e2?.titleManualTranslate &&
        e1?.bioAutoTranslate == e2?.bioAutoTranslate &&
        e1?.bioManualTranslate == e2?.bioManualTranslate;
  }

  @override
  int hash(AnnouncementRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.title,
        e?.bio,
        e?.createdAt,
        e?.userRef,
        e?.titleAutoTranslate,
        e?.titleManualTranslate,
        e?.bioAutoTranslate,
        e?.bioManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is AnnouncementRecord;
}
