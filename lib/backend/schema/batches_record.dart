import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BatchesRecord extends FirestoreRecord {
  BatchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

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

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "courseRef" field.
  List<DocumentReference>? _courseRef;
  List<DocumentReference> get courseRef => _courseRef ?? const [];
  bool hasCourseRef() => _courseRef != null;

  // "archiveCourseRef" field.
  List<DocumentReference>? _archiveCourseRef;
  List<DocumentReference> get archiveCourseRef => _archiveCourseRef ?? const [];
  bool hasArchiveCourseRef() => _archiveCourseRef != null;

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

  // "bookingLimit" field.
  int? _bookingLimit;
  int get bookingLimit => _bookingLimit ?? 0;
  bool hasBookingLimit() => _bookingLimit != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _courseRef = getDataList(snapshotData['courseRef']);
    _archiveCourseRef = getDataList(snapshotData['archiveCourseRef']);
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
    _descriptionAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['descriptionAutoTranslate']);
    _descriptionManualTranslate = TranslateStruct.maybeFromMap(
        snapshotData['descriptionManualTranslate']);
    _bookingLimit = castToType<int>(snapshotData['bookingLimit']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('batches');

  static Stream<BatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BatchesRecord.fromSnapshot(s));

  static Future<BatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BatchesRecord.fromSnapshot(s));

  static BatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBatchesRecordData({
  String? id,
  String? name,
  String? description,
  String? image,
  DateTime? startDate,
  DateTime? endDate,
  String? status,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  TranslateStruct? descriptionAutoTranslate,
  TranslateStruct? descriptionManualTranslate,
  int? bookingLimit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'startDate': startDate,
      'endDate': endDate,
      'status': status,
      'nameAutoTranslate': TranslateStruct().toMap(),
      'nameManualTranslate': TranslateStruct().toMap(),
      'descriptionAutoTranslate': TranslateStruct().toMap(),
      'descriptionManualTranslate': TranslateStruct().toMap(),
      'bookingLimit': bookingLimit,
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

class BatchesRecordDocumentEquality implements Equality<BatchesRecord> {
  const BatchesRecordDocumentEquality();

  @override
  bool equals(BatchesRecord? e1, BatchesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.courseRef, e2?.courseRef) &&
        listEquality.equals(e1?.archiveCourseRef, e2?.archiveCourseRef) &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.descriptionAutoTranslate == e2?.descriptionAutoTranslate &&
        e1?.descriptionManualTranslate == e2?.descriptionManualTranslate &&
        e1?.bookingLimit == e2?.bookingLimit;
  }

  @override
  int hash(BatchesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.description,
        e?.image,
        e?.startDate,
        e?.endDate,
        e?.status,
        e?.courseRef,
        e?.archiveCourseRef,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.descriptionAutoTranslate,
        e?.descriptionManualTranslate,
        e?.bookingLimit
      ]);

  @override
  bool isValidKey(Object? o) => o is BatchesRecord;
}
