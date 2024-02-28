import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/old_version_d_r_i_p/components/message/delete_message_1/delete_message1_widget.dart';
import '/old_version_d_r_i_p/components/message/empty_message/empty_message_widget.dart';
import '/old_version_d_r_i_p/components/message/remove/remove_widget.dart';
import '/old_version_d_r_i_p/components/navigation/mobile/mobile_widget.dart';
import '/old_version_d_r_i_p/components/others/add_button/add_button_widget.dart';
import '/old_version_d_r_i_p/components/others/web_nav/web_nav_widget.dart';
import '/old_version_d_r_i_p/drip/member/add_member/add_member_widget.dart';
import '/old_version_d_r_i_p/drip/member/edit_member/edit_member_widget.dart';
import '/old_version_d_r_i_p/online_classes/user/initial_user_status_check/initial_user_status_check_widget.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  Local state fields for this page.

  String? navName = 'General';

  Color? mainSubmenuColor;

  Color? submenuColor;

  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for RadioButtonSocial widget.
  FormFieldController<String>? radioButtonSocialValueController;
  // State field(s) for RadioButtonPhone widget.
  FormFieldController<String>? radioButtonPhoneValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameController3;
  String? Function(BuildContext, String?)? yourNameController3Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameController4;
  String? Function(BuildContext, String?)? yourNameController4Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode5;
  TextEditingController? yourNameController5;
  String? Function(BuildContext, String?)? yourNameController5Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode6;
  TextEditingController? yourNameController6;
  String? Function(BuildContext, String?)? yourNameController6Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode7;
  TextEditingController? yourNameController7;
  String? Function(BuildContext, String?)? yourNameController7Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode8;
  TextEditingController? yourNameController8;
  String? Function(BuildContext, String?)? yourNameController8Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode9;
  TextEditingController? yourNameController9;
  String? Function(BuildContext, String?)? yourNameController9Validator;
  // State field(s) for emailRecipient widget.
  FocusNode? emailRecipientFocusNode;
  TextEditingController? emailRecipientController;
  String? Function(BuildContext, String?)? emailRecipientControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for RadioButtonWish widget.
  FormFieldController<String>? radioButtonWishValueController;
  // State field(s) for RadioButtonrecomd widget.
  FormFieldController<String>? radioButtonrecomdValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode10;
  TextEditingController? yourNameController10;
  String? Function(BuildContext, String?)? yourNameController10Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode11;
  TextEditingController? yourNameController11;
  String? Function(BuildContext, String?)? yourNameController11Validator;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for RadioButtonTitleLogo widget.
  FormFieldController<String>? radioButtonTitleLogoValueController;
  // State field(s) for RadioButtonBGHide widget.
  FormFieldController<String>? radioButtonBGHideValueController;
  Color? colorPicked;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  // State field(s) for RadioButtonUpcommingClas widget.
  FormFieldController<String>? radioButtonUpcommingClasValueController;
  // State field(s) for RadioButtonOfferCourse widget.
  FormFieldController<String>? radioButtonOfferCourseValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode12;
  TextEditingController? yourNameController12;
  String? Function(BuildContext, String?)? yourNameController12Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode13;
  TextEditingController? yourNameController13;
  String? Function(BuildContext, String?)? yourNameController13Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode14;
  TextEditingController? yourNameController14;
  String? Function(BuildContext, String?)? yourNameController14Validator;
  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode15;
  TextEditingController? yourNameController15;
  String? Function(BuildContext, String?)? yourNameController15Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode16;
  TextEditingController? yourNameController16;
  String? Function(BuildContext, String?)? yourNameController16Validator;
  // State field(s) for haTitle widget.
  FocusNode? haTitleFocusNode;
  TextEditingController? haTitleController;
  String? Function(BuildContext, String?)? haTitleControllerValidator;
  // State field(s) for haSub widget.
  FocusNode? haSubFocusNode;
  TextEditingController? haSubController;
  String? Function(BuildContext, String?)? haSubControllerValidator;
  // State field(s) for haBio widget.
  FocusNode? haBioFocusNode;
  TextEditingController? haBioController;
  String? Function(BuildContext, String?)? haBioControllerValidator;
  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl6 = '';

  // State field(s) for hsTitle widget.
  FocusNode? hsTitleFocusNode;
  TextEditingController? hsTitleController;
  String? Function(BuildContext, String?)? hsTitleControllerValidator;
  // State field(s) for hsSubtitle widget.
  FocusNode? hsSubtitleFocusNode;
  TextEditingController? hsSubtitleController;
  String? Function(BuildContext, String?)? hsSubtitleControllerValidator;
  // State field(s) for hsBio widget.
  FocusNode? hsBioFocusNode;
  TextEditingController? hsBioController;
  String? Function(BuildContext, String?)? hsBioControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode17;
  TextEditingController? yourNameController17;
  String? Function(BuildContext, String?)? yourNameController17Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode18;
  TextEditingController? yourNameController18;
  String? Function(BuildContext, String?)? yourNameController18Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode19;
  TextEditingController? yourNameController19;
  String? Function(BuildContext, String?)? yourNameController19Validator;
  bool isDataUploading7 = false;
  FFUploadedFile uploadedLocalFile7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl7 = '';

  // State field(s) for aTitle widget.
  FocusNode? aTitleFocusNode;
  TextEditingController? aTitleController;
  String? Function(BuildContext, String?)? aTitleControllerValidator;
  // State field(s) for aSubtitle widget.
  FocusNode? aSubtitleFocusNode;
  TextEditingController? aSubtitleController;
  String? Function(BuildContext, String?)? aSubtitleControllerValidator;
  // State field(s) for aBio widget.
  FocusNode? aBioFocusNode;
  TextEditingController? aBioController;
  String? Function(BuildContext, String?)? aBioControllerValidator;
  bool isDataUploading8 = false;
  FFUploadedFile uploadedLocalFile8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl8 = '';

  // State field(s) for input widget.
  FocusNode? inputFocusNode1;
  TextEditingController? inputController1;
  String? Function(BuildContext, String?)? inputController1Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode2;
  TextEditingController? inputController2;
  String? Function(BuildContext, String?)? inputController2Validator;
  // State field(s) for input widget.
  FocusNode? inputFocusNode3;
  TextEditingController? inputController3;
  String? Function(BuildContext, String?)? inputController3Validator;
  // Model for Add_button component.
  late AddButtonModel addButtonModel;
  // State field(s) for input widget.
  FocusNode? inputFocusNode4;
  TextEditingController? inputController4;
  String? Function(BuildContext, String?)? inputController4Validator;
  // State field(s) for yourTeam widget.
  FocusNode? yourTeamFocusNode;
  TextEditingController? yourTeamController;
  String? Function(BuildContext, String?)? yourTeamControllerValidator;
  // State field(s) for yourTeamSubtitle widget.
  FocusNode? yourTeamSubtitleFocusNode;
  TextEditingController? yourTeamSubtitleController;
  String? Function(BuildContext, String?)? yourTeamSubtitleControllerValidator;
  // State field(s) for yourTeamBio widget.
  FocusNode? yourTeamBioFocusNode;
  TextEditingController? yourTeamBioController;
  String? Function(BuildContext, String?)? yourTeamBioControllerValidator;
  // Model for Mobile component.
  late MobileModel mobileModel;
  // Model for initialUserStatusCheck component.
  late InitialUserStatusCheckModel initialUserStatusCheckModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    addButtonModel = createModel(context, () => AddButtonModel());
    mobileModel = createModel(context, () => MobileModel());
    initialUserStatusCheckModel =
        createModel(context, () => InitialUserStatusCheckModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameController3?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameController4?.dispose();

    yourNameFocusNode5?.dispose();
    yourNameController5?.dispose();

    yourNameFocusNode6?.dispose();
    yourNameController6?.dispose();

    yourNameFocusNode7?.dispose();
    yourNameController7?.dispose();

    yourNameFocusNode8?.dispose();
    yourNameController8?.dispose();

    yourNameFocusNode9?.dispose();
    yourNameController9?.dispose();

    emailRecipientFocusNode?.dispose();
    emailRecipientController?.dispose();

    yourNameFocusNode10?.dispose();
    yourNameController10?.dispose();

    yourNameFocusNode11?.dispose();
    yourNameController11?.dispose();

    yourNameFocusNode12?.dispose();
    yourNameController12?.dispose();

    yourNameFocusNode13?.dispose();
    yourNameController13?.dispose();

    yourNameFocusNode14?.dispose();
    yourNameController14?.dispose();

    yourNameFocusNode15?.dispose();
    yourNameController15?.dispose();

    yourNameFocusNode16?.dispose();
    yourNameController16?.dispose();

    haTitleFocusNode?.dispose();
    haTitleController?.dispose();

    haSubFocusNode?.dispose();
    haSubController?.dispose();

    haBioFocusNode?.dispose();
    haBioController?.dispose();

    hsTitleFocusNode?.dispose();
    hsTitleController?.dispose();

    hsSubtitleFocusNode?.dispose();
    hsSubtitleController?.dispose();

    hsBioFocusNode?.dispose();
    hsBioController?.dispose();

    yourNameFocusNode17?.dispose();
    yourNameController17?.dispose();

    yourNameFocusNode18?.dispose();
    yourNameController18?.dispose();

    yourNameFocusNode19?.dispose();
    yourNameController19?.dispose();

    aTitleFocusNode?.dispose();
    aTitleController?.dispose();

    aSubtitleFocusNode?.dispose();
    aSubtitleController?.dispose();

    aBioFocusNode?.dispose();
    aBioController?.dispose();

    inputFocusNode1?.dispose();
    inputController1?.dispose();

    inputFocusNode2?.dispose();
    inputController2?.dispose();

    inputFocusNode3?.dispose();
    inputController3?.dispose();

    addButtonModel.dispose();
    inputFocusNode4?.dispose();
    inputController4?.dispose();

    yourTeamFocusNode?.dispose();
    yourTeamController?.dispose();

    yourTeamSubtitleFocusNode?.dispose();
    yourTeamSubtitleController?.dispose();

    yourTeamBioFocusNode?.dispose();
    yourTeamBioController?.dispose();

    mobileModel.dispose();
    initialUserStatusCheckModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonSocialValue => radioButtonSocialValueController?.value;
  String? get radioButtonPhoneValue => radioButtonPhoneValueController?.value;
  String? get radioButtonWishValue => radioButtonWishValueController?.value;
  String? get radioButtonrecomdValue => radioButtonrecomdValueController?.value;
  String? get radioButtonTitleLogoValue =>
      radioButtonTitleLogoValueController?.value;
  String? get radioButtonBGHideValue => radioButtonBGHideValueController?.value;
  String? get radioButtonUpcommingClasValue =>
      radioButtonUpcommingClasValueController?.value;
  String? get radioButtonOfferCourseValue =>
      radioButtonOfferCourseValueController?.value;
}
