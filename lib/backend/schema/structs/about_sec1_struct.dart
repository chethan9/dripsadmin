// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutSec1Struct extends FFFirebaseStruct {
  AboutSec1Struct({
    String? image,
    String? title,
    String? subtitle,
    String? bio,
    String? bName,
    String? bLink,
    List<String>? gallery,
    String? video,
    TranslateStruct? bioManualTranslate,
    TranslateStruct? titleManualTranslate,
    TranslateStruct? subtitleManualTranslate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        _subtitle = subtitle,
        _bio = bio,
        _bName = bName,
        _bLink = bLink,
        _gallery = gallery,
        _video = video,
        _bioManualTranslate = bioManualTranslate,
        _titleManualTranslate = titleManualTranslate,
        _subtitleManualTranslate = subtitleManualTranslate,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

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

  // "bName" field.
  String? _bName;
  String get bName => _bName ?? '';
  set bName(String? val) => _bName = val;
  bool hasBName() => _bName != null;

  // "bLink" field.
  String? _bLink;
  String get bLink => _bLink ?? '';
  set bLink(String? val) => _bLink = val;
  bool hasBLink() => _bLink != null;

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  set gallery(List<String>? val) => _gallery = val;
  void updateGallery(Function(List<String>) updateFn) =>
      updateFn(_gallery ??= []);
  bool hasGallery() => _gallery != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;
  bool hasVideo() => _video != null;

  // "bioManualTranslate" field.
  TranslateStruct? _bioManualTranslate;
  TranslateStruct get bioManualTranslate =>
      _bioManualTranslate ?? TranslateStruct();
  set bioManualTranslate(TranslateStruct? val) => _bioManualTranslate = val;
  void updateBioManualTranslate(Function(TranslateStruct) updateFn) =>
      updateFn(_bioManualTranslate ??= TranslateStruct());
  bool hasBioManualTranslate() => _bioManualTranslate != null;

  // "titleManualTranslate" field.
  TranslateStruct? _titleManualTranslate;
  TranslateStruct get titleManualTranslate =>
      _titleManualTranslate ?? TranslateStruct();
  set titleManualTranslate(TranslateStruct? val) => _titleManualTranslate = val;
  void updateTitleManualTranslate(Function(TranslateStruct) updateFn) =>
      updateFn(_titleManualTranslate ??= TranslateStruct());
  bool hasTitleManualTranslate() => _titleManualTranslate != null;

  // "subtitleManualTranslate" field.
  TranslateStruct? _subtitleManualTranslate;
  TranslateStruct get subtitleManualTranslate =>
      _subtitleManualTranslate ?? TranslateStruct();
  set subtitleManualTranslate(TranslateStruct? val) =>
      _subtitleManualTranslate = val;
  void updateSubtitleManualTranslate(Function(TranslateStruct) updateFn) =>
      updateFn(_subtitleManualTranslate ??= TranslateStruct());
  bool hasSubtitleManualTranslate() => _subtitleManualTranslate != null;

  static AboutSec1Struct fromMap(Map<String, dynamic> data) => AboutSec1Struct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        bio: data['bio'] as String?,
        bName: data['bName'] as String?,
        bLink: data['bLink'] as String?,
        gallery: getDataList(data['gallery']),
        video: data['video'] as String?,
        bioManualTranslate:
            TranslateStruct.maybeFromMap(data['bioManualTranslate']),
        titleManualTranslate:
            TranslateStruct.maybeFromMap(data['titleManualTranslate']),
        subtitleManualTranslate:
            TranslateStruct.maybeFromMap(data['subtitleManualTranslate']),
      );

  static AboutSec1Struct? maybeFromMap(dynamic data) => data is Map
      ? AboutSec1Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'subtitle': _subtitle,
        'bio': _bio,
        'bName': _bName,
        'bLink': _bLink,
        'gallery': _gallery,
        'video': _video,
        'bioManualTranslate': _bioManualTranslate?.toMap(),
        'titleManualTranslate': _titleManualTranslate?.toMap(),
        'subtitleManualTranslate': _subtitleManualTranslate?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
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
        'bName': serializeParam(
          _bName,
          ParamType.String,
        ),
        'bLink': serializeParam(
          _bLink,
          ParamType.String,
        ),
        'gallery': serializeParam(
          _gallery,
          ParamType.String,
          true,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
        'bioManualTranslate': serializeParam(
          _bioManualTranslate,
          ParamType.DataStruct,
        ),
        'titleManualTranslate': serializeParam(
          _titleManualTranslate,
          ParamType.DataStruct,
        ),
        'subtitleManualTranslate': serializeParam(
          _subtitleManualTranslate,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AboutSec1Struct fromSerializableMap(Map<String, dynamic> data) =>
      AboutSec1Struct(
        image: deserializeParam(
          data['image'],
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
        bName: deserializeParam(
          data['bName'],
          ParamType.String,
          false,
        ),
        bLink: deserializeParam(
          data['bLink'],
          ParamType.String,
          false,
        ),
        gallery: deserializeParam<String>(
          data['gallery'],
          ParamType.String,
          true,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
        bioManualTranslate: deserializeStructParam(
          data['bioManualTranslate'],
          ParamType.DataStruct,
          false,
          structBuilder: TranslateStruct.fromSerializableMap,
        ),
        titleManualTranslate: deserializeStructParam(
          data['titleManualTranslate'],
          ParamType.DataStruct,
          false,
          structBuilder: TranslateStruct.fromSerializableMap,
        ),
        subtitleManualTranslate: deserializeStructParam(
          data['subtitleManualTranslate'],
          ParamType.DataStruct,
          false,
          structBuilder: TranslateStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AboutSec1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AboutSec1Struct &&
        image == other.image &&
        title == other.title &&
        subtitle == other.subtitle &&
        bio == other.bio &&
        bName == other.bName &&
        bLink == other.bLink &&
        listEquality.equals(gallery, other.gallery) &&
        video == other.video &&
        bioManualTranslate == other.bioManualTranslate &&
        titleManualTranslate == other.titleManualTranslate &&
        subtitleManualTranslate == other.subtitleManualTranslate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        image,
        title,
        subtitle,
        bio,
        bName,
        bLink,
        gallery,
        video,
        bioManualTranslate,
        titleManualTranslate,
        subtitleManualTranslate
      ]);
}

AboutSec1Struct createAboutSec1Struct({
  String? image,
  String? title,
  String? subtitle,
  String? bio,
  String? bName,
  String? bLink,
  String? video,
  TranslateStruct? bioManualTranslate,
  TranslateStruct? titleManualTranslate,
  TranslateStruct? subtitleManualTranslate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AboutSec1Struct(
      image: image,
      title: title,
      subtitle: subtitle,
      bio: bio,
      bName: bName,
      bLink: bLink,
      video: video,
      bioManualTranslate:
          bioManualTranslate ?? (clearUnsetFields ? TranslateStruct() : null),
      titleManualTranslate:
          titleManualTranslate ?? (clearUnsetFields ? TranslateStruct() : null),
      subtitleManualTranslate: subtitleManualTranslate ??
          (clearUnsetFields ? TranslateStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AboutSec1Struct? updateAboutSec1Struct(
  AboutSec1Struct? aboutSec1, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aboutSec1
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAboutSec1StructData(
  Map<String, dynamic> firestoreData,
  AboutSec1Struct? aboutSec1,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aboutSec1 == null) {
    return;
  }
  if (aboutSec1.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aboutSec1.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aboutSec1Data = getAboutSec1FirestoreData(aboutSec1, forFieldValue);
  final nestedData = aboutSec1Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aboutSec1.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAboutSec1FirestoreData(
  AboutSec1Struct? aboutSec1, [
  bool forFieldValue = false,
]) {
  if (aboutSec1 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aboutSec1.toMap());

  // Handle nested data for "bioManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    aboutSec1.hasBioManualTranslate() ? aboutSec1.bioManualTranslate : null,
    'bioManualTranslate',
    forFieldValue,
  );

  // Handle nested data for "titleManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    aboutSec1.hasTitleManualTranslate() ? aboutSec1.titleManualTranslate : null,
    'titleManualTranslate',
    forFieldValue,
  );

  // Handle nested data for "subtitleManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    aboutSec1.hasSubtitleManualTranslate()
        ? aboutSec1.subtitleManualTranslate
        : null,
    'subtitleManualTranslate',
    forFieldValue,
  );

  // Add any Firestore field values
  aboutSec1.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAboutSec1ListFirestoreData(
  List<AboutSec1Struct>? aboutSec1s,
) =>
    aboutSec1s?.map((e) => getAboutSec1FirestoreData(e, true)).toList() ?? [];
