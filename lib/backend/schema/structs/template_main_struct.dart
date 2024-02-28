// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateMainStruct extends FFFirebaseStruct {
  TemplateMainStruct({
    TemplateMessagePartStruct? data,
    String? name,
    DocumentReference? templateRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        _name = name,
        _templateRef = templateRef,
        super(firestoreUtilData);

  // "data" field.
  TemplateMessagePartStruct? _data;
  TemplateMessagePartStruct get data => _data ?? TemplateMessagePartStruct();
  set data(TemplateMessagePartStruct? val) => _data = val;
  void updateData(Function(TemplateMessagePartStruct) updateFn) =>
      updateFn(_data ??= TemplateMessagePartStruct());
  bool hasData() => _data != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "templateRef" field.
  DocumentReference? _templateRef;
  DocumentReference? get templateRef => _templateRef;
  set templateRef(DocumentReference? val) => _templateRef = val;
  bool hasTemplateRef() => _templateRef != null;

  static TemplateMainStruct fromMap(Map<String, dynamic> data) =>
      TemplateMainStruct(
        data: TemplateMessagePartStruct.maybeFromMap(data['data']),
        name: data['name'] as String?,
        templateRef: data['templateRef'] as DocumentReference?,
      );

  static TemplateMainStruct? maybeFromMap(dynamic data) => data is Map
      ? TemplateMainStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.toMap(),
        'name': _name,
        'templateRef': _templateRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'templateRef': serializeParam(
          _templateRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static TemplateMainStruct fromSerializableMap(Map<String, dynamic> data) =>
      TemplateMainStruct(
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: TemplateMessagePartStruct.fromSerializableMap,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        templateRef: deserializeParam(
          data['templateRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['template'],
        ),
      );

  @override
  String toString() => 'TemplateMainStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TemplateMainStruct &&
        data == other.data &&
        name == other.name &&
        templateRef == other.templateRef;
  }

  @override
  int get hashCode => const ListEquality().hash([data, name, templateRef]);
}

TemplateMainStruct createTemplateMainStruct({
  TemplateMessagePartStruct? data,
  String? name,
  DocumentReference? templateRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TemplateMainStruct(
      data: data ?? (clearUnsetFields ? TemplateMessagePartStruct() : null),
      name: name,
      templateRef: templateRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TemplateMainStruct? updateTemplateMainStruct(
  TemplateMainStruct? templateMain, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    templateMain
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTemplateMainStructData(
  Map<String, dynamic> firestoreData,
  TemplateMainStruct? templateMain,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (templateMain == null) {
    return;
  }
  if (templateMain.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && templateMain.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final templateMainData =
      getTemplateMainFirestoreData(templateMain, forFieldValue);
  final nestedData =
      templateMainData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = templateMain.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTemplateMainFirestoreData(
  TemplateMainStruct? templateMain, [
  bool forFieldValue = false,
]) {
  if (templateMain == null) {
    return {};
  }
  final firestoreData = mapToFirestore(templateMain.toMap());

  // Handle nested data for "data" field.
  addTemplateMessagePartStructData(
    firestoreData,
    templateMain.hasData() ? templateMain.data : null,
    'data',
    forFieldValue,
  );

  // Add any Firestore field values
  templateMain.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTemplateMainListFirestoreData(
  List<TemplateMainStruct>? templateMains,
) =>
    templateMains?.map((e) => getTemplateMainFirestoreData(e, true)).toList() ??
    [];
