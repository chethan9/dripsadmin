// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderProductStruct extends FFFirebaseStruct {
  OrderProductStruct({
    DocumentReference? courseRef,
    DocumentReference? coursePlanRef,
    String? planName,
    int? planNumberDay,
    int? planNumberClasses,
    double? price,
    double? discountPrice,
    int? quantity,
    double? subtotal,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _courseRef = courseRef,
        _coursePlanRef = coursePlanRef,
        _planName = planName,
        _planNumberDay = planNumberDay,
        _planNumberClasses = planNumberClasses,
        _price = price,
        _discountPrice = discountPrice,
        _quantity = quantity,
        _subtotal = subtotal,
        _type = type,
        super(firestoreUtilData);

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  set courseRef(DocumentReference? val) => _courseRef = val;
  bool hasCourseRef() => _courseRef != null;

  // "coursePlanRef" field.
  DocumentReference? _coursePlanRef;
  DocumentReference? get coursePlanRef => _coursePlanRef;
  set coursePlanRef(DocumentReference? val) => _coursePlanRef = val;
  bool hasCoursePlanRef() => _coursePlanRef != null;

  // "planName" field.
  String? _planName;
  String get planName => _planName ?? '';
  set planName(String? val) => _planName = val;
  bool hasPlanName() => _planName != null;

  // "planNumberDay" field.
  int? _planNumberDay;
  int get planNumberDay => _planNumberDay ?? 0;
  set planNumberDay(int? val) => _planNumberDay = val;
  void incrementPlanNumberDay(int amount) =>
      _planNumberDay = planNumberDay + amount;
  bool hasPlanNumberDay() => _planNumberDay != null;

  // "planNumberClasses" field.
  int? _planNumberClasses;
  int get planNumberClasses => _planNumberClasses ?? 0;
  set planNumberClasses(int? val) => _planNumberClasses = val;
  void incrementPlanNumberClasses(int amount) =>
      _planNumberClasses = planNumberClasses + amount;
  bool hasPlanNumberClasses() => _planNumberClasses != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "discount_price" field.
  double? _discountPrice;
  double get discountPrice => _discountPrice ?? 0.0;
  set discountPrice(double? val) => _discountPrice = val;
  void incrementDiscountPrice(double amount) =>
      _discountPrice = discountPrice + amount;
  bool hasDiscountPrice() => _discountPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;
  void incrementSubtotal(double amount) => _subtotal = subtotal + amount;
  bool hasSubtotal() => _subtotal != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  static OrderProductStruct fromMap(Map<String, dynamic> data) =>
      OrderProductStruct(
        courseRef: data['courseRef'] as DocumentReference?,
        coursePlanRef: data['coursePlanRef'] as DocumentReference?,
        planName: data['planName'] as String?,
        planNumberDay: castToType<int>(data['planNumberDay']),
        planNumberClasses: castToType<int>(data['planNumberClasses']),
        price: castToType<double>(data['price']),
        discountPrice: castToType<double>(data['discount_price']),
        quantity: castToType<int>(data['quantity']),
        subtotal: castToType<double>(data['subtotal']),
        type: data['type'] as String?,
      );

  static OrderProductStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'courseRef': _courseRef,
        'coursePlanRef': _coursePlanRef,
        'planName': _planName,
        'planNumberDay': _planNumberDay,
        'planNumberClasses': _planNumberClasses,
        'price': _price,
        'discount_price': _discountPrice,
        'quantity': _quantity,
        'subtotal': _subtotal,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'courseRef': serializeParam(
          _courseRef,
          ParamType.DocumentReference,
        ),
        'coursePlanRef': serializeParam(
          _coursePlanRef,
          ParamType.DocumentReference,
        ),
        'planName': serializeParam(
          _planName,
          ParamType.String,
        ),
        'planNumberDay': serializeParam(
          _planNumberDay,
          ParamType.int,
        ),
        'planNumberClasses': serializeParam(
          _planNumberClasses,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'discount_price': serializeParam(
          _discountPrice,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderProductStruct(
        courseRef: deserializeParam(
          data['courseRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['course'],
        ),
        coursePlanRef: deserializeParam(
          data['coursePlanRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['coursePlan'],
        ),
        planName: deserializeParam(
          data['planName'],
          ParamType.String,
          false,
        ),
        planNumberDay: deserializeParam(
          data['planNumberDay'],
          ParamType.int,
          false,
        ),
        planNumberClasses: deserializeParam(
          data['planNumberClasses'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        discountPrice: deserializeParam(
          data['discount_price'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderProductStruct &&
        courseRef == other.courseRef &&
        coursePlanRef == other.coursePlanRef &&
        planName == other.planName &&
        planNumberDay == other.planNumberDay &&
        planNumberClasses == other.planNumberClasses &&
        price == other.price &&
        discountPrice == other.discountPrice &&
        quantity == other.quantity &&
        subtotal == other.subtotal &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        courseRef,
        coursePlanRef,
        planName,
        planNumberDay,
        planNumberClasses,
        price,
        discountPrice,
        quantity,
        subtotal,
        type
      ]);
}

OrderProductStruct createOrderProductStruct({
  DocumentReference? courseRef,
  DocumentReference? coursePlanRef,
  String? planName,
  int? planNumberDay,
  int? planNumberClasses,
  double? price,
  double? discountPrice,
  int? quantity,
  double? subtotal,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderProductStruct(
      courseRef: courseRef,
      coursePlanRef: coursePlanRef,
      planName: planName,
      planNumberDay: planNumberDay,
      planNumberClasses: planNumberClasses,
      price: price,
      discountPrice: discountPrice,
      quantity: quantity,
      subtotal: subtotal,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderProductStruct? updateOrderProductStruct(
  OrderProductStruct? orderProduct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderProduct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderProductStructData(
  Map<String, dynamic> firestoreData,
  OrderProductStruct? orderProduct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderProduct == null) {
    return;
  }
  if (orderProduct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderProduct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderProductData =
      getOrderProductFirestoreData(orderProduct, forFieldValue);
  final nestedData =
      orderProductData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderProduct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderProductFirestoreData(
  OrderProductStruct? orderProduct, [
  bool forFieldValue = false,
]) {
  if (orderProduct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderProduct.toMap());

  // Add any Firestore field values
  orderProduct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderProductListFirestoreData(
  List<OrderProductStruct>? orderProducts,
) =>
    orderProducts?.map((e) => getOrderProductFirestoreData(e, true)).toList() ??
    [];
