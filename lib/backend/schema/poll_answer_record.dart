import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollAnswerRecord extends FirestoreRecord {
  PollAnswerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pollRef" field.
  DocumentReference? _pollRef;
  DocumentReference? get pollRef => _pollRef;
  bool hasPollRef() => _pollRef != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "answerAutoTranslate" field.
  TranslateStruct? _answerAutoTranslate;
  TranslateStruct get answerAutoTranslate =>
      _answerAutoTranslate ?? TranslateStruct();
  bool hasAnswerAutoTranslate() => _answerAutoTranslate != null;

  // "answerManualTranslate" field.
  TranslateStruct? _answerManualTranslate;
  TranslateStruct get answerManualTranslate =>
      _answerManualTranslate ?? TranslateStruct();
  bool hasAnswerManualTranslate() => _answerManualTranslate != null;

  void _initializeFields() {
    _pollRef = snapshotData['pollRef'] as DocumentReference?;
    _answer = snapshotData['answer'] as String?;
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
    _answerAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['answerAutoTranslate']);
    _answerManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['answerManualTranslate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pollAnswer');

  static Stream<PollAnswerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PollAnswerRecord.fromSnapshot(s));

  static Future<PollAnswerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PollAnswerRecord.fromSnapshot(s));

  static PollAnswerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PollAnswerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PollAnswerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PollAnswerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PollAnswerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PollAnswerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPollAnswerRecordData({
  DocumentReference? pollRef,
  String? answer,
  String? image,
  String? video,
  TranslateStruct? answerAutoTranslate,
  TranslateStruct? answerManualTranslate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pollRef': pollRef,
      'answer': answer,
      'image': image,
      'video': video,
      'answerAutoTranslate': TranslateStruct().toMap(),
      'answerManualTranslate': TranslateStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "answerAutoTranslate" field.
  addTranslateStructData(
      firestoreData, answerAutoTranslate, 'answerAutoTranslate');

  // Handle nested data for "answerManualTranslate" field.
  addTranslateStructData(
      firestoreData, answerManualTranslate, 'answerManualTranslate');

  return firestoreData;
}

class PollAnswerRecordDocumentEquality implements Equality<PollAnswerRecord> {
  const PollAnswerRecordDocumentEquality();

  @override
  bool equals(PollAnswerRecord? e1, PollAnswerRecord? e2) {
    return e1?.pollRef == e2?.pollRef &&
        e1?.answer == e2?.answer &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video &&
        e1?.answerAutoTranslate == e2?.answerAutoTranslate &&
        e1?.answerManualTranslate == e2?.answerManualTranslate;
  }

  @override
  int hash(PollAnswerRecord? e) => const ListEquality().hash([
        e?.pollRef,
        e?.answer,
        e?.image,
        e?.video,
        e?.answerAutoTranslate,
        e?.answerManualTranslate
      ]);

  @override
  bool isValidKey(Object? o) => o is PollAnswerRecord;
}
