import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "videoId" field.
  String? _videoId;
  String get videoId => _videoId ?? '';
  bool hasVideoId() => _videoId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "webURL" field.
  String? _webURL;
  String get webURL => _webURL ?? '';
  bool hasWebURL() => _webURL != null;

  // "mobURL" field.
  String? _mobURL;
  String get mobURL => _mobURL ?? '';
  bool hasMobURL() => _mobURL != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "projectId" field.
  String? _projectId;
  String get projectId => _projectId ?? '';
  bool hasProjectId() => _projectId != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "channelKey" field.
  String? _channelKey;
  String get channelKey => _channelKey ?? '';
  bool hasChannelKey() => _channelKey != null;

  // "accountKey" field.
  String? _accountKey;
  String get accountKey => _accountKey ?? '';
  bool hasAccountKey() => _accountKey != null;

  // "iframeLink" field.
  String? _iframeLink;
  String get iframeLink => _iframeLink ?? '';
  bool hasIframeLink() => _iframeLink != null;

  // "autherRef" field.
  DocumentReference? _autherRef;
  DocumentReference? get autherRef => _autherRef;
  bool hasAutherRef() => _autherRef != null;

  void _initializeFields() {
    _videoId = snapshotData['videoId'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _webURL = snapshotData['webURL'] as String?;
    _mobURL = snapshotData['mobURL'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _projectId = snapshotData['projectId'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _images = snapshotData['images'] as String?;
    _duration = snapshotData['duration'] as String?;
    _channelKey = snapshotData['channelKey'] as String?;
    _accountKey = snapshotData['accountKey'] as String?;
    _iframeLink = snapshotData['iframeLink'] as String?;
    _autherRef = snapshotData['autherRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? videoId,
  String? title,
  String? description,
  String? webURL,
  String? mobURL,
  DateTime? createdAt,
  String? projectId,
  int? status,
  String? images,
  String? duration,
  String? channelKey,
  String? accountKey,
  String? iframeLink,
  DocumentReference? autherRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'videoId': videoId,
      'title': title,
      'description': description,
      'webURL': webURL,
      'mobURL': mobURL,
      'createdAt': createdAt,
      'projectId': projectId,
      'status': status,
      'images': images,
      'duration': duration,
      'channelKey': channelKey,
      'accountKey': accountKey,
      'iframeLink': iframeLink,
      'autherRef': autherRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.videoId == e2?.videoId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.webURL == e2?.webURL &&
        e1?.mobURL == e2?.mobURL &&
        e1?.createdAt == e2?.createdAt &&
        e1?.projectId == e2?.projectId &&
        e1?.status == e2?.status &&
        e1?.images == e2?.images &&
        e1?.duration == e2?.duration &&
        e1?.channelKey == e2?.channelKey &&
        e1?.accountKey == e2?.accountKey &&
        e1?.iframeLink == e2?.iframeLink &&
        e1?.autherRef == e2?.autherRef;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality().hash([
        e?.videoId,
        e?.title,
        e?.description,
        e?.webURL,
        e?.mobURL,
        e?.createdAt,
        e?.projectId,
        e?.status,
        e?.images,
        e?.duration,
        e?.channelKey,
        e?.accountKey,
        e?.iframeLink,
        e?.autherRef
      ]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
