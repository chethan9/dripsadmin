// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstructorCourseLevelStruct extends FFFirebaseStruct {
  InstructorCourseLevelStruct({
    DocumentReference? coutryRef,
    DocumentReference? universityRef,
    DocumentReference? branchRef,
    String? countryName,
    String? universityName,
    String? branchName,
    DocumentReference? categoryRef,
    String? categoryName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _coutryRef = coutryRef,
        _universityRef = universityRef,
        _branchRef = branchRef,
        _countryName = countryName,
        _universityName = universityName,
        _branchName = branchName,
        _categoryRef = categoryRef,
        _categoryName = categoryName,
        super(firestoreUtilData);

  // "coutryRef" field.
  DocumentReference? _coutryRef;
  DocumentReference? get coutryRef => _coutryRef;
  set coutryRef(DocumentReference? val) => _coutryRef = val;
  bool hasCoutryRef() => _coutryRef != null;

  // "universityRef" field.
  DocumentReference? _universityRef;
  DocumentReference? get universityRef => _universityRef;
  set universityRef(DocumentReference? val) => _universityRef = val;
  bool hasUniversityRef() => _universityRef != null;

  // "branchRef" field.
  DocumentReference? _branchRef;
  DocumentReference? get branchRef => _branchRef;
  set branchRef(DocumentReference? val) => _branchRef = val;
  bool hasBranchRef() => _branchRef != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;
  bool hasCountryName() => _countryName != null;

  // "universityName" field.
  String? _universityName;
  String get universityName => _universityName ?? '';
  set universityName(String? val) => _universityName = val;
  bool hasUniversityName() => _universityName != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  set branchName(String? val) => _branchName = val;
  bool hasBranchName() => _branchName != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  set categoryRef(DocumentReference? val) => _categoryRef = val;
  bool hasCategoryRef() => _categoryRef != null;

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;
  bool hasCategoryName() => _categoryName != null;

  static InstructorCourseLevelStruct fromMap(Map<String, dynamic> data) =>
      InstructorCourseLevelStruct(
        coutryRef: data['coutryRef'] as DocumentReference?,
        universityRef: data['universityRef'] as DocumentReference?,
        branchRef: data['branchRef'] as DocumentReference?,
        countryName: data['countryName'] as String?,
        universityName: data['universityName'] as String?,
        branchName: data['branchName'] as String?,
        categoryRef: data['categoryRef'] as DocumentReference?,
        categoryName: data['categoryName'] as String?,
      );

  static InstructorCourseLevelStruct? maybeFromMap(dynamic data) => data is Map
      ? InstructorCourseLevelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'coutryRef': _coutryRef,
        'universityRef': _universityRef,
        'branchRef': _branchRef,
        'countryName': _countryName,
        'universityName': _universityName,
        'branchName': _branchName,
        'categoryRef': _categoryRef,
        'categoryName': _categoryName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'coutryRef': serializeParam(
          _coutryRef,
          ParamType.DocumentReference,
        ),
        'universityRef': serializeParam(
          _universityRef,
          ParamType.DocumentReference,
        ),
        'branchRef': serializeParam(
          _branchRef,
          ParamType.DocumentReference,
        ),
        'countryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'universityName': serializeParam(
          _universityName,
          ParamType.String,
        ),
        'branchName': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'categoryRef': serializeParam(
          _categoryRef,
          ParamType.DocumentReference,
        ),
        'categoryName': serializeParam(
          _categoryName,
          ParamType.String,
        ),
      }.withoutNulls;

  static InstructorCourseLevelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InstructorCourseLevelStruct(
        coutryRef: deserializeParam(
          data['coutryRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['country'],
        ),
        universityRef: deserializeParam(
          data['universityRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['university'],
        ),
        branchRef: deserializeParam(
          data['branchRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['branch'],
        ),
        countryName: deserializeParam(
          data['countryName'],
          ParamType.String,
          false,
        ),
        universityName: deserializeParam(
          data['universityName'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['branchName'],
          ParamType.String,
          false,
        ),
        categoryRef: deserializeParam(
          data['categoryRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['category'],
        ),
        categoryName: deserializeParam(
          data['categoryName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InstructorCourseLevelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InstructorCourseLevelStruct &&
        coutryRef == other.coutryRef &&
        universityRef == other.universityRef &&
        branchRef == other.branchRef &&
        countryName == other.countryName &&
        universityName == other.universityName &&
        branchName == other.branchName &&
        categoryRef == other.categoryRef &&
        categoryName == other.categoryName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        coutryRef,
        universityRef,
        branchRef,
        countryName,
        universityName,
        branchName,
        categoryRef,
        categoryName
      ]);
}

InstructorCourseLevelStruct createInstructorCourseLevelStruct({
  DocumentReference? coutryRef,
  DocumentReference? universityRef,
  DocumentReference? branchRef,
  String? countryName,
  String? universityName,
  String? branchName,
  DocumentReference? categoryRef,
  String? categoryName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InstructorCourseLevelStruct(
      coutryRef: coutryRef,
      universityRef: universityRef,
      branchRef: branchRef,
      countryName: countryName,
      universityName: universityName,
      branchName: branchName,
      categoryRef: categoryRef,
      categoryName: categoryName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InstructorCourseLevelStruct? updateInstructorCourseLevelStruct(
  InstructorCourseLevelStruct? instructorCourseLevel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    instructorCourseLevel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInstructorCourseLevelStructData(
  Map<String, dynamic> firestoreData,
  InstructorCourseLevelStruct? instructorCourseLevel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (instructorCourseLevel == null) {
    return;
  }
  if (instructorCourseLevel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      instructorCourseLevel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final instructorCourseLevelData = getInstructorCourseLevelFirestoreData(
      instructorCourseLevel, forFieldValue);
  final nestedData =
      instructorCourseLevelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      instructorCourseLevel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInstructorCourseLevelFirestoreData(
  InstructorCourseLevelStruct? instructorCourseLevel, [
  bool forFieldValue = false,
]) {
  if (instructorCourseLevel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(instructorCourseLevel.toMap());

  // Add any Firestore field values
  instructorCourseLevel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInstructorCourseLevelListFirestoreData(
  List<InstructorCourseLevelStruct>? instructorCourseLevels,
) =>
    instructorCourseLevels
        ?.map((e) => getInstructorCourseLevelFirestoreData(e, true))
        .toList() ??
    [];
