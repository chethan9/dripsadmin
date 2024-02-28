import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryRecord extends FirestoreRecord {
  CategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "universityRef" field.
  DocumentReference? _universityRef;
  DocumentReference? get universityRef => _universityRef;
  bool hasUniversityRef() => _universityRef != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  bool hasCountryRef() => _countryRef != null;

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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _universityRef = snapshotData['universityRef'] as DocumentReference?;
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('category');

  static Stream<CategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryRecord.fromSnapshot(s));

  static Future<CategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryRecord.fromSnapshot(s));

  static CategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoryRecordData({
  String? name,
  DocumentReference? universityRef,
  DocumentReference? countryRef,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'universityRef': universityRef,
      'countryRef': countryRef,
      'nameAutoTranslate': TranslateStruct().toMap(),
      'nameManualTranslate': TranslateStruct().toMap(),
      'image': image,
    }.withoutNulls,
  );

  // Handle nested data for "nameAutoTranslate" field.
  addTranslateStructData(firestoreData, nameAutoTranslate, 'nameAutoTranslate');

  // Handle nested data for "nameManualTranslate" field.
  addTranslateStructData(
      firestoreData, nameManualTranslate, 'nameManualTranslate');

  return firestoreData;
}

class CategoryRecordDocumentEquality implements Equality<CategoryRecord> {
  const CategoryRecordDocumentEquality();

  @override
  bool equals(CategoryRecord? e1, CategoryRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.universityRef == e2?.universityRef &&
        e1?.countryRef == e2?.countryRef &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CategoryRecord? e) => const ListEquality().hash([
        e?.name,
        e?.universityRef,
        e?.countryRef,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoryRecord;
}
