// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderUniqueStruct extends FFFirebaseStruct {
  OrderUniqueStruct({
    String? label,
    int? labelnum,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _label = label,
        _labelnum = labelnum,
        super(firestoreUtilData);

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;
  bool hasLabel() => _label != null;

  // "labelnum" field.
  int? _labelnum;
  int get labelnum => _labelnum ?? 0;
  set labelnum(int? val) => _labelnum = val;
  void incrementLabelnum(int amount) => _labelnum = labelnum + amount;
  bool hasLabelnum() => _labelnum != null;

  static OrderUniqueStruct fromMap(Map<String, dynamic> data) =>
      OrderUniqueStruct(
        label: data['label'] as String?,
        labelnum: castToType<int>(data['labelnum']),
      );

  static OrderUniqueStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderUniqueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'labelnum': _labelnum,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'labelnum': serializeParam(
          _labelnum,
          ParamType.int,
        ),
      }.withoutNulls;

  static OrderUniqueStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderUniqueStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        labelnum: deserializeParam(
          data['labelnum'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OrderUniqueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderUniqueStruct &&
        label == other.label &&
        labelnum == other.labelnum;
  }

  @override
  int get hashCode => const ListEquality().hash([label, labelnum]);
}

OrderUniqueStruct createOrderUniqueStruct({
  String? label,
  int? labelnum,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderUniqueStruct(
      label: label,
      labelnum: labelnum,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderUniqueStruct? updateOrderUniqueStruct(
  OrderUniqueStruct? orderUnique, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderUnique
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderUniqueStructData(
  Map<String, dynamic> firestoreData,
  OrderUniqueStruct? orderUnique,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderUnique == null) {
    return;
  }
  if (orderUnique.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderUnique.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderUniqueData =
      getOrderUniqueFirestoreData(orderUnique, forFieldValue);
  final nestedData =
      orderUniqueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderUnique.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderUniqueFirestoreData(
  OrderUniqueStruct? orderUnique, [
  bool forFieldValue = false,
]) {
  if (orderUnique == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderUnique.toMap());

  // Add any Firestore field values
  orderUnique.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderUniqueListFirestoreData(
  List<OrderUniqueStruct>? orderUniques,
) =>
    orderUniques?.map((e) => getOrderUniqueFirestoreData(e, true)).toList() ??
    [];
