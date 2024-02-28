// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralStruct extends FFFirebaseStruct {
  GeneralStruct({
    String? address,
    String? phone,
    String? whatsapp,
    String? gmapLink,
    String? fbLink,
    String? instaLink,
    String? inLink,
    String? email,
    TranslateStruct? addressManualTranslate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        _phone = phone,
        _whatsapp = whatsapp,
        _gmapLink = gmapLink,
        _fbLink = fbLink,
        _instaLink = instaLink,
        _inLink = inLink,
        _email = email,
        _addressManualTranslate = addressManualTranslate,
        super(firestoreUtilData);

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  set whatsapp(String? val) => _whatsapp = val;
  bool hasWhatsapp() => _whatsapp != null;

  // "gmapLink" field.
  String? _gmapLink;
  String get gmapLink => _gmapLink ?? '';
  set gmapLink(String? val) => _gmapLink = val;
  bool hasGmapLink() => _gmapLink != null;

  // "fbLink" field.
  String? _fbLink;
  String get fbLink => _fbLink ?? '';
  set fbLink(String? val) => _fbLink = val;
  bool hasFbLink() => _fbLink != null;

  // "instaLink" field.
  String? _instaLink;
  String get instaLink => _instaLink ?? '';
  set instaLink(String? val) => _instaLink = val;
  bool hasInstaLink() => _instaLink != null;

  // "inLink" field.
  String? _inLink;
  String get inLink => _inLink ?? '';
  set inLink(String? val) => _inLink = val;
  bool hasInLink() => _inLink != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "addressManualTranslate" field.
  TranslateStruct? _addressManualTranslate;
  TranslateStruct get addressManualTranslate =>
      _addressManualTranslate ?? TranslateStruct();
  set addressManualTranslate(TranslateStruct? val) =>
      _addressManualTranslate = val;
  void updateAddressManualTranslate(Function(TranslateStruct) updateFn) =>
      updateFn(_addressManualTranslate ??= TranslateStruct());
  bool hasAddressManualTranslate() => _addressManualTranslate != null;

  static GeneralStruct fromMap(Map<String, dynamic> data) => GeneralStruct(
        address: data['address'] as String?,
        phone: data['phone'] as String?,
        whatsapp: data['whatsapp'] as String?,
        gmapLink: data['gmapLink'] as String?,
        fbLink: data['fbLink'] as String?,
        instaLink: data['instaLink'] as String?,
        inLink: data['inLink'] as String?,
        email: data['email'] as String?,
        addressManualTranslate:
            TranslateStruct.maybeFromMap(data['addressManualTranslate']),
      );

  static GeneralStruct? maybeFromMap(dynamic data) =>
      data is Map ? GeneralStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
        'phone': _phone,
        'whatsapp': _whatsapp,
        'gmapLink': _gmapLink,
        'fbLink': _fbLink,
        'instaLink': _instaLink,
        'inLink': _inLink,
        'email': _email,
        'addressManualTranslate': _addressManualTranslate?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'whatsapp': serializeParam(
          _whatsapp,
          ParamType.String,
        ),
        'gmapLink': serializeParam(
          _gmapLink,
          ParamType.String,
        ),
        'fbLink': serializeParam(
          _fbLink,
          ParamType.String,
        ),
        'instaLink': serializeParam(
          _instaLink,
          ParamType.String,
        ),
        'inLink': serializeParam(
          _inLink,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'addressManualTranslate': serializeParam(
          _addressManualTranslate,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GeneralStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeneralStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        whatsapp: deserializeParam(
          data['whatsapp'],
          ParamType.String,
          false,
        ),
        gmapLink: deserializeParam(
          data['gmapLink'],
          ParamType.String,
          false,
        ),
        fbLink: deserializeParam(
          data['fbLink'],
          ParamType.String,
          false,
        ),
        instaLink: deserializeParam(
          data['instaLink'],
          ParamType.String,
          false,
        ),
        inLink: deserializeParam(
          data['inLink'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        addressManualTranslate: deserializeStructParam(
          data['addressManualTranslate'],
          ParamType.DataStruct,
          false,
          structBuilder: TranslateStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GeneralStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeneralStruct &&
        address == other.address &&
        phone == other.phone &&
        whatsapp == other.whatsapp &&
        gmapLink == other.gmapLink &&
        fbLink == other.fbLink &&
        instaLink == other.instaLink &&
        inLink == other.inLink &&
        email == other.email &&
        addressManualTranslate == other.addressManualTranslate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        address,
        phone,
        whatsapp,
        gmapLink,
        fbLink,
        instaLink,
        inLink,
        email,
        addressManualTranslate
      ]);
}

GeneralStruct createGeneralStruct({
  String? address,
  String? phone,
  String? whatsapp,
  String? gmapLink,
  String? fbLink,
  String? instaLink,
  String? inLink,
  String? email,
  TranslateStruct? addressManualTranslate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GeneralStruct(
      address: address,
      phone: phone,
      whatsapp: whatsapp,
      gmapLink: gmapLink,
      fbLink: fbLink,
      instaLink: instaLink,
      inLink: inLink,
      email: email,
      addressManualTranslate: addressManualTranslate ??
          (clearUnsetFields ? TranslateStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GeneralStruct? updateGeneralStruct(
  GeneralStruct? general, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    general
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGeneralStructData(
  Map<String, dynamic> firestoreData,
  GeneralStruct? general,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (general == null) {
    return;
  }
  if (general.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && general.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final generalData = getGeneralFirestoreData(general, forFieldValue);
  final nestedData = generalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = general.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGeneralFirestoreData(
  GeneralStruct? general, [
  bool forFieldValue = false,
]) {
  if (general == null) {
    return {};
  }
  final firestoreData = mapToFirestore(general.toMap());

  // Handle nested data for "addressManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    general.hasAddressManualTranslate() ? general.addressManualTranslate : null,
    'addressManualTranslate',
    forFieldValue,
  );

  // Add any Firestore field values
  general.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGeneralListFirestoreData(
  List<GeneralStruct>? generals,
) =>
    generals?.map((e) => getGeneralFirestoreData(e, true)).toList() ?? [];
