import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MainTAPChargeGETAPIBonusWebCall {
  static Future<ApiCallResponse> call({
    String? chargeid = '',
    String? secreatKey = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MainTAP Charge GET API BonusWeb',
      apiUrl:
          'https://proxy.vizsoft.in/https://api.tap.company/v2/charges/${chargeid}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${secreatKey}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? chargeID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  static String? merchentID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.merchant.id''',
      ));
  static String? gatewayRef(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.reference.gateway''',
      ));
  static String? paymentRef(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.reference.payment''',
      ));
  static String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.created''',
      ));
  static String? paymentmethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.source.payment_method''',
      ));
  static String? paymenttype(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.source.payment_type''',
      ));
}

class SMSmaketingBulkCall {
  static Future<ApiCallResponse> call({
    String? message = '',
    List<String>? phoneListList,
  }) async {
    final phoneList = _serializeList(phoneListList);

    final ffApiRequestBody = '''
{
  "message": "${message}",
  "to_numbers": ${phoneList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SMSmaketingBulk',
      apiUrl: 'https://proxy.vizsoft.in/https://backend.vizsoft.in/send_sms',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class UploadStatusCall {
  static Future<ApiCallResponse> call({
    String? videoID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadStatus',
      apiUrl:
          'https://proxy.vizsoft.in/https://backend.vizsoft.in/video_status/${videoID}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? videoId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static int? length(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.length''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.poster''',
      ));
  static List? imageList(dynamic response) => getJsonField(
        response,
        r'''$.posters''',
        true,
      ) as List?;
}

class NEWgetOTPandPBICall {
  static Future<ApiCallResponse> call({
    String? videoId = '',
    String? userName = '',
    String? userid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "video_id": "${videoId}",
  "name": "${userName}",
  "userId": "${userid}",
  "ttl": 3000
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NEWgetOTPandPBI',
      apiUrl:
          'https://proxy.vizsoft.in/https://backend.vizsoft.in/get_otp_playback',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'origin': 'https://proxy.vizsoft.in',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? otp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otp''',
      ));
  static String? playbackInfo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.playbackInfo''',
      ));
}

class DeleteUploadVideoCall {
  static Future<ApiCallResponse> call({
    String? videoId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteUploadVideo',
      apiUrl:
          'https://proxy.vizsoft.in/https://backend.vizsoft.in/delete_videos?videos=${videoId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeVideoTitleCall {
  static Future<ApiCallResponse> call({
    String? videoId = '',
    String? title = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "title": "${title}",
"description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChangeVideoTitle',
      apiUrl:
          'https://proxy.vizsoft.in/https://backend.vizsoft.in/rename_video/${videoId}',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadNewPosterVideoCall {
  static Future<ApiCallResponse> call({
    String? videoId = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadNewPosterVideo',
      apiUrl:
          'https://proxy.vizsoft.in/https://backend.vizsoft.in/poster/${videoId}',
      callType: ApiCallType.POST,
      headers: {
        'x-requested-with': 'https://backend.vizsoft.in',
      },
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstructorFolderStatusCall {
  static Future<ApiCallResponse> call({
    String? videoId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'InstructorFolderStatus',
      apiUrl:
          'https://proxy.vizsoft.in/http://backend.vizsoft.in/get_folder/${videoId}',
      callType: ApiCallType.GET,
      headers: {
        'x-requested-with': 'https://backend.vizsoft.in',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class InstructorFolderCreationCall {
  static Future<ApiCallResponse> call({
    String? folderName = '',
    String? parentFolderID = 'c000e7ede52e4745a592b3b3933d662a',
  }) async {
    final ffApiRequestBody = '''
{
  "folderName": "${folderName}",
  "parentFolderID": "${parentFolderID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'InstructorFolderCreation',
      apiUrl:
          'https://proxy.vizsoft.in/http://backend.vizsoft.in/create_folder',
      callType: ApiCallType.POST,
      headers: {
        'x-requested-with': 'https://backend.vizsoft.in',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? instructorFolderID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? parentID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.parent''',
      ));
  static int? videosCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.videosCount''',
      ));
  static int? foldersCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.foldersCount''',
      ));
}

class InstructorBasedVideoListCall {
  static Future<ApiCallResponse> call({
    String? folderId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'InstructorBasedVideoList',
      apiUrl:
          'https://proxy.vizsoft.in/http://backend.vizsoft.in/get_videos/${folderId}',
      callType: ApiCallType.GET,
      headers: {
        'x-requested-with': 'https://backend.vizsoft.in',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? videoIDList(dynamic response) => (getJsonField(
        response,
        r'''$.rows..id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class FolderBasedVideoListCall {
  static Future<ApiCallResponse> call({
    String? folderId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FolderBasedVideoList',
      apiUrl:
          'https://proxy.vizsoft.in/http://backend.vizsoft.in/get_videos/${folderId}',
      callType: ApiCallType.GET,
      headers: {
        'x-requested-with': 'https://backend.vizsoft.in',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? isNotReadyList(dynamic response) => getJsonField(
        response,
        r'''$.rows[?(@.status != 'ready')]''',
        true,
      ) as List?;
  static List? isNotReadyVideoIDList(dynamic response) => getJsonField(
        response,
        r'''$.rows[?(@.status != 'ready')]..id''',
        true,
      ) as List?;
  static List? isNotReadyVideoTitleList(dynamic response) => getJsonField(
        response,
        r'''$.rows[?(@.status != 'ready')]..title''',
        true,
      ) as List?;
}

class CreateMeetingCall {
  static Future<ApiCallResponse> call({
    String? clientName = '',
    String? topic = '',
    String? startTime = '',
    int? duration,
    String? agenda = '',
  }) async {
    final ffApiRequestBody = '''
{
    "client_name": "${clientName}",
    "topic": "${topic}",
    "start_time": "${startTime}",
    "duration": "${duration}",
    "agenda": "${agenda}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Meeting',
      apiUrl:
          'https://proxy.vizsoft.in/https://nocodeplayground.onrender.com/create_zoom_meeting',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? agenda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.agenda''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static int? duration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.duration''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? joinurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.join_url''',
      ));
  static String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  static String? starttime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_time''',
      ));
  static String? starturl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_url''',
      ));
  static String? topic(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.topic''',
      ));
  static String? hostemail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.host_email''',
      ));
  static String? hostid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.host_id''',
      ));
  static String? timezone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timezone''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RetrieveMeetingCall {
  static Future<ApiCallResponse> call({
    String? clientName = '',
    String? meetingId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve  Meeting',
      apiUrl:
          'https://proxy.vizsoft.in/https://nocodeplayground.onrender.com/get_zoom_meeting?client_name=${clientName}&meeting_id=${meetingId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? agenda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.agenda''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static int? duration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.duration''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? joinurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.join_url''',
      ));
  static String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  static String? starttime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_time''',
      ));
  static String? starturl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_url''',
      ));
  static String? topic(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.topic''',
      ));
  static String? hostemail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.host_email''',
      ));
  static String? hostid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.host_id''',
      ));
  static String? timezone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timezone''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class DeleteMeetingCall {
  static Future<ApiCallResponse> call({
    String? clientName = '',
    String? meetingId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete  Meeting',
      apiUrl:
          'https://proxy.vizsoft.in/https://nocodeplayground.onrender.com/delete_zoom_meeting?client_name=${clientName}&meeting_id=${meetingId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UpdateMeetingCall {
  static Future<ApiCallResponse> call({
    String? clientName = '',
    String? meetingId = '',
    String? topic = '',
    String? startTime = '',
    String? duration = '',
    String? agenda = '',
  }) async {
    final ffApiRequestBody = '''
{
    "topic": "${topic}",
    "start_time": "${startTime}",
    "duration": "${duration}",
    "agenda": "${agenda}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update  Meeting',
      apiUrl:
          'https://proxy.vizsoft.in/https://nocodeplayground.onrender.com/update_zoom_meeting',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'client_name': '${clientName}',
        'meeting_id': '${meetingId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
