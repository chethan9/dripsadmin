import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecialOfferRecord extends FirestoreRecord {
  SpecialOfferRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "numberOfAttempts" field.
  int? _numberOfAttempts;
  int get numberOfAttempts => _numberOfAttempts ?? 0;
  bool hasNumberOfAttempts() => _numberOfAttempts != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _numberOfAttempts = castToType<int>(snapshotData['numberOfAttempts']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('specialOffer');

  static Stream<SpecialOfferRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialOfferRecord.fromSnapshot(s));

  static Future<SpecialOfferRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecialOfferRecord.fromSnapshot(s));

  static SpecialOfferRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialOfferRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialOfferRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialOfferRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialOfferRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialOfferRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialOfferRecordData({
  DocumentReference? userRef,
  int? numberOfAttempts,
  String? status,
  DateTime? createdAt,
  String? name,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'numberOfAttempts': numberOfAttempts,
      'status': status,
      'createdAt': createdAt,
      'name': name,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialOfferRecordDocumentEquality
    implements Equality<SpecialOfferRecord> {
  const SpecialOfferRecordDocumentEquality();

  @override
  bool equals(SpecialOfferRecord? e1, SpecialOfferRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.numberOfAttempts == e2?.numberOfAttempts &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.name == e2?.name &&
        e1?.phone == e2?.phone;
  }

  @override
  int hash(SpecialOfferRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.numberOfAttempts,
        e?.status,
        e?.createdAt,
        e?.name,
        e?.phone
      ]);

  @override
  bool isValidKey(Object? o) => o is SpecialOfferRecord;
}
