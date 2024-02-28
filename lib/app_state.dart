import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _currentUserRole =
          prefs.getString('ff_currentUserRole') ?? _currentUserRole;
    });
    _safeInit(() {
      _videoUploadList =
          prefs.getStringList('ff_videoUploadList') ?? _videoUploadList;
    });
    _safeInit(() {
      _VideoList =
          prefs.getStringList('ff_VideoList')?.map(int.parse).toList() ??
              _VideoList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _courseImgGallery = [];
  List<String> get courseImgGallery => _courseImgGallery;
  set courseImgGallery(List<String> _value) {
    _courseImgGallery = _value;
  }

  void addToCourseImgGallery(String _value) {
    _courseImgGallery.add(_value);
  }

  void removeFromCourseImgGallery(String _value) {
    _courseImgGallery.remove(_value);
  }

  void removeAtIndexFromCourseImgGallery(int _index) {
    _courseImgGallery.removeAt(_index);
  }

  void updateCourseImgGalleryAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _courseImgGallery[_index] = updateFn(_courseImgGallery[_index]);
  }

  void insertAtIndexInCourseImgGallery(int _index, String _value) {
    _courseImgGallery.insert(_index, _value);
  }

  String _courseImgFeature = '';
  String get courseImgFeature => _courseImgFeature;
  set courseImgFeature(String _value) {
    _courseImgFeature = _value;
  }

  String _courseCatImg = '';
  String get courseCatImg => _courseCatImg;
  set courseCatImg(String _value) {
    _courseCatImg = _value;
  }

  String _video = '';
  String get video => _video;
  set video(String _value) {
    _video = _value;
  }

  String _file = '';
  String get file => _file;
  set file(String _value) {
    _file = _value;
  }

  int _menuExpandValue = 270;
  int get menuExpandValue => _menuExpandValue;
  set menuExpandValue(int _value) {
    _menuExpandValue = _value;
  }

  int _countryChange = 1;
  int get countryChange => _countryChange;
  set countryChange(int _value) {
    _countryChange = _value;
  }

  int _universityChange = 1;
  int get universityChange => _universityChange;
  set universityChange(int _value) {
    _universityChange = _value;
  }

  int _branchChange = 1;
  int get branchChange => _branchChange;
  set branchChange(int _value) {
    _branchChange = _value;
  }

  bool _iconstatus = true;
  bool get iconstatus => _iconstatus;
  set iconstatus(bool _value) {
    _iconstatus = _value;
  }

  int _naviconstatus = 1;
  int get naviconstatus => _naviconstatus;
  set naviconstatus(int _value) {
    _naviconstatus = _value;
  }

  int _refresh = 0;
  int get refresh => _refresh;
  set refresh(int _value) {
    _refresh = _value;
  }

  String _secreatKey = 'sk_live_mr7M39x4WlAibkjQLf8OEXCs';
  String get secreatKey => _secreatKey;
  set secreatKey(String _value) {
    _secreatKey = _value;
  }

  DocumentReference? _batchesRef;
  DocumentReference? get batchesRef => _batchesRef;
  set batchesRef(DocumentReference? _value) {
    _batchesRef = _value;
  }

  String _DYNapiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ2aWtyYW1Adml6c29mdC5pbiIsImp0aSI6ImY5ZjY0MmRmLTU5YzgtNDhlOS04ZGExLTBjYmU4MjExYzllZiIsInVzZXJJZCI6IjY0Y2EyYzhmZWIzNTI0ZmE0Zjk1ZTY2ZSIsImFjY291bnRJZCI6ImdYdzlWU1N2RGtDNWV3R1ZyQ2xvUSIsImV4cCI6MjUzNDAyMzAwODAwLCJpc3MiOiJodHRwczovL2R5bnR1YmUuY29tIiwiYXVkIjoiTWFuYWdlIn0.bkFfEwJ-v1ZtqLEku_MlDSQ6hkWqyHwn1OnfbmW2Q8c';
  String get DYNapiKey => _DYNapiKey;
  set DYNapiKey(String _value) {
    _DYNapiKey = _value;
  }

  int _videoCount = 0;
  int get videoCount => _videoCount;
  set videoCount(int _value) {
    _videoCount = _value;
  }

  DocumentReference? _videoRef;
  DocumentReference? get videoRef => _videoRef;
  set videoRef(DocumentReference? _value) {
    _videoRef = _value;
  }

  String _checkStatus = '';
  String get checkStatus => _checkStatus;
  set checkStatus(String _value) {
    _checkStatus = _value;
  }

  List<String> _userPhoneList = [];
  List<String> get userPhoneList => _userPhoneList;
  set userPhoneList(List<String> _value) {
    _userPhoneList = _value;
  }

  void addToUserPhoneList(String _value) {
    _userPhoneList.add(_value);
  }

  void removeFromUserPhoneList(String _value) {
    _userPhoneList.remove(_value);
  }

  void removeAtIndexFromUserPhoneList(int _index) {
    _userPhoneList.removeAt(_index);
  }

  void updateUserPhoneListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _userPhoneList[_index] = updateFn(_userPhoneList[_index]);
  }

  void insertAtIndexInUserPhoneList(int _index, String _value) {
    _userPhoneList.insert(_index, _value);
  }

  List<DocumentReference> _userRefList = [];
  List<DocumentReference> get userRefList => _userRefList;
  set userRefList(List<DocumentReference> _value) {
    _userRefList = _value;
  }

  void addToUserRefList(DocumentReference _value) {
    _userRefList.add(_value);
  }

  void removeFromUserRefList(DocumentReference _value) {
    _userRefList.remove(_value);
  }

  void removeAtIndexFromUserRefList(int _index) {
    _userRefList.removeAt(_index);
  }

  void updateUserRefListAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _userRefList[_index] = updateFn(_userRefList[_index]);
  }

  void insertAtIndexInUserRefList(int _index, DocumentReference _value) {
    _userRefList.insert(_index, _value);
  }

  int _categoryChange = 1;
  int get categoryChange => _categoryChange;
  set categoryChange(int _value) {
    _categoryChange = _value;
  }

  String _presentUserRole = '';
  String get presentUserRole => _presentUserRole;
  set presentUserRole(String _value) {
    _presentUserRole = _value;
  }

  String _userMainRole = 'Instructor';
  String get userMainRole => _userMainRole;
  set userMainRole(String _value) {
    _userMainRole = _value;
  }

  String _currentUserRole = '';
  String get currentUserRole => _currentUserRole;
  set currentUserRole(String _value) {
    _currentUserRole = _value;
    prefs.setString('ff_currentUserRole', _value);
  }

  List<String> _videoUploadList = [];
  List<String> get videoUploadList => _videoUploadList;
  set videoUploadList(List<String> _value) {
    _videoUploadList = _value;
    prefs.setStringList('ff_videoUploadList', _value);
  }

  void addToVideoUploadList(String _value) {
    _videoUploadList.add(_value);
    prefs.setStringList('ff_videoUploadList', _videoUploadList);
  }

  void removeFromVideoUploadList(String _value) {
    _videoUploadList.remove(_value);
    prefs.setStringList('ff_videoUploadList', _videoUploadList);
  }

  void removeAtIndexFromVideoUploadList(int _index) {
    _videoUploadList.removeAt(_index);
    prefs.setStringList('ff_videoUploadList', _videoUploadList);
  }

  void updateVideoUploadListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _videoUploadList[_index] = updateFn(_videoUploadList[_index]);
    prefs.setStringList('ff_videoUploadList', _videoUploadList);
  }

  void insertAtIndexInVideoUploadList(int _index, String _value) {
    _videoUploadList.insert(_index, _value);
    prefs.setStringList('ff_videoUploadList', _videoUploadList);
  }

  List<int> _VideoList = [];
  List<int> get VideoList => _VideoList;
  set VideoList(List<int> _value) {
    _VideoList = _value;
    prefs.setStringList(
        'ff_VideoList', _value.map((x) => x.toString()).toList());
  }

  void addToVideoList(int _value) {
    _VideoList.add(_value);
    prefs.setStringList(
        'ff_VideoList', _VideoList.map((x) => x.toString()).toList());
  }

  void removeFromVideoList(int _value) {
    _VideoList.remove(_value);
    prefs.setStringList(
        'ff_VideoList', _VideoList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromVideoList(int _index) {
    _VideoList.removeAt(_index);
    prefs.setStringList(
        'ff_VideoList', _VideoList.map((x) => x.toString()).toList());
  }

  void updateVideoListAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _VideoList[_index] = updateFn(_VideoList[_index]);
    prefs.setStringList(
        'ff_VideoList', _VideoList.map((x) => x.toString()).toList());
  }

  void insertAtIndexInVideoList(int _index, int _value) {
    _VideoList.insert(_index, _value);
    prefs.setStringList(
        'ff_VideoList', _VideoList.map((x) => x.toString()).toList());
  }

  List<String> _answerList = [];
  List<String> get answerList => _answerList;
  set answerList(List<String> _value) {
    _answerList = _value;
  }

  void addToAnswerList(String _value) {
    _answerList.add(_value);
  }

  void removeFromAnswerList(String _value) {
    _answerList.remove(_value);
  }

  void removeAtIndexFromAnswerList(int _index) {
    _answerList.removeAt(_index);
  }

  void updateAnswerListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _answerList[_index] = updateFn(_answerList[_index]);
  }

  void insertAtIndexInAnswerList(int _index, String _value) {
    _answerList.insert(_index, _value);
  }

  int _menuVariableValue = 85;
  int get menuVariableValue => _menuVariableValue;
  set menuVariableValue(int _value) {
    _menuVariableValue = _value;
  }

  List<ZoomClassesStruct> _zoomClass = [];
  List<ZoomClassesStruct> get zoomClass => _zoomClass;
  set zoomClass(List<ZoomClassesStruct> _value) {
    _zoomClass = _value;
  }

  void addToZoomClass(ZoomClassesStruct _value) {
    _zoomClass.add(_value);
  }

  void removeFromZoomClass(ZoomClassesStruct _value) {
    _zoomClass.remove(_value);
  }

  void removeAtIndexFromZoomClass(int _index) {
    _zoomClass.removeAt(_index);
  }

  void updateZoomClassAtIndex(
    int _index,
    ZoomClassesStruct Function(ZoomClassesStruct) updateFn,
  ) {
    _zoomClass[_index] = updateFn(_zoomClass[_index]);
  }

  void insertAtIndexInZoomClass(int _index, ZoomClassesStruct _value) {
    _zoomClass.insert(_index, _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
