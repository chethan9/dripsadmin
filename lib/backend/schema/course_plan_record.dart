import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursePlanRecord extends FirestoreRecord {
  CoursePlanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "salesPrice" field.
  double? _salesPrice;
  double get salesPrice => _salesPrice ?? 0.0;
  bool hasSalesPrice() => _salesPrice != null;

  // "numberClasses" field.
  int? _numberClasses;
  int get numberClasses => _numberClasses ?? 0;
  bool hasNumberClasses() => _numberClasses != null;

  // "numberDays" field.
  int? _numberDays;
  int get numberDays => _numberDays ?? 0;
  bool hasNumberDays() => _numberDays != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _id = castToType<int>(snapshotData['id']);
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _salesPrice = castToType<double>(snapshotData['salesPrice']);
    _numberClasses = castToType<int>(snapshotData['numberClasses']);
    _numberDays = castToType<int>(snapshotData['numberDays']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coursePlan');

  static Stream<CoursePlanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursePlanRecord.fromSnapshot(s));

  static Future<CoursePlanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursePlanRecord.fromSnapshot(s));

  static CoursePlanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursePlanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursePlanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursePlanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursePlanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursePlanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursePlanRecordData({
  DocumentReference? courseRef,
  int? id,
  String? name,
  double? price,
  double? salesPrice,
  int? numberClasses,
  int? numberDays,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'id': id,
      'name': name,
      'price': price,
      'salesPrice': salesPrice,
      'numberClasses': numberClasses,
      'numberDays': numberDays,
      'status': status,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursePlanRecordDocumentEquality implements Equality<CoursePlanRecord> {
  const CoursePlanRecordDocumentEquality();

  @override
  bool equals(CoursePlanRecord? e1, CoursePlanRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.salesPrice == e2?.salesPrice &&
        e1?.numberClasses == e2?.numberClasses &&
        e1?.numberDays == e2?.numberDays &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CoursePlanRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.id,
        e?.name,
        e?.price,
        e?.salesPrice,
        e?.numberClasses,
        e?.numberDays,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursePlanRecord;
}
