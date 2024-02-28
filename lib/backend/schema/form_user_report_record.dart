import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormUserReportRecord extends FirestoreRecord {
  FormUserReportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "userPhone" field.
  String? _userPhone;
  String get userPhone => _userPhone ?? '';
  bool hasUserPhone() => _userPhone != null;

  // "formRef" field.
  DocumentReference? _formRef;
  DocumentReference? get formRef => _formRef;
  bool hasFormRef() => _formRef != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "totalScore" field.
  int? _totalScore;
  int get totalScore => _totalScore ?? 0;
  bool hasTotalScore() => _totalScore != null;

  // "scoreLevelInfo" field.
  String? _scoreLevelInfo;
  String get scoreLevelInfo => _scoreLevelInfo ?? '';
  bool hasScoreLevelInfo() => _scoreLevelInfo != null;

  void _initializeFields() {
    _userName = snapshotData['userName'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _userPhone = snapshotData['userPhone'] as String?;
    _formRef = snapshotData['formRef'] as DocumentReference?;
    _score = castToType<int>(snapshotData['score']);
    _totalScore = castToType<int>(snapshotData['totalScore']);
    _scoreLevelInfo = snapshotData['scoreLevelInfo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formUserReport');

  static Stream<FormUserReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormUserReportRecord.fromSnapshot(s));

  static Future<FormUserReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormUserReportRecord.fromSnapshot(s));

  static FormUserReportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormUserReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormUserReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormUserReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormUserReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormUserReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormUserReportRecordData({
  String? userName,
  String? userEmail,
  String? userPhone,
  DocumentReference? formRef,
  int? score,
  int? totalScore,
  String? scoreLevelInfo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'userEmail': userEmail,
      'userPhone': userPhone,
      'formRef': formRef,
      'score': score,
      'totalScore': totalScore,
      'scoreLevelInfo': scoreLevelInfo,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormUserReportRecordDocumentEquality
    implements Equality<FormUserReportRecord> {
  const FormUserReportRecordDocumentEquality();

  @override
  bool equals(FormUserReportRecord? e1, FormUserReportRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userEmail == e2?.userEmail &&
        e1?.userPhone == e2?.userPhone &&
        e1?.formRef == e2?.formRef &&
        e1?.score == e2?.score &&
        e1?.totalScore == e2?.totalScore &&
        e1?.scoreLevelInfo == e2?.scoreLevelInfo;
  }

  @override
  int hash(FormUserReportRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.userEmail,
        e?.userPhone,
        e?.formRef,
        e?.score,
        e?.totalScore,
        e?.scoreLevelInfo
      ]);

  @override
  bool isValidKey(Object? o) => o is FormUserReportRecord;
}
