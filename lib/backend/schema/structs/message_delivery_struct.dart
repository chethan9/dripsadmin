// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageDeliveryStruct extends FFFirebaseStruct {
  MessageDeliveryStruct({
    int? attempts,
    String? error,
    String? state,
    DateTime? startTime,
    DateTime? endTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _attempts = attempts,
        _error = error,
        _state = state,
        _startTime = startTime,
        _endTime = endTime,
        super(firestoreUtilData);

  // "attempts" field.
  int? _attempts;
  int get attempts => _attempts ?? 0;
  set attempts(int? val) => _attempts = val;
  void incrementAttempts(int amount) => _attempts = attempts + amount;
  bool hasAttempts() => _attempts != null;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;
  bool hasError() => _error != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;
  bool hasEndTime() => _endTime != null;

  static MessageDeliveryStruct fromMap(Map<String, dynamic> data) =>
      MessageDeliveryStruct(
        attempts: castToType<int>(data['attempts']),
        error: data['error'] as String?,
        state: data['state'] as String?,
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
      );

  static MessageDeliveryStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageDeliveryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'attempts': _attempts,
        'error': _error,
        'state': _state,
        'startTime': _startTime,
        'endTime': _endTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'attempts': serializeParam(
          _attempts,
          ParamType.int,
        ),
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MessageDeliveryStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageDeliveryStruct(
        attempts: deserializeParam(
          data['attempts'],
          ParamType.int,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MessageDeliveryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageDeliveryStruct &&
        attempts == other.attempts &&
        error == other.error &&
        state == other.state &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([attempts, error, state, startTime, endTime]);
}

MessageDeliveryStruct createMessageDeliveryStruct({
  int? attempts,
  String? error,
  String? state,
  DateTime? startTime,
  DateTime? endTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageDeliveryStruct(
      attempts: attempts,
      error: error,
      state: state,
      startTime: startTime,
      endTime: endTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageDeliveryStruct? updateMessageDeliveryStruct(
  MessageDeliveryStruct? messageDelivery, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageDelivery
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageDeliveryStructData(
  Map<String, dynamic> firestoreData,
  MessageDeliveryStruct? messageDelivery,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageDelivery == null) {
    return;
  }
  if (messageDelivery.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageDelivery.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageDeliveryData =
      getMessageDeliveryFirestoreData(messageDelivery, forFieldValue);
  final nestedData =
      messageDeliveryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messageDelivery.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageDeliveryFirestoreData(
  MessageDeliveryStruct? messageDelivery, [
  bool forFieldValue = false,
]) {
  if (messageDelivery == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageDelivery.toMap());

  // Add any Firestore field values
  messageDelivery.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageDeliveryListFirestoreData(
  List<MessageDeliveryStruct>? messageDeliverys,
) =>
    messageDeliverys
        ?.map((e) => getMessageDeliveryFirestoreData(e, true))
        .toList() ??
    [];
