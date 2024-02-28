import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemberRecord extends FirestoreRecord {
  MemberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "memberType" field.
  String? _memberType;
  String get memberType => _memberType ?? '';
  bool hasMemberType() => _memberType != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  bool hasSubtitle() => _subtitle != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "webLink" field.
  String? _webLink;
  String get webLink => _webLink ?? '';
  bool hasWebLink() => _webLink != null;

  // "fbLink" field.
  String? _fbLink;
  String get fbLink => _fbLink ?? '';
  bool hasFbLink() => _fbLink != null;

  // "instaLink" field.
  String? _instaLink;
  String get instaLink => _instaLink ?? '';
  bool hasInstaLink() => _instaLink != null;

  // "inLink" field.
  String? _inLink;
  String get inLink => _inLink ?? '';
  bool hasInLink() => _inLink != null;

  // "orderNum" field.
  int? _orderNum;
  int get orderNum => _orderNum ?? 0;
  bool hasOrderNum() => _orderNum != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _memberType = snapshotData['memberType'] as String?;
    _title = snapshotData['title'] as String?;
    _subtitle = snapshotData['subtitle'] as String?;
    _bio = snapshotData['bio'] as String?;
    _image = snapshotData['image'] as String?;
    _webLink = snapshotData['webLink'] as String?;
    _fbLink = snapshotData['fbLink'] as String?;
    _instaLink = snapshotData['instaLink'] as String?;
    _inLink = snapshotData['inLink'] as String?;
    _orderNum = castToType<int>(snapshotData['orderNum']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('member');

  static Stream<MemberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemberRecord.fromSnapshot(s));

  static Future<MemberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MemberRecord.fromSnapshot(s));

  static MemberRecord fromSnapshot(DocumentSnapshot snapshot) => MemberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemberRecordData({
  String? memberType,
  String? title,
  String? subtitle,
  String? bio,
  String? image,
  String? webLink,
  String? fbLink,
  String? instaLink,
  String? inLink,
  int? orderNum,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'memberType': memberType,
      'title': title,
      'subtitle': subtitle,
      'bio': bio,
      'image': image,
      'webLink': webLink,
      'fbLink': fbLink,
      'instaLink': instaLink,
      'inLink': inLink,
      'orderNum': orderNum,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemberRecordDocumentEquality implements Equality<MemberRecord> {
  const MemberRecordDocumentEquality();

  @override
  bool equals(MemberRecord? e1, MemberRecord? e2) {
    return e1?.memberType == e2?.memberType &&
        e1?.title == e2?.title &&
        e1?.subtitle == e2?.subtitle &&
        e1?.bio == e2?.bio &&
        e1?.image == e2?.image &&
        e1?.webLink == e2?.webLink &&
        e1?.fbLink == e2?.fbLink &&
        e1?.instaLink == e2?.instaLink &&
        e1?.inLink == e2?.inLink &&
        e1?.orderNum == e2?.orderNum &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(MemberRecord? e) => const ListEquality().hash([
        e?.memberType,
        e?.title,
        e?.subtitle,
        e?.bio,
        e?.image,
        e?.webLink,
        e?.fbLink,
        e?.instaLink,
        e?.inLink,
        e?.orderNum,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is MemberRecord;
}
