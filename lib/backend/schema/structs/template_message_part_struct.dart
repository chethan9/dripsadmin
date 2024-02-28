// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateMessagePartStruct extends FFFirebaseStruct {
  TemplateMessagePartStruct({
    String? userName,
    String? userEmail,
    String? title,
    String? subtitle,
    String? bio,
    String? image,
    String? date,
    String? time,
    String? info1,
    String? info2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userName = userName,
        _userEmail = userEmail,
        _title = title,
        _subtitle = subtitle,
        _bio = bio,
        _image = image,
        _date = date,
        _time = time,
        _info1 = info1,
        _info2 = info2,
        super(firestoreUtilData);

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  set userEmail(String? val) => _userEmail = val;
  bool hasUserEmail() => _userEmail != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;
  bool hasSubtitle() => _subtitle != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;
  bool hasBio() => _bio != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;
  bool hasTime() => _time != null;

  // "info1" field.
  String? _info1;
  String get info1 => _info1 ?? '';
  set info1(String? val) => _info1 = val;
  bool hasInfo1() => _info1 != null;

  // "info2" field.
  String? _info2;
  String get info2 => _info2 ?? '';
  set info2(String? val) => _info2 = val;
  bool hasInfo2() => _info2 != null;

  static TemplateMessagePartStruct fromMap(Map<String, dynamic> data) =>
      TemplateMessagePartStruct(
        userName: data['userName'] as String?,
        userEmail: data['userEmail'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        bio: data['bio'] as String?,
        image: data['image'] as String?,
        date: data['date'] as String?,
        time: data['time'] as String?,
        info1: data['info1'] as String?,
        info2: data['info2'] as String?,
      );

  static TemplateMessagePartStruct? maybeFromMap(dynamic data) => data is Map
      ? TemplateMessagePartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
        'userEmail': _userEmail,
        'title': _title,
        'subtitle': _subtitle,
        'bio': _bio,
        'image': _image,
        'date': _date,
        'time': _time,
        'info1': _info1,
        'info2': _info2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'userEmail': serializeParam(
          _userEmail,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'info1': serializeParam(
          _info1,
          ParamType.String,
        ),
        'info2': serializeParam(
          _info2,
          ParamType.String,
        ),
      }.withoutNulls;

  static TemplateMessagePartStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TemplateMessagePartStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        userEmail: deserializeParam(
          data['userEmail'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        bio: deserializeParam(
          data['bio'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        info1: deserializeParam(
          data['info1'],
          ParamType.String,
          false,
        ),
        info2: deserializeParam(
          data['info2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TemplateMessagePartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TemplateMessagePartStruct &&
        userName == other.userName &&
        userEmail == other.userEmail &&
        title == other.title &&
        subtitle == other.subtitle &&
        bio == other.bio &&
        image == other.image &&
        date == other.date &&
        time == other.time &&
        info1 == other.info1 &&
        info2 == other.info2;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userName,
        userEmail,
        title,
        subtitle,
        bio,
        image,
        date,
        time,
        info1,
        info2
      ]);
}

TemplateMessagePartStruct createTemplateMessagePartStruct({
  String? userName,
  String? userEmail,
  String? title,
  String? subtitle,
  String? bio,
  String? image,
  String? date,
  String? time,
  String? info1,
  String? info2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TemplateMessagePartStruct(
      userName: userName,
      userEmail: userEmail,
      title: title,
      subtitle: subtitle,
      bio: bio,
      image: image,
      date: date,
      time: time,
      info1: info1,
      info2: info2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TemplateMessagePartStruct? updateTemplateMessagePartStruct(
  TemplateMessagePartStruct? templateMessagePart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    templateMessagePart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTemplateMessagePartStructData(
  Map<String, dynamic> firestoreData,
  TemplateMessagePartStruct? templateMessagePart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (templateMessagePart == null) {
    return;
  }
  if (templateMessagePart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && templateMessagePart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final templateMessagePartData =
      getTemplateMessagePartFirestoreData(templateMessagePart, forFieldValue);
  final nestedData =
      templateMessagePartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      templateMessagePart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTemplateMessagePartFirestoreData(
  TemplateMessagePartStruct? templateMessagePart, [
  bool forFieldValue = false,
]) {
  if (templateMessagePart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(templateMessagePart.toMap());

  // Add any Firestore field values
  templateMessagePart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTemplateMessagePartListFirestoreData(
  List<TemplateMessagePartStruct>? templateMessageParts,
) =>
    templateMessageParts
        ?.map((e) => getTemplateMessagePartFirestoreData(e, true))
        .toList() ??
    [];
