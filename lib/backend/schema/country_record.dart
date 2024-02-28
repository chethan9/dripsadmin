import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryRecord extends FirestoreRecord {
  CountryRecord._(
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
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('country');

  static Stream<CountryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountryRecord.fromSnapshot(s));

  static Future<CountryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountryRecord.fromSnapshot(s));

  static CountryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountryRecordData({
  String? name,
  String? image,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
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

class CountryRecordDocumentEquality implements Equality<CountryRecord> {
  const CountryRecordDocumentEquality();

  @override
  bool equals(CountryRecord? e1, CountryRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate;
  }

  @override
  int hash(CountryRecord? e) => const ListEquality()
      .hash([e?.name, e?.image, e?.nameAutoTranslate, e?.nameManualTranslate]);

  @override
  bool isValidKey(Object? o) => o is CountryRecord;
}
