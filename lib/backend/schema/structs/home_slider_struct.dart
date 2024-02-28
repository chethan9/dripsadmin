// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeSliderStruct extends FFFirebaseStruct {
  HomeSliderStruct({
    String? title,
    String? subtitle,
    String? bName,
    String? image,
    String? video,
    TranslateStruct? titleManualTranslate,
    TranslateStruct? subtitleManualTranslate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _subtitle = subtitle,
        _bName = bName,
        _image = image,
        _video = video,
        _titleManualTranslate = titleManualTranslate,
        _subtitleManualTranslate = subtitleManualTranslate,
        super(firestoreUtilData);

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

  // "bName" field.
  String? _bName;
  String get bName => _bName ?? '';
  set bName(String? val) => _bName = val;
  bool hasBName() => _bName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;
  bool hasVideo() => _video != null;

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

  static HomeSliderStruct fromMap(Map<String, dynamic> data) =>
      HomeSliderStruct(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        bName: data['bName'] as String?,
        image: data['image'] as String?,
        video: data['video'] as String?,
        titleManualTranslate:
            TranslateStruct.maybeFromMap(data['titleManualTranslate']),
        subtitleManualTranslate:
            TranslateStruct.maybeFromMap(data['subtitleManualTranslate']),
      );

  static HomeSliderStruct? maybeFromMap(dynamic data) => data is Map
      ? HomeSliderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subtitle': _subtitle,
        'bName': _bName,
        'image': _image,
        'video': _video,
        'titleManualTranslate': _titleManualTranslate?.toMap(),
        'subtitleManualTranslate': _subtitleManualTranslate?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'bName': serializeParam(
          _bName,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
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

  static HomeSliderStruct fromSerializableMap(Map<String, dynamic> data) =>
      HomeSliderStruct(
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
        bName: deserializeParam(
          data['bName'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
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
  String toString() => 'HomeSliderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HomeSliderStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        bName == other.bName &&
        image == other.image &&
        video == other.video &&
        titleManualTranslate == other.titleManualTranslate &&
        subtitleManualTranslate == other.subtitleManualTranslate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        subtitle,
        bName,
        image,
        video,
        titleManualTranslate,
        subtitleManualTranslate
      ]);
}

HomeSliderStruct createHomeSliderStruct({
  String? title,
  String? subtitle,
  String? bName,
  String? image,
  String? video,
  TranslateStruct? titleManualTranslate,
  TranslateStruct? subtitleManualTranslate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HomeSliderStruct(
      title: title,
      subtitle: subtitle,
      bName: bName,
      image: image,
      video: video,
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

HomeSliderStruct? updateHomeSliderStruct(
  HomeSliderStruct? homeSlider, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    homeSlider
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHomeSliderStructData(
  Map<String, dynamic> firestoreData,
  HomeSliderStruct? homeSlider,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (homeSlider == null) {
    return;
  }
  if (homeSlider.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && homeSlider.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final homeSliderData = getHomeSliderFirestoreData(homeSlider, forFieldValue);
  final nestedData = homeSliderData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = homeSlider.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHomeSliderFirestoreData(
  HomeSliderStruct? homeSlider, [
  bool forFieldValue = false,
]) {
  if (homeSlider == null) {
    return {};
  }
  final firestoreData = mapToFirestore(homeSlider.toMap());

  // Handle nested data for "titleManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    homeSlider.hasTitleManualTranslate()
        ? homeSlider.titleManualTranslate
        : null,
    'titleManualTranslate',
    forFieldValue,
  );

  // Handle nested data for "subtitleManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    homeSlider.hasSubtitleManualTranslate()
        ? homeSlider.subtitleManualTranslate
        : null,
    'subtitleManualTranslate',
    forFieldValue,
  );

  // Add any Firestore field values
  homeSlider.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHomeSliderListFirestoreData(
  List<HomeSliderStruct>? homeSliders,
) =>
    homeSliders?.map((e) => getHomeSliderFirestoreData(e, true)).toList() ?? [];
