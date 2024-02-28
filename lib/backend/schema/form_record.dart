import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormRecord extends FirestoreRecord {
  FormRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  bool hasSubtitle() => _subtitle != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "serialNum" field.
  int? _serialNum;
  int get serialNum => _serialNum ?? 0;
  bool hasSerialNum() => _serialNum != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "shortCODE" field.
  String? _shortCODE;
  String get shortCODE => _shortCODE ?? '';
  bool hasShortCODE() => _shortCODE != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _subtitle = snapshotData['subtitle'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _serialNum = castToType<int>(snapshotData['serialNum']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _shortCODE = snapshotData['shortCODE'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('form');

  static Stream<FormRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormRecord.fromSnapshot(s));

  static Future<FormRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormRecord.fromSnapshot(s));

  static FormRecord fromSnapshot(DocumentSnapshot snapshot) => FormRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormRecordData({
  String? name,
  String? subtitle,
  String? description,
  String? image,
  int? serialNum,
  DateTime? createdAt,
  String? shortCODE,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'subtitle': subtitle,
      'description': description,
      'image': image,
      'serialNum': serialNum,
      'createdAt': createdAt,
      'shortCODE': shortCODE,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormRecordDocumentEquality implements Equality<FormRecord> {
  const FormRecordDocumentEquality();

  @override
  bool equals(FormRecord? e1, FormRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.subtitle == e2?.subtitle &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.serialNum == e2?.serialNum &&
        e1?.createdAt == e2?.createdAt &&
        e1?.shortCODE == e2?.shortCODE;
  }

  @override
  int hash(FormRecord? e) => const ListEquality().hash([
        e?.name,
        e?.subtitle,
        e?.description,
        e?.image,
        e?.serialNum,
        e?.createdAt,
        e?.shortCODE
      ]);

  @override
  bool isValidKey(Object? o) => o is FormRecord;
}
