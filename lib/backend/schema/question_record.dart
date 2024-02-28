import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionRecord extends FirestoreRecord {
  QuestionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "formRef" field.
  DocumentReference? _formRef;
  DocumentReference? get formRef => _formRef;
  bool hasFormRef() => _formRef != null;

  // "serialNum" field.
  int? _serialNum;
  int get serialNum => _serialNum ?? 0;
  bool hasSerialNum() => _serialNum != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "questionType" field.
  String? _questionType;
  String get questionType => _questionType ?? '';
  bool hasQuestionType() => _questionType != null;

  // "rightAnswer" field.
  String? _rightAnswer;
  String get rightAnswer => _rightAnswer ?? '';
  bool hasRightAnswer() => _rightAnswer != null;

  // "answerList" field.
  List<String>? _answerList;
  List<String> get answerList => _answerList ?? const [];
  bool hasAnswerList() => _answerList != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _formRef = snapshotData['formRef'] as DocumentReference?;
    _serialNum = castToType<int>(snapshotData['serialNum']);
    _question = snapshotData['question'] as String?;
    _questionType = snapshotData['questionType'] as String?;
    _rightAnswer = snapshotData['rightAnswer'] as String?;
    _answerList = getDataList(snapshotData['answerList']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('question');

  static Stream<QuestionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionRecord.fromSnapshot(s));

  static Future<QuestionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionRecord.fromSnapshot(s));

  static QuestionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionRecordData({
  DocumentReference? formRef,
  int? serialNum,
  String? question,
  String? questionType,
  String? rightAnswer,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'formRef': formRef,
      'serialNum': serialNum,
      'question': question,
      'questionType': questionType,
      'rightAnswer': rightAnswer,
      'status': status,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionRecordDocumentEquality implements Equality<QuestionRecord> {
  const QuestionRecordDocumentEquality();

  @override
  bool equals(QuestionRecord? e1, QuestionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.formRef == e2?.formRef &&
        e1?.serialNum == e2?.serialNum &&
        e1?.question == e2?.question &&
        e1?.questionType == e2?.questionType &&
        e1?.rightAnswer == e2?.rightAnswer &&
        listEquality.equals(e1?.answerList, e2?.answerList) &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(QuestionRecord? e) => const ListEquality().hash([
        e?.formRef,
        e?.serialNum,
        e?.question,
        e?.questionType,
        e?.rightAnswer,
        e?.answerList,
        e?.status,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionRecord;
}
