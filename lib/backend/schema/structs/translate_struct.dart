// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TranslateStruct extends FFFirebaseStruct {
  TranslateStruct({
    String? en,
    String? ar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _en = en,
        _ar = ar,
        super(firestoreUtilData);

  // "en" field.
  String? _en;
  String get en => _en ?? '';
  set en(String? val) => _en = val;
  bool hasEn() => _en != null;

  // "ar" field.
  String? _ar;
  String get ar => _ar ?? '';
  set ar(String? val) => _ar = val;
  bool hasAr() => _ar != null;

  static TranslateStruct fromMap(Map<String, dynamic> data) => TranslateStruct(
        en: data['en'] as String?,
        ar: data['ar'] as String?,
      );

  static TranslateStruct? maybeFromMap(dynamic data) => data is Map
      ? TranslateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'en': _en,
        'ar': _ar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'en': serializeParam(
          _en,
          ParamType.String,
        ),
        'ar': serializeParam(
          _ar,
          ParamType.String,
        ),
      }.withoutNulls;

  static TranslateStruct fromSerializableMap(Map<String, dynamic> data) =>
      TranslateStruct(
        en: deserializeParam(
          data['en'],
          ParamType.String,
          false,
        ),
        ar: deserializeParam(
          data['ar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TranslateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TranslateStruct && en == other.en && ar == other.ar;
  }

  @override
  int get hashCode => const ListEquality().hash([en, ar]);
}

TranslateStruct createTranslateStruct({
  String? en,
  String? ar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TranslateStruct(
      en: en,
      ar: ar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TranslateStruct? updateTranslateStruct(
  TranslateStruct? translate, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    translate
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTranslateStructData(
  Map<String, dynamic> firestoreData,
  TranslateStruct? translate,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (translate == null) {
    return;
  }
  if (translate.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && translate.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final translateData = getTranslateFirestoreData(translate, forFieldValue);
  final nestedData = translateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = translate.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTranslateFirestoreData(
  TranslateStruct? translate, [
  bool forFieldValue = false,
]) {
  if (translate == null) {
    return {};
  }
  final firestoreData = mapToFirestore(translate.toMap());

  // Add any Firestore field values
  translate.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTranslateListFirestoreData(
  List<TranslateStruct>? translates,
) =>
    translates?.map((e) => getTranslateFirestoreData(e, true)).toList() ?? [];
