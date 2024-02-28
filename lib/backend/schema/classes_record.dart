import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassesRecord extends FirestoreRecord {
  ClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "class_name" field.
  String? _className;
  String get className => _className ?? '';
  bool hasClassName() => _className != null;

  // "start_time" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "member_limit" field.
  int? _memberLimit;
  int get memberLimit => _memberLimit ?? 0;
  bool hasMemberLimit() => _memberLimit != null;

  // "number_day" field.
  int? _numberDay;
  int get numberDay => _numberDay ?? 0;
  bool hasNumberDay() => _numberDay != null;

  // "dayList" field.
  List<String>? _dayList;
  List<String> get dayList => _dayList ?? const [];
  bool hasDayList() => _dayList != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "zoomClassList" field.
  List<ZoomClassesStruct>? _zoomClassList;
  List<ZoomClassesStruct> get zoomClassList => _zoomClassList ?? const [];
  bool hasZoomClassList() => _zoomClassList != null;

  void _initializeFields() {
    _className = snapshotData['class_name'] as String?;
    _startTime = snapshotData['start_time'] as String?;
    _endTime = snapshotData['end_time'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _memberLimit = castToType<int>(snapshotData['member_limit']);
    _numberDay = castToType<int>(snapshotData['number_day']);
    _dayList = getDataList(snapshotData['dayList']);
    _image = snapshotData['image'] as String?;
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _type = snapshotData['type'] as String?;
    _zoomClassList = getStructList(
      snapshotData['zoomClassList'],
      ZoomClassesStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassesRecord.fromSnapshot(s));

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassesRecord.fromSnapshot(s));

  static ClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassesRecordData({
  String? className,
  String? startTime,
  String? endTime,
  DateTime? startDate,
  DateTime? endDate,
  int? memberLimit,
  int? numberDay,
  String? image,
  DocumentReference? courseRef,
  DateTime? createdAt,
  String? status,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'class_name': className,
      'start_time': startTime,
      'end_time': endTime,
      'start_date': startDate,
      'end_date': endDate,
      'member_limit': memberLimit,
      'number_day': numberDay,
      'image': image,
      'courseRef': courseRef,
      'createdAt': createdAt,
      'status': status,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassesRecordDocumentEquality implements Equality<ClassesRecord> {
  const ClassesRecordDocumentEquality();

  @override
  bool equals(ClassesRecord? e1, ClassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.className == e2?.className &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.memberLimit == e2?.memberLimit &&
        e1?.numberDay == e2?.numberDay &&
        listEquality.equals(e1?.dayList, e2?.dayList) &&
        e1?.image == e2?.image &&
        e1?.courseRef == e2?.courseRef &&
        e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.zoomClassList, e2?.zoomClassList);
  }

  @override
  int hash(ClassesRecord? e) => const ListEquality().hash([
        e?.className,
        e?.startTime,
        e?.endTime,
        e?.startDate,
        e?.endDate,
        e?.memberLimit,
        e?.numberDay,
        e?.dayList,
        e?.image,
        e?.courseRef,
        e?.createdAt,
        e?.status,
        e?.type,
        e?.zoomClassList
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassesRecord;
}
