import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseOthersRecord extends FirestoreRecord {
  CourseOthersRecord._(
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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  bool hasOrderNumber() => _orderNumber != null;

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  void _initializeFields() {
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _orderNumber = castToType<int>(snapshotData['orderNumber']);
    _categoryName = snapshotData['categoryName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courseOthers');

  static Stream<CourseOthersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseOthersRecord.fromSnapshot(s));

  static Future<CourseOthersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseOthersRecord.fromSnapshot(s));

  static CourseOthersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CourseOthersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseOthersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseOthersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseOthersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseOthersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseOthersRecordData({
  DocumentReference? courseRef,
  String? name,
  String? description,
  String? image,
  int? orderNumber,
  String? categoryName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'name': name,
      'description': description,
      'image': image,
      'orderNumber': orderNumber,
      'categoryName': categoryName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseOthersRecordDocumentEquality
    implements Equality<CourseOthersRecord> {
  const CourseOthersRecordDocumentEquality();

  @override
  bool equals(CourseOthersRecord? e1, CourseOthersRecord? e2) {
    return e1?.courseRef == e2?.courseRef &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.categoryName == e2?.categoryName;
  }

  @override
  int hash(CourseOthersRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.name,
        e?.description,
        e?.image,
        e?.orderNumber,
        e?.categoryName
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseOthersRecord;
}
