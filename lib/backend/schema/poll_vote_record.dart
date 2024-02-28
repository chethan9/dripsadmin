import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollVoteRecord extends FirestoreRecord {
  PollVoteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pollRef" field.
  DocumentReference? _pollRef;
  DocumentReference? get pollRef => _pollRef;
  bool hasPollRef() => _pollRef != null;

  // "pollAnswerRef" field.
  DocumentReference? _pollAnswerRef;
  DocumentReference? get pollAnswerRef => _pollAnswerRef;
  bool hasPollAnswerRef() => _pollAnswerRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _pollRef = snapshotData['pollRef'] as DocumentReference?;
    _pollAnswerRef = snapshotData['pollAnswerRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pollVote');

  static Stream<PollVoteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PollVoteRecord.fromSnapshot(s));

  static Future<PollVoteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PollVoteRecord.fromSnapshot(s));

  static PollVoteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PollVoteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PollVoteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PollVoteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PollVoteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PollVoteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPollVoteRecordData({
  DocumentReference? pollRef,
  DocumentReference? pollAnswerRef,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pollRef': pollRef,
      'pollAnswerRef': pollAnswerRef,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PollVoteRecordDocumentEquality implements Equality<PollVoteRecord> {
  const PollVoteRecordDocumentEquality();

  @override
  bool equals(PollVoteRecord? e1, PollVoteRecord? e2) {
    return e1?.pollRef == e2?.pollRef &&
        e1?.pollAnswerRef == e2?.pollAnswerRef &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(PollVoteRecord? e) =>
      const ListEquality().hash([e?.pollRef, e?.pollAnswerRef, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is PollVoteRecord;
}
