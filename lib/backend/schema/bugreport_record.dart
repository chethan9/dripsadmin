import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BugreportRecord extends FirestoreRecord {
  BugreportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _bio = snapshotData['bio'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bugreport');

  static Stream<BugreportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BugreportRecord.fromSnapshot(s));

  static Future<BugreportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BugreportRecord.fromSnapshot(s));

  static BugreportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BugreportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BugreportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BugreportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BugreportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BugreportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBugreportRecordData({
  DocumentReference? userRef,
  String? title,
  String? bio,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'title': title,
      'bio': bio,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class BugreportRecordDocumentEquality implements Equality<BugreportRecord> {
  const BugreportRecordDocumentEquality();

  @override
  bool equals(BugreportRecord? e1, BugreportRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.title == e2?.title &&
        e1?.bio == e2?.bio &&
        e1?.image == e2?.image;
  }

  @override
  int hash(BugreportRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.title, e?.bio, e?.image]);

  @override
  bool isValidKey(Object? o) => o is BugreportRecord;
}
