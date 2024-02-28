import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomeWidget() : SignINWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : SignINWidget(),
          routes: [
            FFRoute(
              name: 'SignUP',
              path: 'register',
              builder: (context, params) => SignUPWidget(),
            ),
            FFRoute(
              name: 'SignIN',
              path: 'login',
              builder: (context, params) => SignINWidget(),
            ),
            FFRoute(
              name: 'ForgotPASSWORD',
              path: 'forgot-password',
              builder: (context, params) => ForgotPASSWORDWidget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'home',
              requireAuth: true,
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'Course',
              path: 'course',
              requireAuth: true,
              builder: (context, params) => CourseWidget(),
            ),
            FFRoute(
              name: 'ProfilePage',
              path: 'my-profile',
              requireAuth: true,
              builder: (context, params) => ProfilePageWidget(),
            ),
            FFRoute(
              name: 'Chapters',
              path: 'chapter',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
              },
              builder: (context, params) => ChaptersWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                chapterRef: params.getParam('chapterRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'order',
              path: 'order',
              requireAuth: true,
              asyncParams: {
                'coupoRef': getDoc(['coupon'], CouponRecord.fromSnapshot),
              },
              builder: (context, params) => OrderWidget(
                orderType: params.getParam('orderType', ParamType.String),
                coupoRef: params.getParam('coupoRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'EditProfile',
              path: 'edit-profile',
              requireAuth: true,
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: 'searchPage',
              path: 'search',
              requireAuth: true,
              builder: (context, params) => SearchPageWidget(),
            ),
            FFRoute(
              name: 'Phone',
              path: 'phone-login',
              builder: (context, params) => PhoneWidget(),
            ),
            FFRoute(
              name: 'PhoneVerification',
              path: 'phone-verification',
              builder: (context, params) => PhoneVerificationWidget(
                phoneNumber: params.getParam('phoneNumber', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'ChangePassword',
              path: 'change-password',
              builder: (context, params) => ChangePasswordWidget(),
            ),
            FFRoute(
              name: 'CourseCategory',
              path: 'course-category',
              requireAuth: true,
              builder: (context, params) => CourseCategoryWidget(),
            ),
            FFRoute(
              name: 'CourseFORM',
              path: 'course-form',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => CourseFORMWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CourseCategoryFORM',
              path: 'course-category-form',
              requireAuth: true,
              asyncParams: {
                'courseCategoryRef': getDoc(
                    ['courseCategory'], CourseCategoryRecord.fromSnapshot),
              },
              builder: (context, params) => CourseCategoryFORMWidget(
                courseCategoryRef:
                    params.getParam('courseCategoryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'UnderProcess',
              path: 'UnderProcess',
              requireAuth: true,
              builder: (context, params) => UnderProcessWidget(),
            ),
            FFRoute(
              name: 'ChapterFORM',
              path: 'chapter-form',
              requireAuth: true,
              asyncParams: {
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => ChapterFORMWidget(
                chapterRef: params.getParam('chapterRef', ParamType.Document),
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Lesson',
              path: 'lesson',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
              },
              builder: (context, params) => LessonWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                chapterRef: params.getParam('chapterRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'LessonFORM',
              path: 'lesson-form',
              requireAuth: true,
              asyncParams: {
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'lessonRef': getDoc(['lessons'], LessonsRecord.fromSnapshot),
              },
              builder: (context, params) => LessonFORMWidget(
                chapterRef: params.getParam('chapterRef', ParamType.Document),
                courseRef: params.getParam('courseRef', ParamType.Document),
                lessonRef: params.getParam('lessonRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Booking',
              path: 'Booking',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => BookingWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Meeting',
              path: 'meeting',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => MeetingWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'MeetingFORM',
              path: 'meeting-form',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => MeetingFORMWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Settings',
              path: 'setting',
              requireAuth: true,
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: 'BugReport',
              path: 'bug-report',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => BugReportWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Users',
              path: 'user',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => UsersWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Edit_user',
              path: 'edit-user',
              requireAuth: true,
              asyncParams: {
                'userRef': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => EditUserWidget(
                userRef: params.getParam('userRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Students',
              path: 'student',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => StudentsWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Announcement',
              path: 'announcement',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => AnnouncementWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AccouncementFORM',
              path: 'edit-accouncement',
              requireAuth: true,
              asyncParams: {
                'annRef':
                    getDoc(['announcement'], AnnouncementRecord.fromSnapshot),
              },
              builder: (context, params) => AccouncementFORMWidget(
                annRef: params.getParam('annRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'InstructorSettings',
              path: 'instructor-setting',
              requireAuth: true,
              builder: (context, params) => InstructorSettingsWidget(),
            ),
            FFRoute(
              name: 'Review',
              path: 'review',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => ReviewWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'InstructorRequest',
              path: 'instructor-request',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => InstructorRequestWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Zoom_classes',
              path: 'zoom-classes',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
                'lessonRef': getDoc(['lessons'], LessonsRecord.fromSnapshot),
              },
              builder: (context, params) => ZoomClassesWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                chapterRef: params.getParam('chapterRef', ParamType.Document),
                lessonRef: params.getParam('lessonRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ZoomclassesFORM',
              path: 'zoom-classes-form',
              requireAuth: true,
              asyncParams: {
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'lessonRef': getDoc(['lessons'], LessonsRecord.fromSnapshot),
                'zoomLessonRef':
                    getDoc(['zoomCourse'], ZoomCourseRecord.fromSnapshot),
              },
              builder: (context, params) => ZoomclassesFORMWidget(
                chapterRef: params.getParam('chapterRef', ParamType.Document),
                courseRef: params.getParam('courseRef', ParamType.Document),
                lessonRef: params.getParam('lessonRef', ParamType.Document),
                zoomLessonRef:
                    params.getParam('zoomLessonRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Poll',
              path: 'poll',
              requireAuth: true,
              builder: (context, params) => PollWidget(),
            ),
            FFRoute(
              name: 'Poll_answer',
              path: 'poll-answer',
              requireAuth: true,
              asyncParams: {
                'pollRef': getDoc(['poll'], PollRecord.fromSnapshot),
              },
              builder: (context, params) => PollAnswerWidget(
                pollRef: params.getParam('pollRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'PollFORM',
              path: 'poll-form',
              requireAuth: true,
              asyncParams: {
                'pollRef': getDoc(['poll'], PollRecord.fromSnapshot),
              },
              builder: (context, params) => PollFORMWidget(
                pollRef: params.getParam('pollRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'PollAnswerFORM',
              path: 'poll-answer-form',
              requireAuth: true,
              asyncParams: {
                'pollAnswerRef':
                    getDoc(['pollAnswer'], PollAnswerRecord.fromSnapshot),
                'pollRef': getDoc(['poll'], PollRecord.fromSnapshot),
              },
              builder: (context, params) => PollAnswerFORMWidget(
                pollAnswerRef:
                    params.getParam('pollAnswerRef', ParamType.Document),
                pollRef: params.getParam('pollRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AllReview',
              path: 'reviews',
              requireAuth: true,
              builder: (context, params) => AllReviewWidget(),
            ),
            FFRoute(
              name: 'Singleorder',
              path: 'single-order',
              requireAuth: true,
              asyncParams: {
                'orderRef': getDoc(['orders'], OrdersRecord.fromSnapshot),
              },
              builder: (context, params) => SingleorderWidget(
                orderRef: params.getParam('orderRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Batch',
              path: 'Batch',
              requireAuth: true,
              builder: (context, params) => BatchWidget(),
            ),
            FFRoute(
              name: 'BatchList',
              path: 'BatchList',
              requireAuth: true,
              asyncParams: {
                'batchRef': getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => BatchListWidget(
                batchRef: params.getParam('batchRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'BatchFORM',
              path: 'BatchFORM',
              requireAuth: true,
              asyncParams: {
                'batchRef': getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => BatchFORMWidget(
                batchRef: params.getParam('batchRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'mainBatchStatusChangesProcess',
              path: 'batchStatusChangesProcess',
              requireAuth: true,
              asyncParams: {
                'batchesRef': getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => MainBatchStatusChangesProcessWidget(
                batchesRef: params.getParam('batchesRef', ParamType.Document),
                batchesStatus:
                    params.getParam('batchesStatus', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'batchChngCourseProces',
              path: 'batchStatusCourseProces',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => BatchChngCourseProcesWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                prevBatchesRef: params.getParam('prevBatchesRef',
                    ParamType.DocumentReference, false, ['batches']),
                prevBatchesStatus:
                    params.getParam('prevBatchesStatus', ParamType.String),
                presentBatchRef: params.getParam('presentBatchRef',
                    ParamType.DocumentReference, false, ['batches']),
                presentBatchesStatus:
                    params.getParam('presentBatchesStatus', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'batchCourseListProces',
              path: 'batchCourseListProces',
              requireAuth: true,
              builder: (context, params) => BatchCourseListProcesWidget(
                courseRef: params.getParam('courseRef',
                    ParamType.DocumentReference, false, ['course']),
                batchRef: params.getParam('batchRef',
                    ParamType.DocumentReference, false, ['batches']),
                batchesStatus:
                    params.getParam('batchesStatus', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'CouponFORM',
              path: 'CouponFORM',
              requireAuth: true,
              asyncParams: {
                'couponRef': getDoc(['coupon'], CouponRecord.fromSnapshot),
              },
              builder: (context, params) => CouponFORMWidget(
                couponRef: params.getParam('couponRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Coupon',
              path: 'coupon',
              requireAuth: true,
              builder: (context, params) => CouponWidget(),
            ),
            FFRoute(
              name: 'Video_management',
              path: 'videoManagement',
              requireAuth: true,
              builder: (context, params) => VideoManagementWidget(),
            ),
            FFRoute(
              name: 'VideoFORM',
              path: 'VideoFORM',
              requireAuth: true,
              asyncParams: {
                'videoRef': getDoc(['videos'], VideosRecord.fromSnapshot),
              },
              builder: (context, params) => VideoFORMWidget(
                videoRef: params.getParam('videoRef', ParamType.Document),
                otp: params.getParam('otp', ParamType.String),
                playbackinfo: params.getParam('playbackinfo', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'BulkSMSMarketing',
              path: 'bulk-sms-marketing',
              requireAuth: true,
              builder: (context, params) => BulkSMSMarketingWidget(),
            ),
            FFRoute(
              name: 'BulkSMSMarketingFORM',
              path: 'BulkSMSMarketingFORM',
              requireAuth: true,
              builder: (context, params) => BulkSMSMarketingFORMWidget(),
            ),
            FFRoute(
              name: 'TranslationCourse',
              path: 'translationCourse',
              requireAuth: true,
              builder: (context, params) => TranslationCourseWidget(),
            ),
            FFRoute(
              name: 'TranslationCourseFORM',
              path: 'TranslationCourseFORM',
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationCourseFORMWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationChapterFORM',
              path: 'TranslationChapterFORM',
              asyncParams: {
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationChapterFORMWidget(
                chapterRef: params.getParam('chapterRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationLessonFORM',
              path: 'TranslationLessonFORM',
              asyncParams: {
                'lessonRef': getDoc(['lessons'], LessonsRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationLessonFORMWidget(
                lessonRef: params.getParam('lessonRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationZoomLessonFORM',
              path: 'TranslationZoomLessonFORM',
              asyncParams: {
                'zoomLessonRef':
                    getDoc(['zoomCourse'], ZoomCourseRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationZoomLessonFORMWidget(
                zoomLessonRef:
                    params.getParam('zoomLessonRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationAnnouncementFORM',
              path: 'TranslationAnnouncementFORM',
              asyncParams: {
                'announcementRef':
                    getDoc(['announcement'], AnnouncementRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationAnnouncementFORMWidget(
                announcementRef:
                    params.getParam('announcementRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationCourseCategoryFORM',
              path: 'TranslationCourseCategoryFORM',
              asyncParams: {
                'courseCatRef': getDoc(
                    ['courseCategory'], CourseCategoryRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationCourseCategoryFORMWidget(
                courseCatRef:
                    params.getParam('courseCatRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationCategory',
              path: 'translationCategory',
              requireAuth: true,
              builder: (context, params) => TranslationCategoryWidget(),
            ),
            FFRoute(
              name: 'TranslationMeetingFORM',
              path: 'TranslationMeetingFORM',
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationMeetingFORMWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationPollFORM',
              path: 'TranslationPollFORM',
              asyncParams: {
                'pollRef': getDoc(['poll'], PollRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationPollFORMWidget(
                pollRef: params.getParam('pollRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationPollAnswerFORM',
              path: 'TranslationPollAnswerFORM',
              asyncParams: {
                'pollAnsRef':
                    getDoc(['pollAnswer'], PollAnswerRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationPollAnswerFORMWidget(
                pollAnsRef: params.getParam('pollAnsRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationBatchFORM',
              path: 'TranslationBatchFORM',
              asyncParams: {
                'batchesRef': getDoc(['batches'], BatchesRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationBatchFORMWidget(
                batchesRef: params.getParam('batchesRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationCountryFORM',
              path: 'TranslationCountryFORM',
              asyncParams: {
                'countryRef': getDoc(['country'], CountryRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationCountryFORMWidget(
                countryRef: params.getParam('countryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationUniversityFORM',
              path: 'TranslationUniversityFORM',
              asyncParams: {
                'universityRef':
                    getDoc(['university'], UniversityRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationUniversityFORMWidget(
                universityRef:
                    params.getParam('universityRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationBranchFORM',
              path: 'TranslationBranchFORM',
              asyncParams: {
                'branchRef': getDoc(['branch'], BranchRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationBranchFORMWidget(
                branchRef: params.getParam('branchRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationSettingFORM',
              path: 'TranslationSettingFORM',
              asyncParams: {
                'settingsRef':
                    getDoc(['settings'], SettingsRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationSettingFORMWidget(
                settingsRef: params.getParam('settingsRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationChapter',
              path: 'translationChapter',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationChapterWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationMeeting',
              path: 'translationMeeting',
              requireAuth: true,
              builder: (context, params) => TranslationMeetingWidget(),
            ),
            FFRoute(
              name: 'TranslationCountry',
              path: 'translationCountry',
              requireAuth: true,
              builder: (context, params) => TranslationCountryWidget(),
            ),
            FFRoute(
              name: 'TranslationUniversity',
              path: 'translationUniversity',
              requireAuth: true,
              builder: (context, params) => TranslationUniversityWidget(),
            ),
            FFRoute(
              name: 'TranslationBranch',
              path: 'translationBranch',
              requireAuth: true,
              builder: (context, params) => TranslationBranchWidget(),
            ),
            FFRoute(
              name: 'TranslationBatch',
              path: 'translationBatch',
              requireAuth: true,
              builder: (context, params) => TranslationBatchWidget(),
            ),
            FFRoute(
              name: 'TranslationPoll',
              path: 'translationPoll',
              requireAuth: true,
              builder: (context, params) => TranslationPollWidget(),
            ),
            FFRoute(
              name: 'TranslationLesson',
              path: 'translationLesson',
              requireAuth: true,
              asyncParams: {
                'chapterRef': getDoc(['chapter'], ChapterRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationLessonWidget(
                chapterRef: params.getParam('chapterRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationZoomLesson',
              path: 'translationZoomLesson',
              requireAuth: true,
              asyncParams: {
                'lessonRef': getDoc(['lessons'], LessonsRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationZoomLessonWidget(
                lessonRef: params.getParam('lessonRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'TranslationAnnouncement',
              path: 'translationAnnouncement',
              requireAuth: true,
              builder: (context, params) => TranslationAnnouncementWidget(),
            ),
            FFRoute(
              name: 'TranslationPollAnswer',
              path: 'translationPollAnswer',
              requireAuth: true,
              asyncParams: {
                'pollRef': getDoc(['poll'], PollRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationPollAnswerWidget(
                pollRef: params.getParam('pollRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Category',
              path: 'category',
              requireAuth: true,
              asyncParams: {
                'countryRef': getDoc(['country'], CountryRecord.fromSnapshot),
                'universityRef':
                    getDoc(['university'], UniversityRecord.fromSnapshot),
              },
              builder: (context, params) => CategoryWidget(
                countryRef: params.getParam('countryRef', ParamType.Document),
                universityRef:
                    params.getParam('universityRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CategoryFORM',
              path: 'category-form',
              requireAuth: true,
              asyncParams: {
                'countryRef': getDoc(['country'], CountryRecord.fromSnapshot),
                'universityRef':
                    getDoc(['university'], UniversityRecord.fromSnapshot),
                'categoryRef':
                    getDoc(['category'], CategoryRecord.fromSnapshot),
              },
              builder: (context, params) => CategoryFORMWidget(
                countryRef: params.getParam('countryRef', ParamType.Document),
                universityRef:
                    params.getParam('universityRef', ParamType.Document),
                categoryRef: params.getParam('categoryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'translationMainCategory',
              path: 'translationMainCategory',
              requireAuth: true,
              builder: (context, params) => TranslationMainCategoryWidget(),
            ),
            FFRoute(
              name: 'TranslationMainCategoryFORM',
              path: 'translationMainCategoryFORM',
              asyncParams: {
                'categoryRef':
                    getDoc(['category'], CategoryRecord.fromSnapshot),
              },
              builder: (context, params) => TranslationMainCategoryFORMWidget(
                categoryRef: params.getParam('categoryRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'BulkSMSForm',
              path: 'BulkSMSForm',
              requireAuth: true,
              builder: (context, params) => BulkSMSFormWidget(),
            ),
            FFRoute(
              name: 'CourseFORMCopy',
              path: 'course-form-copy',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => CourseFORMCopyWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Email_log',
              path: 'Email_log',
              requireAuth: true,
              builder: (context, params) => EmailLogWidget(),
            ),
            FFRoute(
              name: 'Session_log',
              path: 'Session_log',
              requireAuth: true,
              builder: (context, params) => SessionLogWidget(),
            ),
            FFRoute(
              name: 'Activity_log',
              path: 'Activity_log',
              requireAuth: true,
              builder: (context, params) => ActivityLogWidget(),
            ),
            FFRoute(
              name: 'HalloweenUsers',
              path: 'HalloweenUsers',
              requireAuth: true,
              builder: (context, params) => HalloweenUsersWidget(),
            ),
            FFRoute(
              name: 'FORM',
              path: 'form',
              requireAuth: true,
              builder: (context, params) => FormWidget(),
            ),
            FFRoute(
              name: 'Question',
              path: 'question',
              requireAuth: true,
              asyncParams: {
                'formRef': getDoc(['form'], FormRecord.fromSnapshot),
              },
              builder: (context, params) => QuestionWidget(
                formRef: params.getParam('formRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'FORMReport',
              path: 'FORMReport',
              requireAuth: true,
              asyncParams: {
                'formRef': getDoc(['form'], FormRecord.fromSnapshot),
              },
              builder: (context, params) => FORMReportWidget(
                formRef: params.getParam('formRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CoursePlan',
              path: 'CoursePlan',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => CoursePlanWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CoursePlanFORM',
              path: 'CoursePlanFORM',
              requireAuth: true,
              asyncParams: {
                'planRef':
                    getDoc(['coursePlan'], CoursePlanRecord.fromSnapshot),
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => CoursePlanFORMWidget(
                planRef: params.getParam('planRef', ParamType.Document),
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Classes',
              path: 'Classes',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
              },
              builder: (context, params) => ClassesWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ClassFORM',
              path: 'ClassFORM',
              requireAuth: true,
              asyncParams: {
                'classesRef': getDoc(['classes'], ClassesRecord.fromSnapshot),
              },
              builder: (context, params) => ClassFORMWidget(
                classesRef: params.getParam('classesRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ClassBooking',
              path: 'ClassBooking',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'classRef': getDoc(['classes'], ClassesRecord.fromSnapshot),
              },
              builder: (context, params) => ClassBookingWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                classRef: params.getParam('classRef', ParamType.Document),
                bookDate: params.getParam('bookDate', ParamType.DateTime),
              ),
            ),
            FFRoute(
              name: 'OnlineZoomClassList',
              path: 'zoom-online-classes',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'classesRef': getDoc(['classes'], ClassesRecord.fromSnapshot),
              },
              builder: (context, params) => OnlineZoomClassListWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                classesRef: params.getParam('classesRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'UpcomingClass',
              path: 'Classpage',
              requireAuth: true,
              builder: (context, params) => UpcomingClassWidget(),
            ),
            FFRoute(
              name: 'SessionList',
              path: 'sessionList',
              requireAuth: true,
              builder: (context, params) => SessionListWidget(),
            ),
            FFRoute(
              name: 'UpcomingClassList',
              path: 'upcomingClassList',
              requireAuth: true,
              builder: (context, params) => UpcomingClassListWidget(),
            ),
            FFRoute(
              name: 'AddClass',
              path: 'addClass',
              requireAuth: true,
              asyncParams: {
                'session': getDoc(['ff_post'], FfPostRecord.fromSnapshot),
              },
              builder: (context, params) => AddClassWidget(
                session: params.getParam('session', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ClassBookingNew',
              path: 'ClassBookingNew',
              requireAuth: true,
              asyncParams: {
                'courseRef': getDoc(['course'], CourseRecord.fromSnapshot),
                'classRef': getDoc(['classes'], ClassesRecord.fromSnapshot),
              },
              builder: (context, params) => ClassBookingNewWidget(
                courseRef: params.getParam('courseRef', ParamType.Document),
                classRef: params.getParam('classRef', ParamType.Document),
                bookDate: params.getParam('bookDate', ParamType.DateTime),
              ),
            ),
            FFRoute(
              name: 'AddSession',
              path: 'AddSession',
              requireAuth: true,
              builder: (context, params) => AddSessionWidget(),
            ),
            FFRoute(
              name: 'ClassList',
              path: 'classList',
              requireAuth: true,
              asyncParams: {
                'session': getDoc(['ff_post'], FfPostRecord.fromSnapshot),
              },
              builder: (context, params) => ClassListWidget(
                session: params.getParam('session', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ClassInfo',
              path: 'classInfo',
              requireAuth: true,
              builder: (context, params) => ClassInfoWidget(),
            ),
            FFRoute(
              name: 'EditSession',
              path: 'EditSession',
              requireAuth: true,
              asyncParams: {
                'session': getDoc(['ff_post'], FfPostRecord.fromSnapshot),
              },
              builder: (context, params) => EditSessionWidget(
                session: params.getParam('session', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'EditClass',
              path: 'EditClass',
              requireAuth: true,
              asyncParams: {
                'session': getDoc(['ff_post'], FfPostRecord.fromSnapshot),
                'classes': getDoc(['ff_session_classes'],
                    FfSessionClassesRecord.fromSnapshot),
              },
              builder: (context, params) => EditClassWidget(
                session: params.getParam('session', ParamType.Document),
                classes: params.getParam('classes', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'SalesReport',
              path: 'Report',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => SalesReportWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'RevenueReport',
              path: 'RevenueReport',
              requireAuth: true,
              asyncParams: {
                'meetingRef': getDoc(['meeting'], MeetingRecord.fromSnapshot),
              },
              builder: (context, params) => RevenueReportWidget(
                meetingRef: params.getParam('meetingRef', ParamType.Document),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Drip-logo-2.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
