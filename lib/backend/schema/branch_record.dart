import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BranchRecord extends FirestoreRecord {
  BranchRecord._(
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

  // "universityRef" field.
  DocumentReference? _universityRef;
  DocumentReference? get universityRef => _universityRef;
  bool hasUniversityRef() => _universityRef != null;

  // "country" field.
  DocumentReference? _country;
  DocumentReference? get country => _country;
  bool hasCountry() => _country != null;

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
    _universityRef = snapshotData['universityRef'] as DocumentReference?;
    _country = snapshotData['country'] as DocumentReference?;
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('branch');

  static Stream<BranchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BranchRecord.fromSnapshot(s));

  static Future<BranchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BranchRecord.fromSnapshot(s));

  static BranchRecord fromSnapshot(DocumentSnapshot snapshot) => BranchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BranchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BranchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BranchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BranchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBranchRecordData({
  String? name,
  String? image,
  DocumentReference? universityRef,
  DocumentReference? country,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  DocumentReference? categoryRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'universityRef': universityRef,
      'country': country,
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

class BranchRecordDocumentEquality implements Equality<BranchRecord> {
  const BranchRecordDocumentEquality();

  @override
  bool equals(BranchRecord? e1, BranchRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.universityRef == e2?.universityRef &&
        e1?.country == e2?.country &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.categoryRef == e2?.categoryRef;
  }

  @override
  int hash(BranchRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.universityRef,
        e?.country,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.categoryRef
      ]);

  @override
  bool isValidKey(Object? o) => o is BranchRecord;
}
