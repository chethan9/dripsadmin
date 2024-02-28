// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZoomConfigStruct extends FFFirebaseStruct {
  ZoomConfigStruct({
    String? zoomEmail,
    String? zoomAPIkey,
    String? zoomAPIsecret,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _zoomEmail = zoomEmail,
        _zoomAPIkey = zoomAPIkey,
        _zoomAPIsecret = zoomAPIsecret,
        super(firestoreUtilData);

  // "zoomEmail" field.
  String? _zoomEmail;
  String get zoomEmail => _zoomEmail ?? '';
  set zoomEmail(String? val) => _zoomEmail = val;
  bool hasZoomEmail() => _zoomEmail != null;

  // "zoomAPIkey" field.
  String? _zoomAPIkey;
  String get zoomAPIkey => _zoomAPIkey ?? '';
  set zoomAPIkey(String? val) => _zoomAPIkey = val;
  bool hasZoomAPIkey() => _zoomAPIkey != null;

  // "zoomAPIsecret" field.
  String? _zoomAPIsecret;
  String get zoomAPIsecret => _zoomAPIsecret ?? '';
  set zoomAPIsecret(String? val) => _zoomAPIsecret = val;
  bool hasZoomAPIsecret() => _zoomAPIsecret != null;

  static ZoomConfigStruct fromMap(Map<String, dynamic> data) =>
      ZoomConfigStruct(
        zoomEmail: data['zoomEmail'] as String?,
        zoomAPIkey: data['zoomAPIkey'] as String?,
        zoomAPIsecret: data['zoomAPIsecret'] as String?,
      );

  static ZoomConfigStruct? maybeFromMap(dynamic data) => data is Map
      ? ZoomConfigStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'zoomEmail': _zoomEmail,
        'zoomAPIkey': _zoomAPIkey,
        'zoomAPIsecret': _zoomAPIsecret,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'zoomEmail': serializeParam(
          _zoomEmail,
          ParamType.String,
        ),
        'zoomAPIkey': serializeParam(
          _zoomAPIkey,
          ParamType.String,
        ),
        'zoomAPIsecret': serializeParam(
          _zoomAPIsecret,
          ParamType.String,
        ),
      }.withoutNulls;

  static ZoomConfigStruct fromSerializableMap(Map<String, dynamic> data) =>
      ZoomConfigStruct(
        zoomEmail: deserializeParam(
          data['zoomEmail'],
          ParamType.String,
          false,
        ),
        zoomAPIkey: deserializeParam(
          data['zoomAPIkey'],
          ParamType.String,
          false,
        ),
        zoomAPIsecret: deserializeParam(
          data['zoomAPIsecret'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ZoomConfigStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ZoomConfigStruct &&
        zoomEmail == other.zoomEmail &&
        zoomAPIkey == other.zoomAPIkey &&
        zoomAPIsecret == other.zoomAPIsecret;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([zoomEmail, zoomAPIkey, zoomAPIsecret]);
}

ZoomConfigStruct createZoomConfigStruct({
  String? zoomEmail,
  String? zoomAPIkey,
  String? zoomAPIsecret,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ZoomConfigStruct(
      zoomEmail: zoomEmail,
      zoomAPIkey: zoomAPIkey,
      zoomAPIsecret: zoomAPIsecret,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ZoomConfigStruct? updateZoomConfigStruct(
  ZoomConfigStruct? zoomConfig, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    zoomConfig
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addZoomConfigStructData(
  Map<String, dynamic> firestoreData,
  ZoomConfigStruct? zoomConfig,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (zoomConfig == null) {
    return;
  }
  if (zoomConfig.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && zoomConfig.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final zoomConfigData = getZoomConfigFirestoreData(zoomConfig, forFieldValue);
  final nestedData = zoomConfigData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = zoomConfig.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getZoomConfigFirestoreData(
  ZoomConfigStruct? zoomConfig, [
  bool forFieldValue = false,
]) {
  if (zoomConfig == null) {
    return {};
  }
  final firestoreData = mapToFirestore(zoomConfig.toMap());

  // Add any Firestore field values
  zoomConfig.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getZoomConfigListFirestoreData(
  List<ZoomConfigStruct>? zoomConfigs,
) =>
    zoomConfigs?.map((e) => getZoomConfigFirestoreData(e, true)).toList() ?? [];
