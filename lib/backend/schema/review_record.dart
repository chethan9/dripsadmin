import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "courseRef" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "commentDate" field.
  DateTime? _commentDate;
  DateTime? get commentDate => _commentDate;
  bool hasCommentDate() => _commentDate != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "likeList" field.
  List<DocumentReference>? _likeList;
  List<DocumentReference> get likeList => _likeList ?? const [];
  bool hasLikeList() => _likeList != null;

  // "commentStatus" field.
  String? _commentStatus;
  String get commentStatus => _commentStatus ?? '';
  bool hasCommentStatus() => _commentStatus != null;

  // "unlikeList" field.
  List<DocumentReference>? _unlikeList;
  List<DocumentReference> get unlikeList => _unlikeList ?? const [];
  bool hasUnlikeList() => _unlikeList != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "ratting" field.
  int? _ratting;
  int get ratting => _ratting ?? 0;
  bool hasRatting() => _ratting != null;

  // "authRef" field.
  DocumentReference? _authRef;
  DocumentReference? get authRef => _authRef;
  bool hasAuthRef() => _authRef != null;

  // "rplyComments" field.
  String? _rplyComments;
  String get rplyComments => _rplyComments ?? '';
  bool hasRplyComments() => _rplyComments != null;

  // "rplyUserRef" field.
  DocumentReference? _rplyUserRef;
  DocumentReference? get rplyUserRef => _rplyUserRef;
  bool hasRplyUserRef() => _rplyUserRef != null;

  // "rplyCreatedAt" field.
  DateTime? _rplyCreatedAt;
  DateTime? get rplyCreatedAt => _rplyCreatedAt;
  bool hasRplyCreatedAt() => _rplyCreatedAt != null;

  // "rplyStatus" field.
  String? _rplyStatus;
  String get rplyStatus => _rplyStatus ?? '';
  bool hasRplyStatus() => _rplyStatus != null;

  // "rplyLikeList" field.
  List<DocumentReference>? _rplyLikeList;
  List<DocumentReference> get rplyLikeList => _rplyLikeList ?? const [];
  bool hasRplyLikeList() => _rplyLikeList != null;

  void _initializeFields() {
    _courseRef = snapshotData['courseRef'] as DocumentReference?;
    _commentDate = snapshotData['commentDate'] as DateTime?;
    _comment = snapshotData['comment'] as String?;
    _likeList = getDataList(snapshotData['likeList']);
    _commentStatus = snapshotData['commentStatus'] as String?;
    _unlikeList = getDataList(snapshotData['unlikeList']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _ratting = castToType<int>(snapshotData['ratting']);
    _authRef = snapshotData['authRef'] as DocumentReference?;
    _rplyComments = snapshotData['rplyComments'] as String?;
    _rplyUserRef = snapshotData['rplyUserRef'] as DocumentReference?;
    _rplyCreatedAt = snapshotData['rplyCreatedAt'] as DateTime?;
    _rplyStatus = snapshotData['rplyStatus'] as String?;
    _rplyLikeList = getDataList(snapshotData['rplyLikeList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  DocumentReference? courseRef,
  DateTime? commentDate,
  String? comment,
  String? commentStatus,
  DocumentReference? userRef,
  int? ratting,
  DocumentReference? authRef,
  String? rplyComments,
  DocumentReference? rplyUserRef,
  DateTime? rplyCreatedAt,
  String? rplyStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courseRef': courseRef,
      'commentDate': commentDate,
      'comment': comment,
      'commentStatus': commentStatus,
      'userRef': userRef,
      'ratting': ratting,
      'authRef': authRef,
      'rplyComments': rplyComments,
      'rplyUserRef': rplyUserRef,
      'rplyCreatedAt': rplyCreatedAt,
      'rplyStatus': rplyStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewRecordDocumentEquality implements Equality<ReviewRecord> {
  const ReviewRecordDocumentEquality();

  @override
  bool equals(ReviewRecord? e1, ReviewRecord? e2) {
    const listEquality = ListEquality();
    return e1?.courseRef == e2?.courseRef &&
        e1?.commentDate == e2?.commentDate &&
        e1?.comment == e2?.comment &&
        listEquality.equals(e1?.likeList, e2?.likeList) &&
        e1?.commentStatus == e2?.commentStatus &&
        listEquality.equals(e1?.unlikeList, e2?.unlikeList) &&
        e1?.userRef == e2?.userRef &&
        e1?.ratting == e2?.ratting &&
        e1?.authRef == e2?.authRef &&
        e1?.rplyComments == e2?.rplyComments &&
        e1?.rplyUserRef == e2?.rplyUserRef &&
        e1?.rplyCreatedAt == e2?.rplyCreatedAt &&
        e1?.rplyStatus == e2?.rplyStatus &&
        listEquality.equals(e1?.rplyLikeList, e2?.rplyLikeList);
  }

  @override
  int hash(ReviewRecord? e) => const ListEquality().hash([
        e?.courseRef,
        e?.commentDate,
        e?.comment,
        e?.likeList,
        e?.commentStatus,
        e?.unlikeList,
        e?.userRef,
        e?.ratting,
        e?.authRef,
        e?.rplyComments,
        e?.rplyUserRef,
        e?.rplyCreatedAt,
        e?.rplyStatus,
        e?.rplyLikeList
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewRecord;
}
