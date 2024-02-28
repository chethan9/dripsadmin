// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnBoardStruct extends FFFirebaseStruct {
  OnBoardStruct({
    String? logo,
    String? title,
    String? subtitle,
    bool? bgImageStatus,
    String? bgImage,
    Color? bgColor,
    bool? logoTitleReplaceStatus,
    List<String>? gallery,
    TranslateStruct? titleManualTranslate,
    TranslateStruct? subtitleManualTranslate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _logo = logo,
        _title = title,
        _subtitle = subtitle,
        _bgImageStatus = bgImageStatus,
        _bgImage = bgImage,
        _bgColor = bgColor,
        _logoTitleReplaceStatus = logoTitleReplaceStatus,
        _gallery = gallery,
        _titleManualTranslate = titleManualTranslate,
        _subtitleManualTranslate = subtitleManualTranslate,
        super(firestoreUtilData);

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

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

  // "bgImageStatus" field.
  bool? _bgImageStatus;
  bool get bgImageStatus => _bgImageStatus ?? false;
  set bgImageStatus(bool? val) => _bgImageStatus = val;
  bool hasBgImageStatus() => _bgImageStatus != null;

  // "bgImage" field.
  String? _bgImage;
  String get bgImage => _bgImage ?? '';
  set bgImage(String? val) => _bgImage = val;
  bool hasBgImage() => _bgImage != null;

  // "bgColor" field.
  Color? _bgColor;
  Color? get bgColor => _bgColor;
  set bgColor(Color? val) => _bgColor = val;
  bool hasBgColor() => _bgColor != null;

  // "logoTitleReplaceStatus" field.
  bool? _logoTitleReplaceStatus;
  bool get logoTitleReplaceStatus => _logoTitleReplaceStatus ?? false;
  set logoTitleReplaceStatus(bool? val) => _logoTitleReplaceStatus = val;
  bool hasLogoTitleReplaceStatus() => _logoTitleReplaceStatus != null;

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  set gallery(List<String>? val) => _gallery = val;
  void updateGallery(Function(List<String>) updateFn) =>
      updateFn(_gallery ??= []);
  bool hasGallery() => _gallery != null;

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

  static OnBoardStruct fromMap(Map<String, dynamic> data) => OnBoardStruct(
        logo: data['logo'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        bgImageStatus: data['bgImageStatus'] as bool?,
        bgImage: data['bgImage'] as String?,
        bgColor: getSchemaColor(data['bgColor']),
        logoTitleReplaceStatus: data['logoTitleReplaceStatus'] as bool?,
        gallery: getDataList(data['gallery']),
        titleManualTranslate:
            TranslateStruct.maybeFromMap(data['titleManualTranslate']),
        subtitleManualTranslate:
            TranslateStruct.maybeFromMap(data['subtitleManualTranslate']),
      );

  static OnBoardStruct? maybeFromMap(dynamic data) =>
      data is Map ? OnBoardStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'logo': _logo,
        'title': _title,
        'subtitle': _subtitle,
        'bgImageStatus': _bgImageStatus,
        'bgImage': _bgImage,
        'bgColor': _bgColor,
        'logoTitleReplaceStatus': _logoTitleReplaceStatus,
        'gallery': _gallery,
        'titleManualTranslate': _titleManualTranslate?.toMap(),
        'subtitleManualTranslate': _subtitleManualTranslate?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logo': serializeParam(
          _logo,
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
        'bgImageStatus': serializeParam(
          _bgImageStatus,
          ParamType.bool,
        ),
        'bgImage': serializeParam(
          _bgImage,
          ParamType.String,
        ),
        'bgColor': serializeParam(
          _bgColor,
          ParamType.Color,
        ),
        'logoTitleReplaceStatus': serializeParam(
          _logoTitleReplaceStatus,
          ParamType.bool,
        ),
        'gallery': serializeParam(
          _gallery,
          ParamType.String,
          true,
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

  static OnBoardStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnBoardStruct(
        logo: deserializeParam(
          data['logo'],
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
        bgImageStatus: deserializeParam(
          data['bgImageStatus'],
          ParamType.bool,
          false,
        ),
        bgImage: deserializeParam(
          data['bgImage'],
          ParamType.String,
          false,
        ),
        bgColor: deserializeParam(
          data['bgColor'],
          ParamType.Color,
          false,
        ),
        logoTitleReplaceStatus: deserializeParam(
          data['logoTitleReplaceStatus'],
          ParamType.bool,
          false,
        ),
        gallery: deserializeParam<String>(
          data['gallery'],
          ParamType.String,
          true,
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
  String toString() => 'OnBoardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OnBoardStruct &&
        logo == other.logo &&
        title == other.title &&
        subtitle == other.subtitle &&
        bgImageStatus == other.bgImageStatus &&
        bgImage == other.bgImage &&
        bgColor == other.bgColor &&
        logoTitleReplaceStatus == other.logoTitleReplaceStatus &&
        listEquality.equals(gallery, other.gallery) &&
        titleManualTranslate == other.titleManualTranslate &&
        subtitleManualTranslate == other.subtitleManualTranslate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        logo,
        title,
        subtitle,
        bgImageStatus,
        bgImage,
        bgColor,
        logoTitleReplaceStatus,
        gallery,
        titleManualTranslate,
        subtitleManualTranslate
      ]);
}

OnBoardStruct createOnBoardStruct({
  String? logo,
  String? title,
  String? subtitle,
  bool? bgImageStatus,
  String? bgImage,
  Color? bgColor,
  bool? logoTitleReplaceStatus,
  TranslateStruct? titleManualTranslate,
  TranslateStruct? subtitleManualTranslate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnBoardStruct(
      logo: logo,
      title: title,
      subtitle: subtitle,
      bgImageStatus: bgImageStatus,
      bgImage: bgImage,
      bgColor: bgColor,
      logoTitleReplaceStatus: logoTitleReplaceStatus,
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

OnBoardStruct? updateOnBoardStruct(
  OnBoardStruct? onBoard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onBoard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnBoardStructData(
  Map<String, dynamic> firestoreData,
  OnBoardStruct? onBoard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onBoard == null) {
    return;
  }
  if (onBoard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && onBoard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onBoardData = getOnBoardFirestoreData(onBoard, forFieldValue);
  final nestedData = onBoardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = onBoard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnBoardFirestoreData(
  OnBoardStruct? onBoard, [
  bool forFieldValue = false,
]) {
  if (onBoard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onBoard.toMap());

  // Handle nested data for "titleManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    onBoard.hasTitleManualTranslate() ? onBoard.titleManualTranslate : null,
    'titleManualTranslate',
    forFieldValue,
  );

  // Handle nested data for "subtitleManualTranslate" field.
  addTranslateStructData(
    firestoreData,
    onBoard.hasSubtitleManualTranslate()
        ? onBoard.subtitleManualTranslate
        : null,
    'subtitleManualTranslate',
    forFieldValue,
  );

  // Add any Firestore field values
  onBoard.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnBoardListFirestoreData(
  List<OnBoardStruct>? onBoards,
) =>
    onBoards?.map((e) => getOnBoardFirestoreData(e, true)).toList() ?? [];
