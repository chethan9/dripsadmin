import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseCategoryRecord extends FirestoreRecord {
  CourseCategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "branchRef" field.
  DocumentReference? _branchRef;
  DocumentReference? get branchRef => _branchRef;
  bool hasBranchRef() => _branchRef != null;

  // "universityRef" field.
  DocumentReference? _universityRef;
  DocumentReference? get universityRef => _universityRef;
  bool hasUniversityRef() => _universityRef != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  bool hasCountryRef() => _countryRef != null;

  // "courseListRef" field.
  List<DocumentReference>? _courseListRef;
  List<DocumentReference> get courseListRef => _courseListRef ?? const [];
  bool hasCourseListRef() => _courseListRef != null;

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

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _branchRef = snapshotData['branchRef'] as DocumentReference?;
    _universityRef = snapshotData['universityRef'] as DocumentReference?;
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _courseListRef = getDataList(snapshotData['courseListRef']);
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courseCategory');

  static Stream<CourseCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseCategoryRecord.fromSnapshot(s));

  static Future<CourseCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseCategoryRecord.fromSnapshot(s));

  static CourseCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CourseCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseCategoryRecordData({
  String? name,
  String? image,
  DocumentReference? branchRef,
  DocumentReference? universityRef,
  DocumentReference? countryRef,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  DocumentReference? categoryRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'branchRef': branchRef,
      'universityRef': universityRef,
      'countryRef': countryRef,
      'nameAutoTranslate': TranslateStruct().toMap(),
      'nameManualTranslate': TranslateStruct().toMap(),
      'categoryRef': categoryRef,
    }.withoutNulls,
  );

  // Handle nested data for "nameAutoTranslate" field.
  addTranslateStructData(firestoreData, nameAutoTranslate, 'nameAutoTranslate');

  // Handle nested data for "nameManualTranslate" field.
  addTranslateStructData(
      firestoreData, nameManualTranslate, 'nameManualTranslate');

  return firestoreData;
}

class CourseCategoryRecordDocumentEquality
    implements Equality<CourseCategoryRecord> {
  const CourseCategoryRecordDocumentEquality();

  @override
  bool equals(CourseCategoryRecord? e1, CourseCategoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.branchRef == e2?.branchRef &&
        e1?.universityRef == e2?.universityRef &&
        e1?.countryRef == e2?.countryRef &&
        listEquality.equals(e1?.courseListRef, e2?.courseListRef) &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.categoryRef == e2?.categoryRef;
  }

  @override
  int hash(CourseCategoryRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.branchRef,
        e?.universityRef,
        e?.countryRef,
        e?.courseListRef,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.categoryRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseCategoryRecord;
}
