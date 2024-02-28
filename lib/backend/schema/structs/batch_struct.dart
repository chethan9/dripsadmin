// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BatchStruct extends FFFirebaseStruct {
  BatchStruct({
    String? name,
    int? number,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _number = number,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;
  void incrementNumber(int amount) => _number = number + amount;
  bool hasNumber() => _number != null;

  static BatchStruct fromMap(Map<String, dynamic> data) => BatchStruct(
        name: data['name'] as String?,
        number: castToType<int>(data['number']),
      );

  static BatchStruct? maybeFromMap(dynamic data) =>
      data is Map ? BatchStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'number': _number,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
      }.withoutNulls;

  static BatchStruct fromSerializableMap(Map<String, dynamic> data) =>
      BatchStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BatchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BatchStruct && name == other.name && number == other.number;
  }

  @override
  int get hashCode => const ListEquality().hash([name, number]);
}

BatchStruct createBatchStruct({
  String? name,
  int? number,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BatchStruct(
      name: name,
      number: number,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BatchStruct? updateBatchStruct(
  BatchStruct? batch, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    batch
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBatchStructData(
  Map<String, dynamic> firestoreData,
  BatchStruct? batch,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (batch == null) {
    return;
  }
  if (batch.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && batch.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final batchData = getBatchFirestoreData(batch, forFieldValue);
  final nestedData = batchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = batch.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBatchFirestoreData(
  BatchStruct? batch, [
  bool forFieldValue = false,
]) {
  if (batch == null) {
    return {};
  }
  final firestoreData = mapToFirestore(batch.toMap());

  // Add any Firestore field values
  batch.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBatchListFirestoreData(
  List<BatchStruct>? batchs,
) =>
    batchs?.map((e) => getBatchFirestoreData(e, true)).toList() ?? [];
