// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZoomClassesStruct extends FFFirebaseStruct {
  ZoomClassesStruct({
    String? id,
    String? password,
    String? joinUrl,
    String? startUrl,
    String? topic,
    String? agenda,
    DateTime? date,
    String? time,
    String? duration,
    DateTime? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _password = password,
        _joinUrl = joinUrl,
        _startUrl = startUrl,
        _topic = topic,
        _agenda = agenda,
        _date = date,
        _time = time,
        _duration = duration,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "joinUrl" field.
  String? _joinUrl;
  String get joinUrl => _joinUrl ?? '';
  set joinUrl(String? val) => _joinUrl = val;
  bool hasJoinUrl() => _joinUrl != null;

  // "startUrl" field.
  String? _startUrl;
  String get startUrl => _startUrl ?? '';
  set startUrl(String? val) => _startUrl = val;
  bool hasStartUrl() => _startUrl != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  set topic(String? val) => _topic = val;
  bool hasTopic() => _topic != null;

  // "agenda" field.
  String? _agenda;
  String get agenda => _agenda ?? '';
  set agenda(String? val) => _agenda = val;
  bool hasAgenda() => _agenda != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;
  bool hasTime() => _time != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  set duration(String? val) => _duration = val;
  bool hasDuration() => _duration != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  static ZoomClassesStruct fromMap(Map<String, dynamic> data) =>
      ZoomClassesStruct(
        id: data['id'] as String?,
        password: data['password'] as String?,
        joinUrl: data['joinUrl'] as String?,
        startUrl: data['startUrl'] as String?,
        topic: data['topic'] as String?,
        agenda: data['agenda'] as String?,
        date: data['date'] as DateTime?,
        time: data['time'] as String?,
        duration: data['duration'] as String?,
        createdAt: data['createdAt'] as DateTime?,
      );

  static ZoomClassesStruct? maybeFromMap(dynamic data) => data is Map
      ? ZoomClassesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'password': _password,
        'joinUrl': _joinUrl,
        'startUrl': _startUrl,
        'topic': _topic,
        'agenda': _agenda,
        'date': _date,
        'time': _time,
        'duration': _duration,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'joinUrl': serializeParam(
          _joinUrl,
          ParamType.String,
        ),
        'startUrl': serializeParam(
          _startUrl,
          ParamType.String,
        ),
        'topic': serializeParam(
          _topic,
          ParamType.String,
        ),
        'agenda': serializeParam(
          _agenda,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ZoomClassesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ZoomClassesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        joinUrl: deserializeParam(
          data['joinUrl'],
          ParamType.String,
          false,
        ),
        startUrl: deserializeParam(
          data['startUrl'],
          ParamType.String,
          false,
        ),
        topic: deserializeParam(
          data['topic'],
          ParamType.String,
          false,
        ),
        agenda: deserializeParam(
          data['agenda'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ZoomClassesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ZoomClassesStruct &&
        id == other.id &&
        password == other.password &&
        joinUrl == other.joinUrl &&
        startUrl == other.startUrl &&
        topic == other.topic &&
        agenda == other.agenda &&
        date == other.date &&
        time == other.time &&
        duration == other.duration &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        password,
        joinUrl,
        startUrl,
        topic,
        agenda,
        date,
        time,
        duration,
        createdAt
      ]);
}

ZoomClassesStruct createZoomClassesStruct({
  String? id,
  String? password,
  String? joinUrl,
  String? startUrl,
  String? topic,
  String? agenda,
  DateTime? date,
  String? time,
  String? duration,
  DateTime? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ZoomClassesStruct(
      id: id,
      password: password,
      joinUrl: joinUrl,
      startUrl: startUrl,
      topic: topic,
      agenda: agenda,
      date: date,
      time: time,
      duration: duration,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ZoomClassesStruct? updateZoomClassesStruct(
  ZoomClassesStruct? zoomClasses, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    zoomClasses
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addZoomClassesStructData(
  Map<String, dynamic> firestoreData,
  ZoomClassesStruct? zoomClasses,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (zoomClasses == null) {
    return;
  }
  if (zoomClasses.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && zoomClasses.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final zoomClassesData =
      getZoomClassesFirestoreData(zoomClasses, forFieldValue);
  final nestedData =
      zoomClassesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = zoomClasses.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getZoomClassesFirestoreData(
  ZoomClassesStruct? zoomClasses, [
  bool forFieldValue = false,
]) {
  if (zoomClasses == null) {
    return {};
  }
  final firestoreData = mapToFirestore(zoomClasses.toMap());

  // Add any Firestore field values
  zoomClasses.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getZoomClassesListFirestoreData(
  List<ZoomClassesStruct>? zoomClassess,
) =>
    zoomClassess?.map((e) => getZoomClassesFirestoreData(e, true)).toList() ??
    [];
