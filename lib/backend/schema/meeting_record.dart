import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingRecord extends FirestoreRecord {
  MeetingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "dayList" field.
  List<String>? _dayList;
  List<String> get dayList => _dayList ?? const [];
  bool hasDayList() => _dayList != null;

  // "slotLimit" field.
  int? _slotLimit;
  int get slotLimit => _slotLimit ?? 0;
  bool hasSlotLimit() => _slotLimit != null;

  // "sessionTime" field.
  String? _sessionTime;
  String get sessionTime => _sessionTime ?? '';
  bool hasSessionTime() => _sessionTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "sessionList" field.
  List<String>? _sessionList;
  List<String> get sessionList => _sessionList ?? const [];
  bool hasSessionList() => _sessionList != null;

  // "titleAutoTranslate" field.
  TranslateStruct? _titleAutoTranslate;
  TranslateStruct get titleAutoTranslate =>
      _titleAutoTranslate ?? TranslateStruct();
  bool hasTitleAutoTranslate() => _titleAutoTranslate != null;

  // "titleManualTranslate" field.
  TranslateStruct? _titleManualTranslate;
  TranslateStruct get titleManualTranslate =>
      _titleManualTranslate ?? TranslateStruct();
  bool hasTitleManualTranslate() => _titleManualTranslate != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _dayList = getDataList(snapshotData['dayList']);
    _slotLimit = castToType<int>(snapshotData['slotLimit']);
    _sessionTime = snapshotData['sessionTime'] as String?;
    _image = snapshotData['image'] as String?;
    _sessionList = getDataList(snapshotData['sessionList']);
    _titleAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['titleAutoTranslate']);
    _titleManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['titleManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meeting');

  static Stream<MeetingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingRecord.fromSnapshot(s));

  static Future<MeetingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingRecord.fromSnapshot(s));

  static MeetingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingRecordData({
  String? title,
  DateTime? startDate,
  DateTime? endDate,
  int? slotLimit,
  String? sessionTime,
  String? image,
  TranslateStruct? titleAutoTranslate,
  TranslateStruct? titleManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'startDate': startDate,
      'endDate': endDate,
      'slotLimit': slotLimit,
      'sessionTime': sessionTime,
      'image': image,
      'titleAutoTranslate': TranslateStruct().toMap(),
      'titleManualTranslate': TranslateStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "titleAutoTranslate" field.
  addTranslateStructData(
      firestoreData, titleAutoTranslate, 'titleAutoTranslate');

  // Handle nested data for "titleManualTranslate" field.
  addTranslateStructData(
      firestoreData, titleManualTranslate, 'titleManualTranslate');

  return firestoreData;
}

class MeetingRecordDocumentEquality implements Equality<MeetingRecord> {
  const MeetingRecordDocumentEquality();

  @override
  bool equals(MeetingRecord? e1, MeetingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        listEquality.equals(e1?.dayList, e2?.dayList) &&
        e1?.slotLimit == e2?.slotLimit &&
        e1?.sessionTime == e2?.sessionTime &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.sessionList, e2?.sessionList) &&
        e1?.titleAutoTranslate == e2?.titleAutoTranslate &&
        e1?.titleManualTranslate == e2?.titleManualTranslate;
  }

  @override
  int hash(MeetingRecord? e) => const ListEquality().hash([
        e?.title,
        e?.startDate,
        e?.endDate,
        e?.dayList,
        e?.slotLimit,
        e?.sessionTime,
        e?.image,
        e?.sessionList,
        e?.titleAutoTranslate,
        e?.titleManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is MeetingRecord;
}
