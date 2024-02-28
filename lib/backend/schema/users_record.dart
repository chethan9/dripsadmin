import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "userSex" field.
  String? _userSex;
  String get userSex => _userSex ?? '';
  bool hasUserSex() => _userSex != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  bool hasCountryRef() => _countryRef != null;

  // "universityRef" field.
  DocumentReference? _universityRef;
  DocumentReference? get universityRef => _universityRef;
  bool hasUniversityRef() => _universityRef != null;

  // "branchRef" field.
  DocumentReference? _branchRef;
  DocumentReference? get branchRef => _branchRef;
  bool hasBranchRef() => _branchRef != null;

  // "fvrtCourseList" field.
  List<DocumentReference>? _fvrtCourseList;
  List<DocumentReference> get fvrtCourseList => _fvrtCourseList ?? const [];
  bool hasFvrtCourseList() => _fvrtCourseList != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "facebookSocialLink" field.
  String? _facebookSocialLink;
  String get facebookSocialLink => _facebookSocialLink ?? '';
  bool hasFacebookSocialLink() => _facebookSocialLink != null;

  // "instagramSocialLink" field.
  String? _instagramSocialLink;
  String get instagramSocialLink => _instagramSocialLink ?? '';
  bool hasInstagramSocialLink() => _instagramSocialLink != null;

  // "linkedinSocialLink" field.
  String? _linkedinSocialLink;
  String get linkedinSocialLink => _linkedinSocialLink ?? '';
  bool hasLinkedinSocialLink() => _linkedinSocialLink != null;

  // "instuctorStatus" field.
  String? _instuctorStatus;
  String get instuctorStatus => _instuctorStatus ?? '';
  bool hasInstuctorStatus() => _instuctorStatus != null;

  // "courseLevel" field.
  InstructorCourseLevelStruct? _courseLevel;
  InstructorCourseLevelStruct get courseLevel =>
      _courseLevel ?? InstructorCourseLevelStruct();
  bool hasCourseLevel() => _courseLevel != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "middleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  bool hasMiddleName() => _middleName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "zoom" field.
  ZoomConfigStruct? _zoom;
  ZoomConfigStruct get zoom => _zoom ?? ZoomConfigStruct();
  bool hasZoom() => _zoom != null;

  // "blockReason" field.
  String? _blockReason;
  String get blockReason => _blockReason ?? '';
  bool hasBlockReason() => _blockReason != null;

  // "instructorRejectReason" field.
  String? _instructorRejectReason;
  String get instructorRejectReason => _instructorRejectReason ?? '';
  bool hasInstructorRejectReason() => _instructorRejectReason != null;

  // "age" field.
  double? _age;
  double get age => _age ?? 0.0;
  bool hasAge() => _age != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "phoneRegAttempt" field.
  int? _phoneRegAttempt;
  int get phoneRegAttempt => _phoneRegAttempt ?? 0;
  bool hasPhoneRegAttempt() => _phoneRegAttempt != null;

  // "phoneVerified" field.
  bool? _phoneVerified;
  bool get phoneVerified => _phoneVerified ?? false;
  bool hasPhoneVerified() => _phoneVerified != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "welcomeStatus" field.
  bool? _welcomeStatus;
  bool get welcomeStatus => _welcomeStatus ?? false;
  bool hasWelcomeStatus() => _welcomeStatus != null;

  // "emailVerifed" field.
  bool? _emailVerifed;
  bool get emailVerifed => _emailVerifed ?? false;
  bool hasEmailVerifed() => _emailVerifed != null;

  // "instructorFolderID" field.
  String? _instructorFolderID;
  String get instructorFolderID => _instructorFolderID ?? '';
  bool hasInstructorFolderID() => _instructorFolderID != null;

  // "instructorFolderStatus" field.
  String? _instructorFolderStatus;
  String get instructorFolderStatus => _instructorFolderStatus ?? '';
  bool hasInstructorFolderStatus() => _instructorFolderStatus != null;

  // "testImage" field.
  String? _testImage;
  String get testImage => _testImage ?? '';
  bool hasTestImage() => _testImage != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _location = snapshotData['location'] as String?;
    _userSex = snapshotData['userSex'] as String?;
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _universityRef = snapshotData['universityRef'] as DocumentReference?;
    _branchRef = snapshotData['branchRef'] as DocumentReference?;
    _fvrtCourseList = getDataList(snapshotData['fvrtCourseList']);
    _role = snapshotData['role'] as String?;
    _bio = snapshotData['bio'] as String?;
    _facebookSocialLink = snapshotData['facebookSocialLink'] as String?;
    _instagramSocialLink = snapshotData['instagramSocialLink'] as String?;
    _linkedinSocialLink = snapshotData['linkedinSocialLink'] as String?;
    _instuctorStatus = snapshotData['instuctorStatus'] as String?;
    _courseLevel =
        InstructorCourseLevelStruct.maybeFromMap(snapshotData['courseLevel']);
    _firstName = snapshotData['firstName'] as String?;
    _middleName = snapshotData['middleName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _zoom = ZoomConfigStruct.maybeFromMap(snapshotData['zoom']);
    _blockReason = snapshotData['blockReason'] as String?;
    _instructorRejectReason = snapshotData['instructorRejectReason'] as String?;
    _age = castToType<double>(snapshotData['age']);
    _dob = snapshotData['dob'] as DateTime?;
    _phoneRegAttempt = castToType<int>(snapshotData['phoneRegAttempt']);
    _phoneVerified = snapshotData['phoneVerified'] as bool?;
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _welcomeStatus = snapshotData['welcomeStatus'] as bool?;
    _emailVerifed = snapshotData['emailVerifed'] as bool?;
    _instructorFolderID = snapshotData['instructorFolderID'] as String?;
    _instructorFolderStatus = snapshotData['instructorFolderStatus'] as String?;
    _testImage = snapshotData['testImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActive,
  String? status,
  String? userRole,
  String? location,
  String? userSex,
  DocumentReference? countryRef,
  DocumentReference? universityRef,
  DocumentReference? branchRef,
  String? role,
  String? bio,
  String? facebookSocialLink,
  String? instagramSocialLink,
  String? linkedinSocialLink,
  String? instuctorStatus,
  InstructorCourseLevelStruct? courseLevel,
  String? firstName,
  String? middleName,
  String? lastName,
  ZoomConfigStruct? zoom,
  String? blockReason,
  String? instructorRejectReason,
  double? age,
  DateTime? dob,
  int? phoneRegAttempt,
  bool? phoneVerified,
  DocumentReference? categoryRef,
  DateTime? updatedAt,
  bool? welcomeStatus,
  bool? emailVerifed,
  String? instructorFolderID,
  String? instructorFolderStatus,
  String? testImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'lastActive': lastActive,
      'status': status,
      'userRole': userRole,
      'location': location,
      'userSex': userSex,
      'countryRef': countryRef,
      'universityRef': universityRef,
      'branchRef': branchRef,
      'role': role,
      'bio': bio,
      'facebookSocialLink': facebookSocialLink,
      'instagramSocialLink': instagramSocialLink,
      'linkedinSocialLink': linkedinSocialLink,
      'instuctorStatus': instuctorStatus,
      'courseLevel': InstructorCourseLevelStruct().toMap(),
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'zoom': ZoomConfigStruct().toMap(),
      'blockReason': blockReason,
      'instructorRejectReason': instructorRejectReason,
      'age': age,
      'dob': dob,
      'phoneRegAttempt': phoneRegAttempt,
      'phoneVerified': phoneVerified,
      'categoryRef': categoryRef,
      'updatedAt': updatedAt,
      'welcomeStatus': welcomeStatus,
      'emailVerifed': emailVerifed,
      'instructorFolderID': instructorFolderID,
      'instructorFolderStatus': instructorFolderStatus,
      'testImage': testImage,
    }.withoutNulls,
  );

  // Handle nested data for "courseLevel" field.
  addInstructorCourseLevelStructData(firestoreData, courseLevel, 'courseLevel');

  // Handle nested data for "zoom" field.
  addZoomConfigStructData(firestoreData, zoom, 'zoom');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActive == e2?.lastActive &&
        e1?.status == e2?.status &&
        e1?.userRole == e2?.userRole &&
        e1?.location == e2?.location &&
        e1?.userSex == e2?.userSex &&
        e1?.countryRef == e2?.countryRef &&
        e1?.universityRef == e2?.universityRef &&
        e1?.branchRef == e2?.branchRef &&
        listEquality.equals(e1?.fvrtCourseList, e2?.fvrtCourseList) &&
        e1?.role == e2?.role &&
        e1?.bio == e2?.bio &&
        e1?.facebookSocialLink == e2?.facebookSocialLink &&
        e1?.instagramSocialLink == e2?.instagramSocialLink &&
        e1?.linkedinSocialLink == e2?.linkedinSocialLink &&
        e1?.instuctorStatus == e2?.instuctorStatus &&
        e1?.courseLevel == e2?.courseLevel &&
        e1?.firstName == e2?.firstName &&
        e1?.middleName == e2?.middleName &&
        e1?.lastName == e2?.lastName &&
        e1?.zoom == e2?.zoom &&
        e1?.blockReason == e2?.blockReason &&
        e1?.instructorRejectReason == e2?.instructorRejectReason &&
        e1?.age == e2?.age &&
        e1?.dob == e2?.dob &&
        e1?.phoneRegAttempt == e2?.phoneRegAttempt &&
        e1?.phoneVerified == e2?.phoneVerified &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.welcomeStatus == e2?.welcomeStatus &&
        e1?.emailVerifed == e2?.emailVerifed &&
        e1?.instructorFolderID == e2?.instructorFolderID &&
        e1?.instructorFolderStatus == e2?.instructorFolderStatus &&
        e1?.testImage == e2?.testImage;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActive,
        e?.status,
        e?.userRole,
        e?.location,
        e?.userSex,
        e?.countryRef,
        e?.universityRef,
        e?.branchRef,
        e?.fvrtCourseList,
        e?.role,
        e?.bio,
        e?.facebookSocialLink,
        e?.instagramSocialLink,
        e?.linkedinSocialLink,
        e?.instuctorStatus,
        e?.courseLevel,
        e?.firstName,
        e?.middleName,
        e?.lastName,
        e?.zoom,
        e?.blockReason,
        e?.instructorRejectReason,
        e?.age,
        e?.dob,
        e?.phoneRegAttempt,
        e?.phoneVerified,
        e?.categoryRef,
        e?.updatedAt,
        e?.welcomeStatus,
        e?.emailVerifed,
        e?.instructorFolderID,
        e?.instructorFolderStatus,
        e?.testImage
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
