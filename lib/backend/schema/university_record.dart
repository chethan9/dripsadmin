import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UniversityRecord extends FirestoreRecord {
  UniversityRecord._(
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

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('university');

  static Stream<UniversityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UniversityRecord.fromSnapshot(s));

  static Future<UniversityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UniversityRecord.fromSnapshot(s));

  static UniversityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UniversityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UniversityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UniversityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UniversityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UniversityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUniversityRecordData({
  String? name,
  String? image,
  DocumentReference? countryRef,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'countryRef': countryRef,
      'nameAutoTranslate': TranslateStruct().toMap(),
      'nameManualTranslate': TranslateStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "nameAutoTranslate" field.
  addTranslateStructData(firestoreData, nameAutoTranslate, 'nameAutoTranslate');

  // Handle nested data for "nameManualTranslate" field.
  addTranslateStructData(
      firestoreData, nameManualTranslate, 'nameManualTranslate');

  return firestoreData;
}

class UniversityRecordDocumentEquality implements Equality<UniversityRecord> {
  const UniversityRecordDocumentEquality();

  @override
  bool equals(UniversityRecord? e1, UniversityRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.countryRef == e2?.countryRef &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate;
  }

  @override
  int hash(UniversityRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.countryRef,
        e?.nameAutoTranslate,
        e?.nameManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is UniversityRecord;
}
