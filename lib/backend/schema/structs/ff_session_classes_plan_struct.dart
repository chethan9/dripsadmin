// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FfSessionClassesPlanStruct extends FFFirebaseStruct {
  FfSessionClassesPlanStruct({
    String? name,
    double? price,
    double? salesPrice,
    int? numberOfClasses,
    String? status,
    DateTime? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _price = price,
        _salesPrice = salesPrice,
        _numberOfClasses = numberOfClasses,
        _status = status,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "sales_price" field.
  double? _salesPrice;
  double get salesPrice => _salesPrice ?? 0.0;
  set salesPrice(double? val) => _salesPrice = val;
  void incrementSalesPrice(double amount) => _salesPrice = salesPrice + amount;
  bool hasSalesPrice() => _salesPrice != null;

  // "number_of_classes" field.
  int? _numberOfClasses;
  int get numberOfClasses => _numberOfClasses ?? 0;
  set numberOfClasses(int? val) => _numberOfClasses = val;
  void incrementNumberOfClasses(int amount) =>
      _numberOfClasses = numberOfClasses + amount;
  bool hasNumberOfClasses() => _numberOfClasses != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  static FfSessionClassesPlanStruct fromMap(Map<String, dynamic> data) =>
      FfSessionClassesPlanStruct(
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        salesPrice: castToType<double>(data['sales_price']),
        numberOfClasses: castToType<int>(data['number_of_classes']),
        status: data['status'] as String?,
        createdAt: data['createdAt'] as DateTime?,
      );

  static FfSessionClassesPlanStruct? maybeFromMap(dynamic data) => data is Map
      ? FfSessionClassesPlanStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'price': _price,
        'sales_price': _salesPrice,
        'number_of_classes': _numberOfClasses,
        'status': _status,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'sales_price': serializeParam(
          _salesPrice,
          ParamType.double,
        ),
        'number_of_classes': serializeParam(
          _numberOfClasses,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static FfSessionClassesPlanStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FfSessionClassesPlanStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        salesPrice: deserializeParam(
          data['sales_price'],
          ParamType.double,
          false,
        ),
        numberOfClasses: deserializeParam(
          data['number_of_classes'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
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
  String toString() => 'FfSessionClassesPlanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FfSessionClassesPlanStruct &&
        name == other.name &&
        price == other.price &&
        salesPrice == other.salesPrice &&
        numberOfClasses == other.numberOfClasses &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, price, salesPrice, numberOfClasses, status, createdAt]);
}

FfSessionClassesPlanStruct createFfSessionClassesPlanStruct({
  String? name,
  double? price,
  double? salesPrice,
  int? numberOfClasses,
  String? status,
  DateTime? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FfSessionClassesPlanStruct(
      name: name,
      price: price,
      salesPrice: salesPrice,
      numberOfClasses: numberOfClasses,
      status: status,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FfSessionClassesPlanStruct? updateFfSessionClassesPlanStruct(
  FfSessionClassesPlanStruct? ffSessionClassesPlan, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ffSessionClassesPlan
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFfSessionClassesPlanStructData(
  Map<String, dynamic> firestoreData,
  FfSessionClassesPlanStruct? ffSessionClassesPlan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ffSessionClassesPlan == null) {
    return;
  }
  if (ffSessionClassesPlan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ffSessionClassesPlan.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ffSessionClassesPlanData =
      getFfSessionClassesPlanFirestoreData(ffSessionClassesPlan, forFieldValue);
  final nestedData =
      ffSessionClassesPlanData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      ffSessionClassesPlan.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFfSessionClassesPlanFirestoreData(
  FfSessionClassesPlanStruct? ffSessionClassesPlan, [
  bool forFieldValue = false,
]) {
  if (ffSessionClassesPlan == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ffSessionClassesPlan.toMap());

  // Add any Firestore field values
  ffSessionClassesPlan.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFfSessionClassesPlanListFirestoreData(
  List<FfSessionClassesPlanStruct>? ffSessionClassesPlans,
) =>
    ffSessionClassesPlans
        ?.map((e) => getFfSessionClassesPlanFirestoreData(e, true))
        .toList() ??
    [];
