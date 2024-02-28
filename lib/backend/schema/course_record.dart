import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseRecord extends FirestoreRecord {
  CourseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "universityRef" field.
  DocumentReference? _universityRef;
  DocumentReference? get universityRef => _universityRef;
  bool hasUniversityRef() => _universityRef != null;

  // "branchRef" field.
  DocumentReference? _branchRef;
  DocumentReference? get branchRef => _branchRef;
  bool hasBranchRef() => _branchRef != null;

  // "authorRef" field.
  DocumentReference? _authorRef;
  DocumentReference? get authorRef => _authorRef;
  bool hasAuthorRef() => _authorRef != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "numberLessons" field.
  int? _numberLessons;
  int get numberLessons => _numberLessons ?? 0;
  bool hasNumberLessons() => _numberLessons != null;

  // "totalHours" field.
  int? _totalHours;
  int get totalHours => _totalHours ?? 0;
  bool hasTotalHours() => _totalHours != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  bool hasSubtitle() => _subtitle != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "listView" field.
  List<String>? _listView;
  List<String> get listView => _listView ?? const [];
  bool hasListView() => _listView != null;

  // "expandStatus" field.
  bool? _expandStatus;
  bool get expandStatus => _expandStatus ?? false;
  bool hasExpandStatus() => _expandStatus != null;

  // "courseCategoryRef" field.
  DocumentReference? _courseCategoryRef;
  DocumentReference? get courseCategoryRef => _courseCategoryRef;
  bool hasCourseCategoryRef() => _courseCategoryRef != null;

  // "creditcardCharge" field.
  double? _creditcardCharge;
  double get creditcardCharge => _creditcardCharge ?? 0.0;
  bool hasCreditcardCharge() => _creditcardCharge != null;

  // "firstEMIprice" field.
  double? _firstEMIprice;
  double get firstEMIprice => _firstEMIprice ?? 0.0;
  bool hasFirstEMIprice() => _firstEMIprice != null;

  // "secondEMIprice" field.
  double? _secondEMIprice;
  double get secondEMIprice => _secondEMIprice ?? 0.0;
  bool hasSecondEMIprice() => _secondEMIprice != null;

  // "thirdEMIprice" field.
  double? _thirdEMIprice;
  double get thirdEMIprice => _thirdEMIprice ?? 0.0;
  bool hasThirdEMIprice() => _thirdEMIprice != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  bool hasCountryRef() => _countryRef != null;

  // "whatsappGroupLink" field.
  String? _whatsappGroupLink;
  String get whatsappGroupLink => _whatsappGroupLink ?? '';
  bool hasWhatsappGroupLink() => _whatsappGroupLink != null;

  // "totalCourseHour" field.
  int? _totalCourseHour;
  int get totalCourseHour => _totalCourseHour ?? 0;
  bool hasTotalCourseHour() => _totalCourseHour != null;

  // "courseLearn" field.
  String? _courseLearn;
  String get courseLearn => _courseLearn ?? '';
  bool hasCourseLearn() => _courseLearn != null;

  // "courseRequirement" field.
  String? _courseRequirement;
  String get courseRequirement => _courseRequirement ?? '';
  bool hasCourseRequirement() => _courseRequirement != null;

  // "coursePaymentType" field.
  String? _coursePaymentType;
  String get coursePaymentType => _coursePaymentType ?? '';
  bool hasCoursePaymentType() => _coursePaymentType != null;

  // "totalRatting" field.
  double? _totalRatting;
  double get totalRatting => _totalRatting ?? 0.0;
  bool hasTotalRatting() => _totalRatting != null;

  // "image_blurhash" field.
  String? _imageBlurhash;
  String get imageBlurhash => _imageBlurhash ?? '';
  bool hasImageBlurhash() => _imageBlurhash != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "batchesRef" field.
  DocumentReference? _batchesRef;
  DocumentReference? get batchesRef => _batchesRef;
  bool hasBatchesRef() => _batchesRef != null;

  // "videoRef" field.
  DocumentReference? _videoRef;
  DocumentReference? get videoRef => _videoRef;
  bool hasVideoRef() => _videoRef != null;

  // "nameAutoTranslate" field.
  TranslateStruct? _nameAutoTranslate;
  TranslateStruct get nameAutoTranslate =>
      _nameAutoTranslate ?? TranslateStruct();
  bool hasNameAutoTranslate() => _nameAutoTranslate != null;

  // "nameManualTranslate" field.
  TranslateStruct? _nameManualTranslate;
  TranslateStruct get nameManualTranslate =>
      _nameManualTranslate ?? TranslateStruct();
  bool hasNameManualTranslate() => _nameManualTranslate != null;

  // "subtitleAutoTranslate" field.
  TranslateStruct? _subtitleAutoTranslate;
  TranslateStruct get subtitleAutoTranslate =>
      _subtitleAutoTranslate ?? TranslateStruct();
  bool hasSubtitleAutoTranslate() => _subtitleAutoTranslate != null;

  // "subtitleManualTranslate" field.
  TranslateStruct? _subtitleManualTranslate;
  TranslateStruct get subtitleManualTranslate =>
      _subtitleManualTranslate ?? TranslateStruct();
  bool hasSubtitleManualTranslate() => _subtitleManualTranslate != null;

  // "descriptionAutoTranslate" field.
  TranslateStruct? _descriptionAutoTranslate;
  TranslateStruct get descriptionAutoTranslate =>
      _descriptionAutoTranslate ?? TranslateStruct();
  bool hasDescriptionAutoTranslate() => _descriptionAutoTranslate != null;

  // "descriptionManualTranslate" field.
  TranslateStruct? _descriptionManualTranslate;
  TranslateStruct get descriptionManualTranslate =>
      _descriptionManualTranslate ?? TranslateStruct();
  bool hasDescriptionManualTranslate() => _descriptionManualTranslate != null;

  // "courseRequirementAutoTranslate" field.
  TranslateStruct? _courseRequirementAutoTranslate;
  TranslateStruct get courseRequirementAutoTranslate =>
      _courseRequirementAutoTranslate ?? TranslateStruct();
  bool hasCourseRequirementAutoTranslate() =>
      _courseRequirementAutoTranslate != null;

  // "courseRequirementManualTranslate" field.
  TranslateStruct? _courseRequirementManualTranslate;
  TranslateStruct get courseRequirementManualTranslate =>
      _courseRequirementManualTranslate ?? TranslateStruct();
  bool hasCourseRequirementManualTranslate() =>
      _courseRequirementManualTranslate != null;

  // "courseLearnAutoTranslate" field.
  TranslateStruct? _courseLearnAutoTranslate;
  TranslateStruct get courseLearnAutoTranslate =>
      _courseLearnAutoTranslate ?? TranslateStruct();
  bool hasCourseLearnAutoTranslate() => _courseLearnAutoTranslate != null;

  // "courseLearnManualTranslate" field.
  TranslateStruct? _courseLearnManualTranslate;
  TranslateStruct get courseLearnManualTranslate =>
      _courseLearnManualTranslate ?? TranslateStruct();
  bool hasCourseLearnManualTranslate() => _courseLearnManualTranslate != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "bookingLimit" field.
  int? _bookingLimit;
  int get bookingLimit => _bookingLimit ?? 0;
  bool hasBookingLimit() => _bookingLimit != null;

  // "bookedCount" field.
  int? _bookedCount;
  int get bookedCount => _bookedCount ?? 0;
  bool hasBookedCount() => _bookedCount != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "emiPaymentStatus" field.
  bool? _emiPaymentStatus;
  bool get emiPaymentStatus => _emiPaymentStatus ?? false;
  bool hasEmiPaymentStatus() => _emiPaymentStatus != null;

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  bool hasGallery() => _gallery != null;

  // "onlineStatus" field.
  bool? _onlineStatus;
  bool get onlineStatus => _onlineStatus ?? false;
  bool hasOnlineStatus() => _onlineStatus != null;

  // "offlineStatus" field.
  bool? _offlineStatus;
  bool get offlineStatus => _offlineStatus ?? false;
  bool hasOfflineStatus() => _offlineStatus != null;

  // "numberDaysforValidity" field.
  int? _numberDaysforValidity;
  int get numberDaysforValidity => _numberDaysforValidity ?? 0;
  bool hasNumberDaysforValidity() => _numberDaysforValidity != null;

  // "documentUrl" field.
  String? _documentUrl;
  String get documentUrl => _documentUrl ?? '';
  bool hasDocumentUrl() => _documentUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _universityRef = snapshotData['universityRef'] as DocumentReference?;
    _branchRef = snapshotData['branchRef'] as DocumentReference?;
    _authorRef = snapshotData['authorRef'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _numberLessons = castToType<int>(snapshotData['numberLessons']);
    _totalHours = castToType<int>(snapshotData['totalHours']);
    _subtitle = snapshotData['subtitle'] as String?;
    _description = snapshotData['description'] as String?;
    _video = snapshotData['video'] as String?;
    _listView = getDataList(snapshotData['listView']);
    _expandStatus = snapshotData['expandStatus'] as bool?;
    _courseCategoryRef =
        snapshotData['courseCategoryRef'] as DocumentReference?;
    _creditcardCharge = castToType<double>(snapshotData['creditcardCharge']);
    _firstEMIprice = castToType<double>(snapshotData['firstEMIprice']);
    _secondEMIprice = castToType<double>(snapshotData['secondEMIprice']);
    _thirdEMIprice = castToType<double>(snapshotData['thirdEMIprice']);
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _whatsappGroupLink = snapshotData['whatsappGroupLink'] as String?;
    _totalCourseHour = castToType<int>(snapshotData['totalCourseHour']);
    _courseLearn = snapshotData['courseLearn'] as String?;
    _courseRequirement = snapshotData['courseRequirement'] as String?;
    _coursePaymentType = snapshotData['coursePaymentType'] as String?;
    _totalRatting = castToType<double>(snapshotData['totalRatting']);
    _imageBlurhash = snapshotData['image_blurhash'] as String?;
    _status = snapshotData['status'] as String?;
    _batchesRef = snapshotData['batchesRef'] as DocumentReference?;
    _videoRef = snapshotData['videoRef'] as DocumentReference?;
    _nameAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameAutoTranslate']);
    _nameManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['nameManualTranslate']);
    _subtitleAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['subtitleAutoTranslate']);
    _subtitleManualTranslate =
        TranslateStruct.maybeFromMap(snapshotData['subtitleManualTranslate']);
    _descriptionAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['descriptionAutoTranslate']);
    _descriptionManualTranslate = TranslateStruct.maybeFromMap(
        snapshotData['descriptionManualTranslate']);
    _courseRequirementAutoTranslate = TranslateStruct.maybeFromMap(
        snapshotData['courseRequirementAutoTranslate']);
    _courseRequirementManualTranslate = TranslateStruct.maybeFromMap(
        snapshotData['courseRequirementManualTranslate']);
    _courseLearnAutoTranslate =
        TranslateStruct.maybeFromMap(snapshotData['courseLearnAutoTranslate']);
    _courseLearnManualTranslate = TranslateStruct.maybeFromMap(
        snapshotData['courseLearnManualTranslate']);
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _bookingLimit = castToType<int>(snapshotData['bookingLimit']);
    _bookedCount = castToType<int>(snapshotData['bookedCount']);
    _sku = snapshotData['sku'] as String?;
    _emiPaymentStatus = snapshotData['emiPaymentStatus'] as bool?;
    _gallery = getDataList(snapshotData['gallery']);
    _onlineStatus = snapshotData['onlineStatus'] as bool?;
    _offlineStatus = snapshotData['offlineStatus'] as bool?;
    _numberDaysforValidity =
        castToType<int>(snapshotData['numberDaysforValidity']);
    _documentUrl = snapshotData['documentUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('course');

  static Stream<CourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseRecord.fromSnapshot(s));

  static Future<CourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseRecord.fromSnapshot(s));

  static CourseRecord fromSnapshot(DocumentSnapshot snapshot) => CourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseRecordData({
  String? name,
  String? image,
  DocumentReference? universityRef,
  DocumentReference? branchRef,
  DocumentReference? authorRef,
  double? price,
  int? numberLessons,
  int? totalHours,
  String? subtitle,
  String? description,
  String? video,
  bool? expandStatus,
  DocumentReference? courseCategoryRef,
  double? creditcardCharge,
  double? firstEMIprice,
  double? secondEMIprice,
  double? thirdEMIprice,
  DocumentReference? countryRef,
  String? whatsappGroupLink,
  int? totalCourseHour,
  String? courseLearn,
  String? courseRequirement,
  String? coursePaymentType,
  double? totalRatting,
  String? imageBlurhash,
  String? status,
  DocumentReference? batchesRef,
  DocumentReference? videoRef,
  TranslateStruct? nameAutoTranslate,
  TranslateStruct? nameManualTranslate,
  TranslateStruct? subtitleAutoTranslate,
  TranslateStruct? subtitleManualTranslate,
  TranslateStruct? descriptionAutoTranslate,
  TranslateStruct? descriptionManualTranslate,
  TranslateStruct? courseRequirementAutoTranslate,
  TranslateStruct? courseRequirementManualTranslate,
  TranslateStruct? courseLearnAutoTranslate,
  TranslateStruct? courseLearnManualTranslate,
  DocumentReference? categoryRef,
  int? bookingLimit,
  int? bookedCount,
  String? sku,
  bool? emiPaymentStatus,
  bool? onlineStatus,
  bool? offlineStatus,
  int? numberDaysforValidity,
  String? documentUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'universityRef': universityRef,
      'branchRef': branchRef,
      'authorRef': authorRef,
      'price': price,
      'numberLessons': numberLessons,
      'totalHours': totalHours,
      'subtitle': subtitle,
      'description': description,
      'video': video,
      'expandStatus': expandStatus,
      'courseCategoryRef': courseCategoryRef,
      'creditcardCharge': creditcardCharge,
      'firstEMIprice': firstEMIprice,
      'secondEMIprice': secondEMIprice,
      'thirdEMIprice': thirdEMIprice,
      'countryRef': countryRef,
      'whatsappGroupLink': whatsappGroupLink,
      'totalCourseHour': totalCourseHour,
      'courseLearn': courseLearn,
      'courseRequirement': courseRequirement,
      'coursePaymentType': coursePaymentType,
      'totalRatting': totalRatting,
      'image_blurhash': imageBlurhash,
      'status': status,
      'batchesRef': batchesRef,
      'videoRef': videoRef,
      'nameAutoTranslate': TranslateStruct().toMap(),
      'nameManualTranslate': TranslateStruct().toMap(),
      'subtitleAutoTranslate': TranslateStruct().toMap(),
      'subtitleManualTranslate': TranslateStruct().toMap(),
      'descriptionAutoTranslate': TranslateStruct().toMap(),
      'descriptionManualTranslate': TranslateStruct().toMap(),
      'courseRequirementAutoTranslate': TranslateStruct().toMap(),
      'courseRequirementManualTranslate': TranslateStruct().toMap(),
      'courseLearnAutoTranslate': TranslateStruct().toMap(),
      'courseLearnManualTranslate': TranslateStruct().toMap(),
      'categoryRef': categoryRef,
      'bookingLimit': bookingLimit,
      'bookedCount': bookedCount,
      'sku': sku,
      'emiPaymentStatus': emiPaymentStatus,
      'onlineStatus': onlineStatus,
      'offlineStatus': offlineStatus,
      'numberDaysforValidity': numberDaysforValidity,
      'documentUrl': documentUrl,
    }.withoutNulls,
  );

  // Handle nested data for "nameAutoTranslate" field.
  addTranslateStructData(firestoreData, nameAutoTranslate, 'nameAutoTranslate');

  // Handle nested data for "nameManualTranslate" field.
  addTranslateStructData(
      firestoreData, nameManualTranslate, 'nameManualTranslate');

  // Handle nested data for "subtitleAutoTranslate" field.
  addTranslateStructData(
      firestoreData, subtitleAutoTranslate, 'subtitleAutoTranslate');

  // Handle nested data for "subtitleManualTranslate" field.
  addTranslateStructData(
      firestoreData, subtitleManualTranslate, 'subtitleManualTranslate');

  // Handle nested data for "descriptionAutoTranslate" field.
  addTranslateStructData(
      firestoreData, descriptionAutoTranslate, 'descriptionAutoTranslate');

  // Handle nested data for "descriptionManualTranslate" field.
  addTranslateStructData(
      firestoreData, descriptionManualTranslate, 'descriptionManualTranslate');

  // Handle nested data for "courseRequirementAutoTranslate" field.
  addTranslateStructData(firestoreData, courseRequirementAutoTranslate,
      'courseRequirementAutoTranslate');

  // Handle nested data for "courseRequirementManualTranslate" field.
  addTranslateStructData(firestoreData, courseRequirementManualTranslate,
      'courseRequirementManualTranslate');

  // Handle nested data for "courseLearnAutoTranslate" field.
  addTranslateStructData(
      firestoreData, courseLearnAutoTranslate, 'courseLearnAutoTranslate');

  // Handle nested data for "courseLearnManualTranslate" field.
  addTranslateStructData(
      firestoreData, courseLearnManualTranslate, 'courseLearnManualTranslate');

  return firestoreData;
}

class CourseRecordDocumentEquality implements Equality<CourseRecord> {
  const CourseRecordDocumentEquality();

  @override
  bool equals(CourseRecord? e1, CourseRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.universityRef == e2?.universityRef &&
        e1?.branchRef == e2?.branchRef &&
        e1?.authorRef == e2?.authorRef &&
        e1?.price == e2?.price &&
        e1?.numberLessons == e2?.numberLessons &&
        e1?.totalHours == e2?.totalHours &&
        e1?.subtitle == e2?.subtitle &&
        e1?.description == e2?.description &&
        e1?.video == e2?.video &&
        listEquality.equals(e1?.listView, e2?.listView) &&
        e1?.expandStatus == e2?.expandStatus &&
        e1?.courseCategoryRef == e2?.courseCategoryRef &&
        e1?.creditcardCharge == e2?.creditcardCharge &&
        e1?.firstEMIprice == e2?.firstEMIprice &&
        e1?.secondEMIprice == e2?.secondEMIprice &&
        e1?.thirdEMIprice == e2?.thirdEMIprice &&
        e1?.countryRef == e2?.countryRef &&
        e1?.whatsappGroupLink == e2?.whatsappGroupLink &&
        e1?.totalCourseHour == e2?.totalCourseHour &&
        e1?.courseLearn == e2?.courseLearn &&
        e1?.courseRequirement == e2?.courseRequirement &&
        e1?.coursePaymentType == e2?.coursePaymentType &&
        e1?.totalRatting == e2?.totalRatting &&
        e1?.imageBlurhash == e2?.imageBlurhash &&
        e1?.status == e2?.status &&
        e1?.batchesRef == e2?.batchesRef &&
        e1?.videoRef == e2?.videoRef &&
        e1?.nameAutoTranslate == e2?.nameAutoTranslate &&
        e1?.nameManualTranslate == e2?.nameManualTranslate &&
        e1?.subtitleAutoTranslate == e2?.subtitleAutoTranslate &&
        e1?.subtitleManualTranslate == e2?.subtitleManualTranslate &&
        e1?.descriptionAutoTranslate == e2?.descriptionAutoTranslate &&
        e1?.descriptionManualTranslate == e2?.descriptionManualTranslate &&
        e1?.courseRequirementAutoTranslate ==
            e2?.courseRequirementAutoTranslate &&
        e1?.courseRequirementManualTranslate ==
            e2?.courseRequirementManualTranslate &&
        e1?.courseLearnAutoTranslate == e2?.courseLearnAutoTranslate &&
        e1?.courseLearnManualTranslate == e2?.courseLearnManualTranslate &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.bookingLimit == e2?.bookingLimit &&
        e1?.bookedCount == e2?.bookedCount &&
        e1?.sku == e2?.sku &&
        e1?.emiPaymentStatus == e2?.emiPaymentStatus &&
        listEquality.equals(e1?.gallery, e2?.gallery) &&
        e1?.onlineStatus == e2?.onlineStatus &&
        e1?.offlineStatus == e2?.offlineStatus &&
        e1?.numberDaysforValidity == e2?.numberDaysforValidity &&
        e1?.documentUrl == e2?.documentUrl;
  }

  @override
  int hash(CourseRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.universityRef,
        e?.branchRef,
        e?.authorRef,
        e?.price,
        e?.numberLessons,
        e?.totalHours,
        e?.subtitle,
        e?.description,
        e?.video,
        e?.listView,
        e?.expandStatus,
        e?.courseCategoryRef,
        e?.creditcardCharge,
        e?.firstEMIprice,
        e?.secondEMIprice,
        e?.thirdEMIprice,
        e?.countryRef,
        e?.whatsappGroupLink,
        e?.totalCourseHour,
        e?.courseLearn,
        e?.courseRequirement,
        e?.coursePaymentType,
        e?.totalRatting,
        e?.imageBlurhash,
        e?.status,
        e?.batchesRef,
        e?.videoRef,
        e?.nameAutoTranslate,
        e?.nameManualTranslate,
        e?.subtitleAutoTranslate,
        e?.subtitleManualTranslate,
        e?.descriptionAutoTranslate,
        e?.descriptionManualTranslate,
        e?.courseRequirementAutoTranslate,
        e?.courseRequirementManualTranslate,
        e?.courseLearnAutoTranslate,
        e?.courseLearnManualTranslate,
        e?.categoryRef,
        e?.bookingLimit,
        e?.bookedCount,
        e?.sku,
        e?.emiPaymentStatus,
        e?.gallery,
        e?.onlineStatus,
        e?.offlineStatus,
        e?.numberDaysforValidity,
        e?.documentUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseRecord;
}
