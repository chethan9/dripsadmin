import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FfSessionClassesRecord extends FirestoreRecord {
  FfSessionClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ff_post_sessionRef" field.
  DocumentReference? _ffPostSessionRef;
  DocumentReference? get ffPostSessionRef => _ffPostSessionRef;
  bool hasFfPostSessionRef() => _ffPostSessionRef != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "start_date_time" field.
  DateTime? _startDateTime;
  DateTime? get startDateTime => _startDateTime;
  bool hasStartDateTime() => _startDateTime != null;

  // "end_date_tme" field.
  DateTime? _endDateTme;
  DateTime? get endDateTme => _endDateTme;
  bool hasEndDateTme() => _endDateTme != null;

  // "member_limit" field.
  int? _memberLimit;
  int get memberLimit => _memberLimit ?? 0;
  bool hasMemberLimit() => _memberLimit != null;

  // "expire_in_numberOfDay" field.
  int? _expireInNumberOfDay;
  int get expireInNumberOfDay => _expireInNumberOfDay ?? 0;
  bool hasExpireInNumberOfDay() => _expireInNumberOfDay != null;

  // "day_list" field.
  List<String>? _dayList;
  List<String> get dayList => _dayList ?? const [];
  bool hasDayList() => _dayList != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "createdUserRef" field.
  DocumentReference? _createdUserRef;
  DocumentReference? get createdUserRef => _createdUserRef;
  bool hasCreatedUserRef() => _createdUserRef != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "ff_session_classes_plan" field.
  List<FfSessionClassesPlanStruct>? _ffSessionClassesPlan;
  List<FfSessionClassesPlanStruct> get ffSessionClassesPlan =>
      _ffSessionClassesPlan ?? const [];
  bool hasFfSessionClassesPlan() => _ffSessionClassesPlan != null;

  // "ff_session_classes_zoomInfo" field.
  FfSessionClassesZoomInfoStruct? _ffSessionClassesZoomInfo;
  FfSessionClassesZoomInfoStruct get ffSessionClassesZoomInfo =>
      _ffSessionClassesZoomInfo ?? FfSessionClassesZoomInfoStruct();
  bool hasFfSessionClassesZoomInfo() => _ffSessionClassesZoomInfo != null;

  void _initializeFields() {
    _ffPostSessionRef =
        snapshotData['ff_post_sessionRef'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _name = snapshotData['name'] as String?;
    _startDateTime = snapshotData['start_date_time'] as DateTime?;
    _endDateTme = snapshotData['end_date_tme'] as DateTime?;
    _memberLimit = castToType<int>(snapshotData['member_limit']);
    _expireInNumberOfDay =
        castToType<int>(snapshotData['expire_in_numberOfDay']);
    _dayList = getDataList(snapshotData['day_list']);
    _status = snapshotData['status'] as String?;
    _image = snapshotData['image'] as String?;
    _createdUserRef = snapshotData['createdUserRef'] as DocumentReference?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _ffSessionClassesPlan = getStructList(
      snapshotData['ff_session_classes_plan'],
      FfSessionClassesPlanStruct.fromMap,
    );
    _ffSessionClassesZoomInfo = FfSessionClassesZoomInfoStruct.maybeFromMap(
        snapshotData['ff_session_classes_zoomInfo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ff_session_classes');

  static Stream<FfSessionClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FfSessionClassesRecord.fromSnapshot(s));

  static Future<FfSessionClassesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FfSessionClassesRecord.fromSnapshot(s));

  static FfSessionClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FfSessionClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FfSessionClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FfSessionClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FfSessionClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FfSessionClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFfSessionClassesRecordData({
  DocumentReference? ffPostSessionRef,
  String? type,
  String? name,
  DateTime? startDateTime,
  DateTime? endDateTme,
  int? memberLimit,
  int? expireInNumberOfDay,
  String? status,
  String? image,
  DocumentReference? createdUserRef,
  DateTime? updatedAt,
  DateTime? createdAt,
  FfSessionClassesZoomInfoStruct? ffSessionClassesZoomInfo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ff_post_sessionRef': ffPostSessionRef,
      'type': type,
      'name': name,
      'start_date_time': startDateTime,
      'end_date_tme': endDateTme,
      'member_limit': memberLimit,
      'expire_in_numberOfDay': expireInNumberOfDay,
      'status': status,
      'image': image,
      'createdUserRef': createdUserRef,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
      'ff_session_classes_zoomInfo': FfSessionClassesZoomInfoStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "ff_session_classes_zoomInfo" field.
  addFfSessionClassesZoomInfoStructData(
      firestoreData, ffSessionClassesZoomInfo, 'ff_session_classes_zoomInfo');

  return firestoreData;
}

class FfSessionClassesRecordDocumentEquality
    implements Equality<FfSessionClassesRecord> {
  const FfSessionClassesRecordDocumentEquality();

  @override
  bool equals(FfSessionClassesRecord? e1, FfSessionClassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.ffPostSessionRef == e2?.ffPostSessionRef &&
        e1?.type == e2?.type &&
        e1?.name == e2?.name &&
        e1?.startDateTime == e2?.startDateTime &&
        e1?.endDateTme == e2?.endDateTme &&
        e1?.memberLimit == e2?.memberLimit &&
        e1?.expireInNumberOfDay == e2?.expireInNumberOfDay &&
        listEquality.equals(e1?.dayList, e2?.dayList) &&
        e1?.status == e2?.status &&
        e1?.image == e2?.image &&
        e1?.createdUserRef == e2?.createdUserRef &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(
            e1?.ffSessionClassesPlan, e2?.ffSessionClassesPlan) &&
        e1?.ffSessionClassesZoomInfo == e2?.ffSessionClassesZoomInfo;
  }

  @override
  int hash(FfSessionClassesRecord? e) => const ListEquality().hash([
        e?.ffPostSessionRef,
        e?.type,
        e?.name,
        e?.startDateTime,
        e?.endDateTme,
        e?.memberLimit,
        e?.expireInNumberOfDay,
        e?.dayList,
        e?.status,
        e?.image,
        e?.createdUserRef,
        e?.updatedAt,
        e?.createdAt,
        e?.ffSessionClassesPlan,
        e?.ffSessionClassesZoomInfo
      ]);

  @override
  bool isValidKey(Object? o) => o is FfSessionClassesRecord;
}
