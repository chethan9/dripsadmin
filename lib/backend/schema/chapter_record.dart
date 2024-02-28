import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChapterRecord extends FirestoreRecord {
  ChapterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "serialNumber" field.
  int? _serialNumber;
  int get serialNumber => _serialNumber ?? 0;
  bool hasSerialNumber() => _serialNumber != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "emiType" field.
  String? _emiType;
  String get emiType => _emiType ?? '';
  bool hasEmiType() => _emiType != null;

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
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _serialNumber = castToType<int>(snapshotData['serialNumber']);
    _status = snapshotData['status'] as bool?;
    _emiType = snapshotData['emiType'] as String?;
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
      FirebaseFirestore.instance.collection('chapter');

  static Stream<ChapterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChapterRecord.fromSnapshot(s));

  static Future<ChapterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChapterRecord.fromSnapshot(s));

  static ChapterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChapterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChapterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChapterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChapterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChapterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChapterRecordData({
  DocumentReference? courseRef,
  String? name,
  String? description,
  int? serialNumber,
  bool? status,
  String? emiType,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  TranslateStruct? descriptionAutoTranslate,
  TranslateStruct? descriptionManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'name': name,
      'description': description,
      'serialNumber': serialNumber,
      'status': status,
      'emiType': emiType,
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

class ChapterRecordDocumentEquality implements Equality<ChapterRecord> {
  const ChapterRecordDocumentEquality();

  @override
  bool equals(ChapterRecord? e1, ChapterRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.serialNumber == e2?.serialNumber &&
        e1?.status == e2?.status &&
        e1?.emiType == e2?.emiType &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.descriptionAutoTranslate == e2?.descriptionAutoTranslate &&
        e1?.descriptionManualTranslate == e2?.descriptionManualTranslate;
  }

  @override
  int hash(ChapterRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.name,
        e?.description,
        e?.serialNumber,
        e?.status,
        e?.emiType,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.descriptionAutoTranslate,
        e?.descriptionManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is ChapterRecord;
}
