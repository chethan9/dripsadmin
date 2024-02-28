import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FfPostRecord extends FirestoreRecord {
  FfPostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "sales_price" field.
  double? _salesPrice;
  double get salesPrice => _salesPrice ?? 0.0;
  bool hasSalesPrice() => _salesPrice != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "full_description" field.
  String? _fullDescription;
  String get fullDescription => _fullDescription ?? '';
  bool hasFullDescription() => _fullDescription != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  bool hasGallery() => _gallery != null;

  // "instructorRef" field.
  DocumentReference? _instructorRef;
  DocumentReference? get instructorRef => _instructorRef;
  bool hasInstructorRef() => _instructorRef != null;

  // "createdUserRef" field.
  DocumentReference? _createdUserRef;
  DocumentReference? get createdUserRef => _createdUserRef;
  bool hasCreatedUserRef() => _createdUserRef != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "videoRef" field.
  DocumentReference? _videoRef;
  DocumentReference? get videoRef => _videoRef;
  bool hasVideoRef() => _videoRef != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _salesPrice = castToType<double>(snapshotData['sales_price']);
    _shortDescription = snapshotData['short_description'] as String?;
    _fullDescription = snapshotData['full_description'] as String?;
    _image = snapshotData['image'] as String?;
    _gallery = getDataList(snapshotData['gallery']);
    _instructorRef = snapshotData['instructorRef'] as DocumentReference?;
    _createdUserRef = snapshotData['createdUserRef'] as DocumentReference?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _videoRef = snapshotData['videoRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ff_post');

  static Stream<FfPostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FfPostRecord.fromSnapshot(s));

  static Future<FfPostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FfPostRecord.fromSnapshot(s));

  static FfPostRecord fromSnapshot(DocumentSnapshot snapshot) => FfPostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FfPostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FfPostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FfPostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FfPostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFfPostRecordData({
  String? type,
  String? name,
  double? price,
  double? salesPrice,
  String? shortDescription,
  String? fullDescription,
  String? image,
  DocumentReference? instructorRef,
  DocumentReference? createdUserRef,
  DateTime? updatedAt,
  DateTime? createdAt,
  DocumentReference? videoRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'name': name,
      'price': price,
      'sales_price': salesPrice,
      'short_description': shortDescription,
      'full_description': fullDescription,
      'image': image,
      'instructorRef': instructorRef,
      'createdUserRef': createdUserRef,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
      'videoRef': videoRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class FfPostRecordDocumentEquality implements Equality<FfPostRecord> {
  const FfPostRecordDocumentEquality();

  @override
  bool equals(FfPostRecord? e1, FfPostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.type == e2?.type &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.salesPrice == e2?.salesPrice &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.fullDescription == e2?.fullDescription &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.gallery, e2?.gallery) &&
        e1?.instructorRef == e2?.instructorRef &&
        e1?.createdUserRef == e2?.createdUserRef &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.createdAt == e2?.createdAt &&
        e1?.videoRef == e2?.videoRef;
  }

  @override
  int hash(FfPostRecord? e) => const ListEquality().hash([
        e?.type,
        e?.name,
        e?.price,
        e?.salesPrice,
        e?.shortDescription,
        e?.fullDescription,
        e?.image,
        e?.gallery,
        e?.instructorRef,
        e?.createdUserRef,
        e?.updatedAt,
        e?.createdAt,
        e?.videoRef
      ]);

  @override
  bool isValidKey(Object? o) => o is FfPostRecord;
}
