import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SignUP
  {
    'sg7du7o6': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'da4pys50': {
      'en': 'Use the form below to get started.',
      'ar': 'استخدم النموذج أدناه للبدء.',
    },
    '9idkm521': {
      'en': '',
      'ar': 'عنوان البريد الإلكتروني',
    },
    '80fo57h6': {
      'en': 'Email Address',
      'ar': 'أدخل عنوان بريدك الإلكتروني هنا...',
    },
    'es9y003q': {
      'en': '',
      'ar': 'كلمة المرور',
    },
    '6cey7mhw': {
      'en': 'Password',
      'ar': 'أدخل عنوان بريدك الإلكتروني هنا...',
    },
    'mkh6t1kd': {
      'en': '',
      'ar': 'تأكيد كلمة المرور',
    },
    'e9g37bi8': {
      'en': 'Confirm Password',
      'ar': 'أدخل عنوان بريدك الإلكتروني هنا...',
    },
    'h7d4zds2': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    'dtyvx7af': {
      'en': 'Use a social platform to continue',
      'ar': 'استخدم منصة اجتماعية للمتابعة',
    },
    'tp0zm9ch': {
      'en': 'Already have an account?',
      'ar': 'هل لديك حساب؟',
    },
    '6brl2359': {
      'en': 'Log In',
      'ar': 'تسجيل الدخول',
    },
    'ngqo4wt2': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // SignIN
  {
    'ctc9bsyd': {
      'en': 'Welcome Back!',
      'ar': 'مرحبًا بعودتك!',
    },
    'nnvj8chv': {
      'en': 'Use the form below to access your account.',
      'ar': 'استخدم النموذج أدناه للوصول إلى حسابك.',
    },
    'eb4ma6kb': {
      'en': 'Login with Google',
      'ar': 'تسجيل الدخول عبر جوجل',
    },
    'c2y8mjdi': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'xda42dka': {
      'en': '',
      'ar': 'أدخل عنوان بريدك الإلكتروني هنا...',
    },
    'zxaj4y60': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '4nbdovsn': {
      'en': '',
      'ar': 'أدخل كلمة المرور الخاصة بك هنا ...',
    },
    '3i914x1t': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
    },
    '35hmufo8': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'fiahvkoe': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ForgotPASSWORD
  {
    'xhoovnxo': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'ar':
          'لا تتذكر كلمة المرور الخاصة بك؟ أدخل البريد الإلكتروني المرتبط بحسابك أدناه وسنرسل لك ارتباطًا جديدًا.',
    },
    'o5m3nuop': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    '8txqwusi': {
      'en': '',
      'ar': 'يرجى إدخال البريد الإلكتروني الصحيح...',
    },
    'z8kpa274': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
    },
    '8flbfem9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Home
  {
    '24n0xlh0': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    '34xmn16n': {
      'en': 'Registered User',
      'ar': 'مستخدم مسجل',
    },
    'zeko88rp': {
      'en': 'Enrolled',
      'ar': 'المقيدين',
    },
    '14kwfqi8': {
      'en': 'Active User',
      'ar': 'مستخدم نشط',
    },
    '07ncurnc': {
      'en': 'Instructor',
      'ar': 'مدرب',
    },
    '7cvhz0aq': {
      'en': 'KD',
      'ar': 'دينار كويتي',
    },
    'hbbjcwev': {
      'en': 'Today - Sales',
      'ar': 'اليوم - المبيعات',
    },
    's79glhup': {
      'en': 'KD',
      'ar': 'دينار كويتي',
    },
    'qrt86srv': {
      'en': 'Weekly - Sales',
      'ar': 'أسبوعي - المبيعات',
    },
    '3n5czd7s': {
      'en': 'KD',
      'ar': 'دينار كويتي',
    },
    'muynpdk7': {
      'en': 'Monthly - Sales',
      'ar': 'شهريا - المبيعات',
    },
    'kh0jo8tb': {
      'en': 'Recent Order',
      'ar': 'النظام الجديد',
    },
    'bdtvm2bf': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'uw3e86yt': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'v0sbozfb': {
      'en': 'Total',
      'ar': 'المجموع',
    },
    'n1xt5o98': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'znhhwvdp': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    'zb2y38wb': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
  },
  // Course
  {
    'tse7gu5e': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'xqn06mdr': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    '1goqyict': {
      'en': 'Published',
      'ar': 'نشرت',
    },
    'enwlj0ds': {
      'en': 'Draft',
      'ar': 'مسودة',
    },
    '9uyihlk3': {
      'en': 'Archived',
      'ar': 'مؤرشف',
    },
    '114q3b80': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '3cmlnpj2': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // ProfilePage
  {
    '8us93wf9': {
      'en': 'My Profile',
      'ar': 'ملفي',
    },
    'o09do3m3': {
      'en': 'Account Settings',
      'ar': 'إعدادت الحساب',
    },
    'uhq9ynyy': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
    },
    'gmq7xlmg': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'd9985mjs': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '40l5xkl9': {
      'en': '__',
      'ar': '__',
    },
  },
  // Chapters
  {
    'avs048f9': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    '7xwfcbqs': {
      'en': 'Chapter',
      'ar': 'الفصل',
    },
    'f99nr45k': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    '7n1qwog4': {
      'en': 'Course',
      'ar': '',
    },
    's2fx8149': {
      'en': ' > ',
      'ar': '',
    },
    'p8clb8px': {
      'en': ' > ',
      'ar': '',
    },
    '5kihbq76': {
      'en': 'Chapter',
      'ar': '',
    },
    'prx1793s': {
      'en': 'Add',
      'ar': '',
    },
    '71mzl4jt': {
      'en': 'View Lesson',
      'ar': 'عرض الدرس',
    },
    'ggc3duu0': {
      'en': 'View Lesson',
      'ar': '',
    },
    'ius35mbo': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    '1qjy6uu1': {
      'en': 'Edit',
      'ar': '',
    },
    'oa96s5j6': {
      'en': 'Delete',
      'ar': '',
    },
    'su2bd0b0': {
      'en': '__',
      'ar': '__',
    },
  },
  // order
  {
    'xixn5ejs': {
      'en': 'Order',
      'ar': 'تاريخ شراء',
    },
    'gamgby0q': {
      'en': 'CAPTURED',
      'ar': '',
    },
    '0q49mg2b': {
      'en': 'CANCELLED',
      'ar': '',
    },
    '8woahpcl': {
      'en': 'Pending',
      'ar': '',
    },
    'lrbm7stg': {
      'en': 'Select status...',
      'ar': '',
    },
    '4p774r10': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'giitukvc': {
      'en': 'Filter',
      'ar': '',
    },
    '2ddcox7n': {
      'en': 'Reset',
      'ar': '',
    },
    'tyx1jd7b': {
      'en': 'Order ID',
      'ar': 'معرف الدفع',
    },
    'mkxqqqa1': {
      'en': 'Name',
      'ar': 'معرف الدفع',
    },
    '29352ya1': {
      'en': 'Order Date',
      'ar': 'تاريخ الإنشاء',
    },
    '2z5nmjee': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'ys9s46rr': {
      'en': 'Total',
      'ar': 'حالة',
    },
    '4mkdhyi7': {
      'en': 'Payment Method',
      'ar': 'حالة',
    },
    'pavc1e88': {
      'en': 'View',
      'ar': 'منظر',
    },
    'wmi01c10': {
      'en': 'View',
      'ar': '',
    },
    'l5xyjux2': {
      'en': 'Order ID',
      'ar': 'معرف الدفع',
    },
    'tiexzp2v': {
      'en': 'Name',
      'ar': 'معرف الدفع',
    },
    '4hns8dql': {
      'en': 'Order Date',
      'ar': 'تاريخ الإنشاء',
    },
    'wy2pvs07': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'zcxwyo1w': {
      'en': 'Total',
      'ar': 'حالة',
    },
    '7hailv79': {
      'en': 'Payment Method',
      'ar': 'حالة',
    },
    '34z3b3ko': {
      'en': 'View',
      'ar': 'منظر',
    },
    'e1tt0eux': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    'lc1mp54y': {
      'en': 'Purchase',
      'ar': 'شراء',
    },
  },
  // EditProfile
  {
    'd90mrtlm': {
      'en': 'Edit Profile',
      'ar': 'تقرير الشوائب',
    },
    'd9tgmzf3': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
    },
    'jxt9xuzv': {
      'en': 'Your Name',
      'ar': 'اسمك',
    },
    'afxyzjqt': {
      'en': 'Your Phone Number',
      'ar': 'رقم تليفونك',
    },
    'pc9j0phg': {
      'en': '',
      'ar': 'أدخل رقم هاتفك',
    },
    'vyy0xtq2': {
      'en': 'The email associated with this account is:',
      'ar': 'البريد الإلكتروني المرتبط بهذا الحساب هو:',
    },
    'vubiz54d': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // searchPage
  {
    '08i22fgw': {
      'en': 'Add Members',
      'ar': 'إضافة أعضاء',
    },
    'if35rsaw': {
      'en': 'Search members...',
      'ar': 'البحث عن أعضاء ...',
    },
    'ezdko75x': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'mm1jji7u': {
      'en': 'Add Members',
      'ar': 'إضافة أعضاء',
    },
    'xvzz4zc5': {
      'en': 'View',
      'ar': 'منظر',
    },
    'lqg3pwgr': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Phone
  {
    'asytx850': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'wcnte3ju': {
      'en': 'Type in your phone number below to register.',
      'ar': 'اكتب رقم هاتفك أدناه للتسجيل.',
    },
    'z3twmk7b': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'uu5fmiap': {
      'en': 'Please select...',
      'ar': 'الرجاء تحديد ...',
    },
    'mj869gp0': {
      'en': 'Phone Number......',
      'ar': 'رقم التليفون......',
    },
    'j993u25u': {
      'en': 'Continue',
      'ar': 'يكمل',
    },
    'xqu83zh1': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // PhoneVerification
  {
    'zp6lpe0y': {
      'en': 'Please enter the 6-digit code sent to you at',
      'ar': 'الرجاء إدخال الرمز المكون من 6 أرقام المرسل إليك على',
    },
    'ngxargzi': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    '4npgvlzv': {
      'en': 'Resend will be available in  ',
      'ar': 'إعادة الإرسال ستكون متاحة في',
    },
    'q6o75ow8': {
      'en': 'sec',
      'ar': 'ثانية',
    },
    '65tfqvi2': {
      'en': 'Didn\'t get the code?',
      'ar': 'ألم تحصل على الرمز؟',
    },
    '26jkhhul': {
      'en': 'Resend',
      'ar': 'إعادة إرسال',
    },
    'q88zndcm': {
      'en': 'Confirm & Continue',
      'ar': 'تأكيد ومتابعة',
    },
    '786u8qsn': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ChangePassword
  {
    'v4j9keb1': {
      'en': 'Change Password',
      'ar': 'مقابلة',
    },
    'a793htof': {
      'en':
          'Enter your email and we will send a reset password link to your email for you to update it.',
      'ar':
          'أدخل بريدك الإلكتروني وسنرسل لك رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني لتحديثه.',
    },
    'jv2onope': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'ykyptjnj': {
      'en': '',
      'ar': 'سنرسل رابط إلى بريدك الإلكتروني ...',
    },
    'cb5lzio4': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
    },
    '0fstax91': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // CourseCategory
  {
    '2oip33og': {
      'en': 'Course Category',
      'ar': 'فئة الدورة',
    },
    '9vpmttkm': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    '6obt03jx': {
      'en': 'Delete',
      'ar': '',
    },
    'ij60b1g2': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'e3kn8pyz': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // CourseFORM
  {
    'ixg06oy0': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'nn7apnfz': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'xtua7brb': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '1ebbec6u': {
      'en': '',
      'ar': 'أدخل العنوان الفرعي للدورة هنا ...',
    },
    'h74omdib': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'g2c2ikjm': {
      'en': 'Select country...',
      'ar': 'حدد الدولة...',
    },
    'xzmsfmos': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'juub32s2': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '2kz1ke6g': {
      'en': 'Select university...',
      'ar': 'اختر الجامعة...',
    },
    'l32wp1ll': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '9jxtnw0p': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'kkk7ctx4': {
      'en': 'Select category...',
      'ar': 'اختر الفئة...',
    },
    'twn9vl8l': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'ywmru18j': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '9nxrfakl': {
      'en': 'Select branch...',
      'ar': 'اختر الفرع...',
    },
    'dg6j6fi9': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'ra9dus5c': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '9sbhycci': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'o4qs4otc': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    'zm2l4uul': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '1yvt18sm': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    'emkjjq9r': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '3or8ztnn': {
      'en': 'Total Course Duration(hours)',
      'ar': 'إجمالي مدة الدورة (ساعات)',
    },
    '8j8dmjoh': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '74i0oeum': {
      'en': 'Total Number of Lessons',
      'ar': 'إجمالي عدد الدروس',
    },
    'skwbo8k6': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'z2mg1kyx': {
      'en': 'Student Limit',
      'ar': '',
    },
    'rmqwdr02': {
      'en': '',
      'ar': '',
    },
    'mjico8hh': {
      'en': 'Course Type',
      'ar': 'دورة كتابية',
    },
    'm107k31w': {
      'en': 'Free',
      'ar': 'حر',
    },
    'qkpekxb2': {
      'en': 'Paid',
      'ar': 'مدفوع',
    },
    'xdvjnvxy': {
      'en': 'Full Price',
      'ar': 'السعر الكامل',
    },
    'f2srjpr6': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    'qyumwuw7': {
      'en': 'Number of Days(for subscription validity)',
      'ar': '',
    },
    'mvcmu5on': {
      'en': '',
      'ar': '',
    },
    'wuzsqtfs': {
      'en': 'Whatsapp Group Link',
      'ar': 'رابط مجموعة الواتساب',
    },
    'repas5zx': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    'y0j3xwy7': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '49vrfwm4': {
      'en': 'Select instructor',
      'ar': 'اختر المدرب',
    },
    '8fxn52ch': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'knvbojpm': {
      'en': 'View File',
      'ar': '',
    },
    'zqawt4n2': {
      'en': 'View New File',
      'ar': '',
    },
    'dch2nxfo': {
      'en': 'Add File',
      'ar': '',
    },
    'rbronsgl': {
      'en': 'Remove',
      'ar': '',
    },
    '4tee9iud': {
      'en': 'Enable / Disable',
      'ar': 'أضف إلى القائمة',
    },
    '4uge1o0q': {
      'en': 'Enable Offline course',
      'ar': '',
    },
    'd7xl15e4': {
      'en': 'Enable Online course',
      'ar': '',
    },
    '7jpu8ld2': {
      'en': 'Add to LIst',
      'ar': '',
    },
    'v23odnvs': {
      'en': 'None',
      'ar': '',
    },
    'c4afb5vp': {
      'en': 'Recommended',
      'ar': 'مُستَحسَن',
    },
    'rcbiqnbm': {
      'en': 'Featured',
      'ar': 'متميز',
    },
    '8wjnh2ot': {
      'en': '',
      'ar': '',
    },
    'apkwlheg': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'e7kuigm7': {
      'en': 'Batches',
      'ar': 'دفعات',
    },
    'ojivpmx5': {
      'en': 'Draft',
      'ar': 'مسودة',
    },
    'otned1yq': {
      'en': 'Publish',
      'ar': 'ينشر',
    },
    'g3w1s61i': {
      'en': 'Select batches...',
      'ar': 'حدد الدفعات...',
    },
    '7zupn6cz': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '60mawn0z': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'fhg5jowq': {
      'en': 'Draft',
      'ar': 'مسودة',
    },
    'rn58bh2d': {
      'en': 'Publish',
      'ar': 'ينشر',
    },
    '64ove32m': {
      'en': 'Select branch...',
      'ar': 'اختر الفرع...',
    },
    '877pcie3': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'z84oludi': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    '10g00qfm': {
      'en': 'Remove Photo',
      'ar': 'يزيل',
    },
    'iletrxd7': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    'bzxzdqtx': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    '2pjjfjdq': {
      'en': 'Add Video',
      'ar': 'أضف فيديو',
    },
    'm2ezylky': {
      'en': 'Remove Video',
      'ar': 'يزيل',
    },
    'b6gvx4au': {
      'en': 'Remove Video',
      'ar': '',
    },
    'nhu64oa6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rtzvuuwb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'jzt9olob': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rulqjtcp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'tfwlvyb6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    't2ykqzqv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'txxd56d8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '36nygk00': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'u4n4leko': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9aanmlyc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'xbz7jhyr': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'el8fqz9k': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '764jzjwa': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'go2sr8i7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'q5n7ms31': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '87dy6cy1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'oyxdtlr9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7w5tr2n4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ypje2020': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gintm0br': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x8e4deoe': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7v24atz4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '5binipua': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vs5o5yxh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'w28226cg': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '305n67mu': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '3m8ni089': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // CourseCategoryFORM
  {
    'q0lacwcc': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '90t4axcs': {
      'en': 'Select country...',
      'ar': 'حدد الدولة...',
    },
    'a8oij0sv': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    'zn8wqf9o': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'e2ap9bm3': {
      'en': 'Select university...',
      'ar': 'اختر جامعة ...',
    },
    'kh0urrwg': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    '47788y2r': {
      'en': 'Option 1',
      'ar': '',
    },
    'hb454py3': {
      'en': 'Select category...',
      'ar': '',
    },
    'iqamfxxv': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'gmtr0vd3': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'kvzvboqt': {
      'en': 'Select branch...',
      'ar': 'حدد الفرع ...',
    },
    'iee7cza5': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    '1gspub0l': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'g0rtvz6l': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'pmrlukha': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    'fypizz9v': {
      'en': 'Remove',
      'ar': 'إضافة صورة',
    },
    'kjtqggay': {
      'en': 'Field is required',
      'ar': '',
    },
    'eta9jmt9': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ykij98ei': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'r335smeg': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'yiw4bcxu': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // UnderProcess
  {
    '8dyd0rba': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'n9sgc8bx': {
      'en': '\"Under Development\"',
      'ar': '\"تحت التطوير\"',
    },
    'npgpzssa': {
      'en': 'Class',
      'ar': 'فصل',
    },
    'pwvpjlly': {
      'en': 'Dance Class',
      'ar': 'صف الرقص',
    },
    'k5r435ru': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'lifzsucy': {
      'en': 'Tuesday, 10:00am',
      'ar': 'الثلاثاء ، 10:00 صباحا',
    },
    '3dv2h73g': {
      'en': '__',
      'ar': '__',
    },
  },
  // ChapterFORM
  {
    '6kdqi0vq': {
      'en': 'Serial No.',
      'ar': 'الرقم التسلسلي.',
    },
    '3aa3y02x': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'npx61lxz': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'injtt61a': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'stlrua2g': {
      'en': 'First',
      'ar': 'أولاً',
    },
    'vpfrjdl9': {
      'en': 'Second',
      'ar': 'ثانية',
    },
    'lojr12ep': {
      'en': 'Third',
      'ar': 'ثالث',
    },
    '5r883i7w': {
      'en': 'Please select...',
      'ar': 'الرجاء التحديد...',
    },
    'b32vrdlp': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'x4o0vqx6': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'eviygicf': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'xnqx7ddw': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ze1vc4ku': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'di57h88d': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'v6tkhvws': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bysfoxeh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '379bn20t': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'o6mxvavw': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '0eagomq5': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '6qvf4r2b': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Lesson
  {
    'tk237msf': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'ubk1a33t': {
      'en': 'Course ',
      'ar': 'دورة',
    },
    'xzversux': {
      'en': 'Chapter ',
      'ar': 'الفصل',
    },
    't6xd0e32': {
      'en': 'Lesson',
      'ar': 'درس',
    },
    'ofibjzai': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'bvard0s1': {
      'en': 'Course',
      'ar': '',
    },
    'u67gavca': {
      'en': ' > ',
      'ar': '',
    },
    'yv3iacac': {
      'en': ' > ',
      'ar': '',
    },
    'vq3fbkgk': {
      'en': 'Chapter',
      'ar': '',
    },
    '9af2oodh': {
      'en': ' > ',
      'ar': '',
    },
    '2dyvpf6u': {
      'en': ' > ',
      'ar': '',
    },
    'bnrdomz5': {
      'en': 'Lesson',
      'ar': '',
    },
    'n1rzrbwf': {
      'en': 'Add',
      'ar': '',
    },
    'hhbc51e8': {
      'en': 'Zoom Classes ',
      'ar': 'دروس التكبير',
    },
    'hos571b7': {
      'en': '__',
      'ar': '__',
    },
  },
  // LessonFORM
  {
    'lh2pkuo3': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ubevjb52': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'mr44yd33': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'js39qccm': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'e1p88mwh': {
      'en': 'Free Preview',
      'ar': 'معاينة مجانية',
    },
    'oh4gnhfp': {
      'en': 'View File',
      'ar': 'استعراض الملف',
    },
    '3iw1hw1s': {
      'en': 'View New File',
      'ar': 'عرض الملف الجديد',
    },
    '7jtdxttw': {
      'en': 'Add File',
      'ar': 'اضف ملف',
    },
    'u1zfrpns': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'jej3qyla': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    't8rvc56p': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    'ue3abkt6': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'w9jk4ier': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    '247orjhi': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    '0z2roibr': {
      'en': 'Add ',
      'ar': 'يضيف',
    },
    '3knj36rd': {
      'en': 'Remove ',
      'ar': 'يزيل',
    },
    'iwu4hj3i': {
      'en': 'Remove Video',
      'ar': '',
    },
    'y6qe3zqq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'r97ylpsj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'llx61crh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'n8u4qmsa': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'gnumeiou': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'y9ns38s0': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ys7xbgdv': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '5ixeykrd': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'q3kuybss': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Booking
  {
    'dc8zohy6': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'mi12bado': {
      'en': 'Booking',
      'ar': 'الحجز',
    },
    'mo8pyjhu': {
      'en': 'Upcoming',
      'ar': 'القادمة',
    },
    'ev80r4l3': {
      'en': 'Archived',
      'ar': 'مؤرشف',
    },
    'gfxjwmjm': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'fhcuexl6': {
      'en': 'Session',
      'ar': 'حصة',
    },
    'sq510doh': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    'zjyza8hi': {
      'en': 'Remarks',
      'ar': 'ملاحظات',
    },
    '7fupomrm': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'er4gdk3n': {
      'en': 'Session',
      'ar': 'حصة',
    },
    'y1nto6mx': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    'gbi1m441': {
      'en': 'Remarks',
      'ar': 'ملاحظات',
    },
    '7oemnhc3': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'yzurh8ev': {
      'en': 'Session',
      'ar': 'حصة',
    },
    'hqcmopeb': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    '10z6xs55': {
      'en': 'Remarks',
      'ar': 'ملاحظات',
    },
    'uyewf2ac': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'rjmmikv9': {
      'en': 'Session',
      'ar': 'حصة',
    },
    'g6m7sw6x': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    'ie2r63dv': {
      'en': 'Remarks',
      'ar': 'ملاحظات',
    },
    'z403f33l': {
      'en': '__',
      'ar': '__',
    },
  },
  // Meeting
  {
    '9mnuq76h': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    '8xuh08qq': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'wnv7eqpb': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    '266kdkp2': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'qeu2fk5y': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'ziuvfmvz': {
      'en': 'List of Days',
      'ar': 'قائمة الأيام',
    },
    '3cwz15cr': {
      'en': 'Limit',
      'ar': 'حد',
    },
    '4k8jhghl': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'eqk4gm5x': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '7zucoawx': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'm9lv1ziu': {
      'en': 'List of Days',
      'ar': 'قائمة الأيام',
    },
    '5cff0rwu': {
      'en': 'Limit',
      'ar': 'حد',
    },
    '8v389lc4': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'dh6p8g9o': {
      'en': 'Booking',
      'ar': 'الحجز',
    },
    'x2xzf141': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    'ssid8twi': {
      'en': '__',
      'ar': '__',
    },
  },
  // MeetingFORM
  {
    'jistndq0': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'khr0mo5u': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'rb0zg2ap': {
      'en': 'Limit',
      'ar': 'حد',
    },
    'jldi41lj': {
      'en': '',
      'ar': 'أدخل الحد هنا ...',
    },
    'zxvi269s': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'xdqvoury': {
      'en': 'Day List',
      'ar': 'قائمة اليوم',
    },
    'we13kalv': {
      'en': 'Sunday',
      'ar': 'الأحد',
    },
    'i10rmrsa': {
      'en': 'Monday',
      'ar': 'الاثنين',
    },
    '2yi6ennw': {
      'en': 'Tuesday',
      'ar': 'يوم الثلاثاء',
    },
    '9az6jdpb': {
      'en': 'Wednesday',
      'ar': 'الأربعاء',
    },
    'iaw70egs': {
      'en': 'Thursday',
      'ar': 'يوم الخميس',
    },
    'czcwg1th': {
      'en': 'Friday',
      'ar': 'جمعة',
    },
    '4w07pmw6': {
      'en': 'Saturday',
      'ar': 'السبت',
    },
    '6fdq03vi': {
      'en': 'Session List',
      'ar': 'قائمة الجلسة',
    },
    'km1kark2': {
      'en': 'Morning',
      'ar': 'صباح',
    },
    'tviqmjj9': {
      'en': 'Afternoon',
      'ar': 'بعد الظهر',
    },
    'imu1d9pn': {
      'en': 'Evening',
      'ar': 'مساء',
    },
    'h77r6owy': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    'zx89tnxh': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'ibz9jlcw': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8etprw3p': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '47nlyx7x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ql14msfg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ove4qet3': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'd1ybt9so': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '7lz9pts6': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Settings
  {
    'co5gahkx': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'ilmqu3yi': {
      'en': 'General',
      'ar': 'عام',
    },
    'rbgdcna3': {
      'en': 'General',
      'ar': 'عام',
    },
    'bqlahog1': {
      'en': 'Course',
      'ar': 'دورة',
    },
    '45p7axcb': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'bd0fid11': {
      'en': 'Onboard',
      'ar': 'صعد على متنها',
    },
    '8xuhisgh': {
      'en': 'Onboard',
      'ar': 'صعد على متنها',
    },
    'o7dy7u2t': {
      'en': 'Home',
      'ar': 'بيت',
    },
    '3tvsv4tc': {
      'en': 'Home',
      'ar': 'بيت',
    },
    '7n9kbjun': {
      'en': 'Home',
      'ar': '',
    },
    'mqo4qw7g': {
      'en': 'About',
      'ar': '',
    },
    'r7m3orws': {
      'en': 'Zoom',
      'ar': 'تكبير',
    },
    'ov8smg77': {
      'en': 'Zoom',
      'ar': 'تكبير',
    },
    'a6i8k9h2': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'sl2dx4se': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'iy79gytb': {
      'en': 'Bug Report',
      'ar': 'تقرير الشوائب',
    },
    'zh4xyr7l': {
      'en': 'Bug Report',
      'ar': 'تقرير الشوائب',
    },
    'n3qk164s': {
      'en': 'Team',
      'ar': 'تقرير الشوائب',
    },
    '7aryt2ia': {
      'en': 'Team',
      'ar': 'تقرير الشوائب',
    },
    'yn68ebys': {
      'en': 'Partners',
      'ar': 'تقرير الشوائب',
    },
    'acvle6me': {
      'en': 'Partners',
      'ar': 'تقرير الشوائب',
    },
    'xvyi0zpl': {
      'en': 'General Settings',
      'ar': 'الاعدادات العامة',
    },
    'ze7lsmma': {
      'en': 'Upload / Change Logo',
      'ar': 'تحميل / تغيير الشعار',
    },
    '8j38p5i6': {
      'en': '',
      'ar': '',
    },
    'z7esn8ef': {
      'en': '',
      'ar': '',
    },
    'hwwngtkk': {
      'en': 'Upload / Change Favicon',
      'ar': 'تحميل / تغيير الرمز المفضل',
    },
    'epwc50b8': {
      'en': '',
      'ar': '',
    },
    'yn0lz5nv': {
      'en': '',
      'ar': '',
    },
    'xktj7wbr': {
      'en': 'Enable Social Login',
      'ar': 'تمكين تسجيل الدخول الاجتماعي',
    },
    'x2ar58u0': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    '0bb98bsm': {
      'en': 'No',
      'ar': 'لا',
    },
    '0q2oug6j': {
      'en': 'Enable Phone Login',
      'ar': 'تمكين تسجيل الدخول عبر الهاتف',
    },
    'rqeazoy2': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'wx2tbpvw': {
      'en': 'No',
      'ar': 'لا',
    },
    'mr910co7': {
      'en': 'Address',
      'ar': 'عنوان',
    },
    'xqwym2xb': {
      'en': 'GMap Link',
      'ar': 'رابط جي ماب',
    },
    'ohzriw9r': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '17oo7jz1': {
      'en': 'Phone No',
      'ar': 'رقم الهاتف',
    },
    '8arjdwuq': {
      'en': 'WhatsApp No',
      'ar': 'رقم الواتس اب',
    },
    'm8ho5xkl': {
      'en': 'Facebook',
      'ar': 'فيسبوك',
    },
    'bmidwz75': {
      'en': 'Instagram',
      'ar': 'انستغرام',
    },
    'fx83orqu': {
      'en': 'LinkedIn',
      'ar': 'ينكدين',
    },
    'loj81k2t': {
      'en': 'SMS Character Limit',
      'ar': '',
    },
    '3eyidwvj': {
      'en': 'Enter maximum character limit',
      'ar': 'أدخل الحد الأقصى لعدد الأحرف',
    },
    'y3sazcdx': {
      'en': 'Email Recipient',
      'ar': '',
    },
    '8wjga068': {
      'en': 'Enter email address',
      'ar': '',
    },
    'lhon9r4q': {
      'en': 'Enable User Agent',
      'ar': '',
    },
    'p31z061q': {
      'en': 'Course Settings',
      'ar': 'إعدادات الدورة',
    },
    'i0zc19gt': {
      'en': 'Enable Wishlist',
      'ar': 'تمكين قائمة الرغبات',
    },
    'fr2syyam': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'rue6jswy': {
      'en': 'No',
      'ar': 'لا',
    },
    'c9a7njli': {
      'en': 'Enable Recommended List',
      'ar': 'تمكين القائمة الموصى بها',
    },
    'cpj3b7eo': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    '8gxir9ci': {
      'en': 'No',
      'ar': 'لا',
    },
    'uqyticci': {
      'en': 'OnBoard Settings',
      'ar': 'إعدادات على متن الطائرة',
    },
    'l1imekio': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'i1qxchrj': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '61n1ujpj': {
      'en': 'Upload / Change Logo',
      'ar': 'تحميل / تغيير الشعار',
    },
    '4vr2s704': {
      'en': '',
      'ar': '',
    },
    '7y4apzps': {
      'en': '',
      'ar': '',
    },
    'uvgt0x77': {
      'en': 'Do you want to replace Title with Logo?',
      'ar': 'هل تريد استبدال العنوان بالشعار؟',
    },
    'pgrty9wr': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'c085quif': {
      'en': 'No',
      'ar': 'لا',
    },
    'kajxc9t3': {
      'en': 'Do you want to hide Background Image ',
      'ar': 'هل تريد إخفاء صورة الخلفية',
    },
    'cidi640u': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'eynwk69z': {
      'en': 'No',
      'ar': 'لا',
    },
    '1z2cdj6t': {
      'en': 'Select background colour here',
      'ar': 'حدد لون الخلفية هنا',
    },
    'dkgjc8ab': {
      'en': 'Set Colour',
      'ar': 'ضبط اللون',
    },
    'hn9n496d': {
      'en': '',
      'ar': '',
    },
    'u1n5c2yd': {
      'en': 'Upload / Change Background Image',
      'ar': 'تحميل / تغيير صورة الخلفية',
    },
    '46yqhfn1': {
      'en': 'Home',
      'ar': 'بيت',
    },
    '2o45b0o6': {
      'en': 'Enable Category',
      'ar': 'تمكين استكشاف الفئة',
    },
    'jg54ov9j': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'suvmpm38': {
      'en': 'No',
      'ar': 'لا',
    },
    'ks9b270x': {
      'en': 'Enable Featured Courses',
      'ar': 'تمكين أفضل الدورات',
    },
    'zxuhavcm': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'd0x9sa6u': {
      'en': 'No',
      'ar': 'لا',
    },
    'vvltsgqp': {
      'en': 'Slider',
      'ar': 'المنزلق',
    },
    '505hguwx': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '8pisxdp8': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'rdwq1uuq': {
      'en': 'Button Text',
      'ar': 'زر كتابة',
    },
    'ohj6gjho': {
      'en': 'Upload / Change Video',
      'ar': 'تحميل / تغيير الفيديو',
    },
    '5q0feg7e': {
      'en': '',
      'ar': '',
    },
    'fd0ufilt': {
      'en': 'App URLs',
      'ar': 'عناوين URL للتطبيقات',
    },
    'n2snkuo0': {
      'en': 'Android',
      'ar': 'ذكري المظهر',
    },
    'cf6cg1dm': {
      'en': 'IOS',
      'ar': 'دائرة الرقابة الداخلية',
    },
    'sw3pkbed': {
      'en': 'About Section',
      'ar': 'حول القسم 1',
    },
    'fmlc76q4': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'x8rb74t7': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '130b1jgl': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'di506r2k': {
      'en': 'Upload / Change Image',
      'ar': 'تحميل / تغيير الصورة',
    },
    'mnb7ohnb': {
      'en': '',
      'ar': '',
    },
    'vmz5lsbu': {
      'en': 'Session Section',
      'ar': '',
    },
    '3nthf407': {
      'en': 'Title',
      'ar': '',
    },
    'lvcy0hjt': {
      'en': 'Subtitle',
      'ar': '',
    },
    'paezik5x': {
      'en': 'Description',
      'ar': '',
    },
    'zolae3kr': {
      'en': 'About Section 1',
      'ar': '',
    },
    '8bkdgwxp': {
      'en': 'Title',
      'ar': '',
    },
    '8rmljjvy': {
      'en': 'Subtitle',
      'ar': '',
    },
    'mcrvzsu7': {
      'en': 'Description',
      'ar': '',
    },
    'gbcfgy3l': {
      'en': 'Upload / Change Image',
      'ar': '',
    },
    '8196kbpg': {
      'en': '',
      'ar': '',
    },
    '6ckv20ls': {
      'en': 'About Section 2',
      'ar': '',
    },
    'tsuf9bfc': {
      'en': 'Title',
      'ar': '',
    },
    '70dlezur': {
      'en': 'Subtitle',
      'ar': '',
    },
    'yrx2b3xw': {
      'en': 'Description',
      'ar': '',
    },
    't27d1s4p': {
      'en': 'Upload / Change Image',
      'ar': '',
    },
    '50826bt5': {
      'en': '',
      'ar': '',
    },
    'kkqjxknm': {
      'en': 'Setup your Zoom Integration',
      'ar': 'قم بإعداد تكامل Zoom الخاص بك',
    },
    '8vxruvuo': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    '441pg7wa': {
      'en': '',
      'ar': 'أدخل معرف البريد الإلكتروني المسجل الخاص بك تكبير ...',
    },
    't3bcdo92': {
      'en': 'API Key',
      'ar': 'مفتاح API',
    },
    'w5xhtyia': {
      'en': '',
      'ar': 'أدخل معرف البريد الإلكتروني المسجل الخاص بك تكبير ...',
    },
    '1o3o23mv': {
      'en': 'Secret Key',
      'ar': 'المفتاح السري',
    },
    'a6qx9ky4': {
      'en': '',
      'ar': 'أدخل رمز jwt الخاص بك هنا ...',
    },
    '7g18ndw1': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'c4cr41gg': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'z9oui7k2': {
      'en': 'Terms & Conditions',
      'ar': 'البنود و الظروف',
    },
    'u35axsfr': {
      'en': '',
      'ar': '',
    },
    'smr31nbi': {
      'en': 'Bug Report',
      'ar': 'تقرير الشوائب',
    },
    'ivomfwaj': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    '5215te5p': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'e57fgj1g': {
      'en': 'Issue',
      'ar': 'مشكلة',
    },
    'jwc1y5dx': {
      'en': 'Screenshot',
      'ar': 'لقطة شاشة',
    },
    'm81ewn1c': {
      'en': 'Action',
      'ar': 'فعل',
    },
    '04un60ch': {
      'en': 'Team Settings',
      'ar': '',
    },
    'fihg6ddi': {
      'en': 'Team Section',
      'ar': '',
    },
    '7ic06yws': {
      'en': 'Title',
      'ar': '',
    },
    'kol8uqzq': {
      'en': 'Subtitle',
      'ar': '',
    },
    'tcrstpx0': {
      'en': 'Description',
      'ar': '',
    },
    'wmk8q4un': {
      'en': 'Our Team Section',
      'ar': '',
    },
    'kfv1nzla': {
      'en': 'Add Team',
      'ar': '',
    },
    'g0sp2lj6': {
      'en': 'Name',
      'ar': '',
    },
    'rrhk1mk3': {
      'en': 'Action',
      'ar': '',
    },
    'qryrhplf': {
      'en': '',
      'ar': '',
    },
    '5y69nl9u': {
      'en': '',
      'ar': '',
    },
    'aw90m1qh': {
      'en': 'Partner Section',
      'ar': '',
    },
    's6vr6c0u': {
      'en': 'Add Team',
      'ar': '',
    },
    '24qu6ya1': {
      'en': 'Name',
      'ar': '',
    },
    'j32xnzn6': {
      'en': 'Action',
      'ar': '',
    },
    '9nio41fm': {
      'en': '',
      'ar': '',
    },
    '4ckpkawx': {
      'en': '',
      'ar': '',
    },
    'f9c1zplg': {
      'en': '__',
      'ar': '__',
    },
  },
  // BugReport
  {
    '4948z3r3': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    '7ci7zv2w': {
      'en': 'Bug Report',
      'ar': 'تقرير الشوائب',
    },
    '5v3zruzs': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    'wj7onycl': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '9nwu830t': {
      'en': 'Issue',
      'ar': 'مشكلة',
    },
    'r6nrm6vz': {
      'en': 'Screenshot',
      'ar': 'لقطة شاشة',
    },
    '3pz33nw6': {
      'en': 'Action',
      'ar': 'فعل',
    },
    't56gwnpy': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    '0pyw8ek1': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'uqana5ta': {
      'en': 'Issue',
      'ar': 'مشكلة',
    },
    'bq71ir64': {
      'en': 'Screenshot',
      'ar': 'لقطة شاشة',
    },
    'bj10hvup': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'mrwi9l4y': {
      'en': '__',
      'ar': '__',
    },
  },
  // Users
  {
    'e1qukerz': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'azwa1kt8': {
      'en': 'Users',
      'ar': 'المستخدمون',
    },
    'hmvs90fa': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'riy54lve': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '4d9nyo9f': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'z1c3j0kf': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'pq5nvg01': {
      'en': 'Verification',
      'ar': '',
    },
    'kamau7fn': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'gxsuhgzp': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    'vqih2jaq': {
      'en': 'Email verified',
      'ar': '',
    },
    'ewwescqz': {
      'en': 'Email not verified',
      'ar': '',
    },
    'cwqz019g': {
      'en': 'Admin profile',
      'ar': '',
    },
    'q1xnb9h6': {
      'en': 'Instructor profile',
      'ar': '',
    },
    'ylderod4': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    'fke24uws': {
      'en': 'Admin',
      'ar': 'مسؤل',
    },
    'etc64gtv': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'dx60wbwy': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'x66d2uxg': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'l23g3vt7': {
      'en': 'Verification',
      'ar': '',
    },
    'wa53d3l2': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'ezesvqj8': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    '4ubhkzth': {
      'en': 'Email verified',
      'ar': '',
    },
    'ixp12l0r': {
      'en': 'Email not verified',
      'ar': '',
    },
    'evcakfz6': {
      'en': 'Admin profile',
      'ar': '',
    },
    '7edbu8lb': {
      'en': 'Instructor profile',
      'ar': '',
    },
    'vasx7zbe': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    '8de3acpy': {
      'en': 'Instructor',
      'ar': 'مدرب',
    },
    'ok3iaq8p': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '21kus49p': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'cianw2wn': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'v0ddlsro': {
      'en': 'Verification',
      'ar': '',
    },
    '5iu9lall': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'b6skzcxx': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    'np2aopq9': {
      'en': 'Email verified',
      'ar': '',
    },
    '9ik78gbo': {
      'en': 'Email not verified',
      'ar': '',
    },
    '8l9egjg0': {
      'en': 'Admin profile',
      'ar': '',
    },
    'mb8s59w1': {
      'en': 'Instructor profile',
      'ar': '',
    },
    'bvqylfoy': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    'jmgzi4wv': {
      'en': 'Student',
      'ar': 'طالب',
    },
    '5t44tfnb': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'cl0g5c7s': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'bfyokhey': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'llaumlqb': {
      'en': 'Verification',
      'ar': '',
    },
    'jmesm73c': {
      'en': 'Status',
      'ar': 'فعل',
    },
    'yj45u46v': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'ksumthm4': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    'am5wqfv0': {
      'en': 'Email verified',
      'ar': '',
    },
    'cvmjn7k6': {
      'en': 'Email not verified',
      'ar': '',
    },
    'nnavo9gj': {
      'en': 'Admin profile',
      'ar': '',
    },
    '2qqdaq7r': {
      'en': 'Instructor profile',
      'ar': '',
    },
    'cvulkcjl': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    '6a2rel97': {
      'en': 'Deleted',
      'ar': '',
    },
    'aef8dxkl': {
      'en': 'Name',
      'ar': '',
    },
    '1mysmk4e': {
      'en': 'Email ID',
      'ar': '',
    },
    'fxwannfo': {
      'en': 'Phone Number',
      'ar': '',
    },
    'mco656pm': {
      'en': 'Verification',
      'ar': '',
    },
    'kuw2dmy3': {
      'en': 'Status',
      'ar': '',
    },
    '735up2id': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    'cz49ezoq': {
      'en': 'Email verified',
      'ar': '',
    },
    '6evu18mf': {
      'en': 'Email not verified',
      'ar': '',
    },
    'q74zi8od': {
      'en': 'Admin profile',
      'ar': '',
    },
    'j5gn6cxg': {
      'en': 'Instructor profile',
      'ar': '',
    },
    '42m836ec': {
      'en': '',
      'ar': '',
    },
    'v23mx87i': {
      'en': '__',
      'ar': '__',
    },
  },
  // Edit_user
  {
    '3gialzex': {
      'en': 'Edit User',
      'ar': 'تحرير العضو',
    },
    'ud51s1bx': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
    },
    'v31jcait': {
      'en': 'Block',
      'ar': 'حاجز',
    },
    '6vla2joi': {
      'en': 'Reason',
      'ar': 'سبب',
    },
    '9jf2fi3b': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
    },
    'f0owo2ul': {
      'en': 'Middle Name',
      'ar': 'الاسم الأوسط',
    },
    '22069jqy': {
      'en': 'Last Name',
      'ar': 'اسم العائلة',
    },
    '53npn1hm': {
      'en': 'Your Email',
      'ar': 'بريدك الالكتروني',
    },
    'jynnku9w': {
      'en': '',
      'ar': '',
    },
    '8zetoh27': {
      'en': 'Admin',
      'ar': 'مسؤل',
    },
    'uhqe6nj8': {
      'en': 'Instructor',
      'ar': 'مدرب',
    },
    'yoptuao1': {
      'en': 'Student',
      'ar': 'طالب',
    },
    'fx362iqu': {
      'en': 'Role...',
      'ar': 'دور...',
    },
    '4mepyuf6': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'sx4c6czo': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'em6b1wg6': {
      'en': '',
      'ar': 'أدخل رقم الهاتف',
    },
    'asj2xc1x': {
      'en': 'Verification',
      'ar': 'تَحَقّق',
    },
    't8zexw5s': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    '0b6z24oj': {
      'en': 'Email verified',
      'ar': '',
    },
    '4cvdadia': {
      'en': 'Email not verified',
      'ar': '',
    },
    'm8mgobdr': {
      'en': 'Admin profile',
      'ar': '',
    },
    'mmrqvxvi': {
      'en': 'Instructor profile',
      'ar': '',
    },
    'zw0uy6pd': {
      'en': 'Skip Phone Verification',
      'ar': '',
    },
    'ry3jjnqz': {
      'en': 'Order History',
      'ar': 'تاريخ الطلب',
    },
    'su6vmlgp': {
      'en': 'Order ID',
      'ar': 'رقم التعريف الخاص بالطلب',
    },
    'kvsp7hsd': {
      'en': 'Order Date',
      'ar': 'تاريخ الطلب',
    },
    '9aupblsa': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'ecaddd55': {
      'en': 'Payment',
      'ar': 'قسط',
    },
    'cayowpxm': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'w54h155v': {
      'en': 'Course Enrollment History',
      'ar': 'تاريخ الالتحاق',
    },
    '60lh9mfq': {
      'en': 'Course Name',
      'ar': 'اسم الدورة التدريبية',
    },
    'xm6b6hue': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'w9e5ahpy': {
      'en': 'Order ID',
      'ar': 'رقم التعريف الخاص بالطلب',
    },
    'm7vb8jx0': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'o8je23m0': {
      'en': 'Session Subscription History',
      'ar': '',
    },
    'ahl32yzr': {
      'en': 'Session Name',
      'ar': '',
    },
    'emjniig7': {
      'en': 'Plan',
      'ar': '',
    },
    'amzc50kv': {
      'en': 'Class',
      'ar': '',
    },
    'l5eprv3i': {
      'en': 'Valid Upto',
      'ar': '',
    },
    '9qdlpusv': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'zbhsdj1s': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // Students
  {
    '0zzvo30p': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'ccjxgzvx': {
      'en': 'Enrolled Students',
      'ar': 'طلاب',
    },
    'z63zmhn7': {
      'en': 'SMS',
      'ar': 'رسالة قصيرة',
    },
    '5cdtq3or': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'u4io9wsf': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'dovfdq9r': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    '23u31pxt': {
      'en': 'Order',
      'ar': 'رقم التليفون',
    },
    'os4w1w4f': {
      'en': 'Payment Status',
      'ar': 'رقم التليفون',
    },
    'ii8zj81j': {
      'en': 'user@domainname.com',
      'ar': '',
    },
    'e0hcpnpy': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'odxmfwtm': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'mg4odq2c': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'sxe5k04c': {
      'en': 'Verification',
      'ar': '',
    },
    'ttffjbgi': {
      'en': 'Order',
      'ar': 'رقم التليفون',
    },
    'affuj2tw': {
      'en': 'Payment Status',
      'ar': 'رقم التليفون',
    },
    '47toa5zp': {
      'en': 'user@domainname.com',
      'ar': '',
    },
    'ry4jrdhp': {
      'en': 'Mobile number verified',
      'ar': '',
    },
    'lrxehx1z': {
      'en': 'Email verified',
      'ar': '',
    },
    'ws5zsm2x': {
      'en': 'Email not verified',
      'ar': '',
    },
    'zkax3j6m': {
      'en': 'Admin profile',
      'ar': '',
    },
    'yikkw2k7': {
      'en': 'Instructor profile',
      'ar': '',
    },
    't1tjppja': {
      'en': '__',
      'ar': '__',
    },
  },
  // Announcement
  {
    'wevha4l8': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'm5pvjumh': {
      'en': 'Announcement',
      'ar': 'إعلان',
    },
    'jhbiuwoe': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'rafzrvn0': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'zn4kekf6': {
      'en': 'Course ',
      'ar': 'دورة',
    },
    'oo72d0gj': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '4bnekra3': {
      'en': 'Summary',
      'ar': 'ملخص',
    },
    'zx4vk9sb': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'v5cm5e98': {
      'en': 'user@domainname.com',
      'ar': 'user@domainname.com',
    },
    'zecp5qjo': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    'wa21qzjx': {
      'en': '',
      'ar': '',
    },
    'rx08nzh1': {
      'en': '__',
      'ar': '__',
    },
  },
  // AccouncementFORM
  {
    'wry2tcz0': {
      'en': 'Edit Announcement',
      'ar': 'تحرير إعلان',
    },
    'jbabq4yb': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    'mro2xklx': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    'bx8hca5i': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    '055dos8v': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'jupmarcq': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'xdw5agom': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    'j05s34pt': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    '742i2k57': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    '5awb79bb': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'n41cfp3o': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'xwni540g': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'gh350mbu': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    'zzg5o6fa': {
      'en': 'Summary',
      'ar': 'ملخص',
    },
    '5qw16ks8': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '9lgo03ec': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2x7gtvbr': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'rh9f1zkp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'wh5o4jes': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'gmei33gb': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // InstructorSettings
  {
    'uyak4xxu': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    '5j1wte56': {
      'en': 'Profile',
      'ar': '',
    },
    '63tj7hdv': {
      'en': 'Profile',
      'ar': '',
    },
    '3kslgpc0': {
      'en': 'Zoom',
      'ar': '',
    },
    '7kehoc1c': {
      'en': 'Zoom',
      'ar': '',
    },
    'fsdh6wy9': {
      'en': 'Profile Settings',
      'ar': 'إعدادات الملف الشخصي',
    },
    '9z48oyxj': {
      'en': 'Upload / Change Photo',
      'ar': 'تحميل / تغيير الصورة',
    },
    'jjj4oh5o': {
      'en': '',
      'ar': '',
    },
    '39a4kg3b': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '8xbswdr3': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'olqkijml': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    'n6719d10': {
      'en': 'Setup your Zoom Integration',
      'ar': 'قم بإعداد تكامل التكبير الخاص بك',
    },
    'um2l1giu': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'neal15c5': {
      'en': '',
      'ar': 'أدخل معرف البريد الإلكتروني المسجل الخاص بك تكبير ...',
    },
    '86lfjjs9': {
      'en': 'API Key',
      'ar': 'عنوان الايميل',
    },
    'ybsa9qcj': {
      'en': '',
      'ar': 'أدخل معرف البريد الإلكتروني المسجل الخاص بك تكبير ...',
    },
    'oc96inhd': {
      'en': 'Secret Key',
      'ar': 'JWT Token',
    },
    't2cqtk89': {
      'en': '',
      'ar': 'أدخل رمز jwt الخاص بك هنا ...',
    },
    'imsnyajq': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'akixf5i4': {
      'en': '__',
      'ar': '__',
    },
  },
  // Review
  {
    'gpjye4yr': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    '6es60uex': {
      'en': 'Reviews',
      'ar': 'المراجعات',
    },
    'xkcm56qd': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'xzb0y61l': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    '4b64xwdq': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'cst6vm2t': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '1s3awnal': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'cd3ih1p5': {
      'en': '',
      'ar': 'يمسح',
    },
    'z5wkqi6x': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '0rju24vq': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'wgo14sai': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'vir786f6': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '84hw03rl': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'wa7lsyct': {
      'en': 'View',
      'ar': 'منظر',
    },
    '896zaweo': {
      'en': '',
      'ar': 'يمسح',
    },
    'znyi7svv': {
      'en': '__',
      'ar': '__',
    },
  },
  // InstructorRequest
  {
    'bmr7hoji': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'd62pnlwl': {
      'en': 'Instructor Request',
      'ar': 'طلب مدرس',
    },
    '6xubknxh': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '3sx8cx8m': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'j0353d0l': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    '5hwteaks': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'vpdmfpxm': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'azdyfzz0': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'e9tua2x7': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'znil2ps8': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'du6srrq0': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '0yde9h0h': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'ot0hh67a': {
      'en': '__',
      'ar': '__',
    },
  },
  // Zoom_classes
  {
    '75bxxl0f': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'c8pn1gl3': {
      'en': 'Course ',
      'ar': 'دورة',
    },
    'umspzqrf': {
      'en': '> ',
      'ar': '>',
    },
    '2t3rqtz1': {
      'en': '> ',
      'ar': '>',
    },
    '7grpnwer': {
      'en': 'Chapter ',
      'ar': 'الفصل',
    },
    '3ncokcf8': {
      'en': '> ',
      'ar': '>',
    },
    'db552kun': {
      'en': '> ',
      'ar': '>',
    },
    'd2tf4hkx': {
      'en': 'Lesson ',
      'ar': 'درس',
    },
    'y020a5kf': {
      'en': '> ',
      'ar': '>',
    },
    'gbaq2lb4': {
      'en': '> ',
      'ar': '>',
    },
    '3tjwmlq9': {
      'en': 'Zoom Class',
      'ar': 'فئة التكبير',
    },
    'vtiyf3pl': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    '0sgfulq0': {
      'en': 'Course',
      'ar': '',
    },
    'u9saha7l': {
      'en': ' > ',
      'ar': '',
    },
    '24mtk5u5': {
      'en': ' >  ',
      'ar': '',
    },
    'd3ncn070': {
      'en': 'Chapter',
      'ar': '',
    },
    'q0jzx5je': {
      'en': ' > ',
      'ar': '',
    },
    'ypzh6cgf': {
      'en': ' > ',
      'ar': '',
    },
    'h4ibf236': {
      'en': 'Lesson',
      'ar': '',
    },
    'bcrg7s2a': {
      'en': ' > ',
      'ar': '',
    },
    'ke71e9jq': {
      'en': ' > ',
      'ar': '',
    },
    'rotrs4y0': {
      'en': 'Zoom Class',
      'ar': '',
    },
    'wgc0p494': {
      'en': 'Add',
      'ar': '',
    },
    'js4sadw8': {
      'en': 'Copy Meeting link',
      'ar': '',
    },
    'bqvkcsnx': {
      'en': 'Edit',
      'ar': '',
    },
    'xn5groxl': {
      'en': 'Start Meeting',
      'ar': 'ابدأ الاجتماع',
    },
    'e3eww251': {
      'en': 'Delete',
      'ar': '',
    },
    'eox3zmjl': {
      'en': 'Send Email',
      'ar': '',
    },
    'g5pg06v7': {
      'en': '__',
      'ar': '__',
    },
  },
  // ZoomclassesFORM
  {
    'ojkn5slo': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'vxdx8qjs': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'ghqp2lyb': {
      'en': 'Duration(mins)',
      'ar': 'المدة (دقيقة)',
    },
    '4y4090my': {
      'en': '',
      'ar': 'أدخل Duration time هنا (بالدقائق) ...',
    },
    'hhe4djsc': {
      'en': 'Summary',
      'ar': 'ملخص',
    },
    'u72qgwj7': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '7ay9bzqn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9ew71esl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'i2xg1474': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'apgt1x3n': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1ds8stiy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'snxwhddj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yhx01gjs': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6q60igex': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vkhij0kw': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '8a5ev4z3': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'p30g9gsg': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Poll
  {
    'at6axnmh': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    '45g6nwwz': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'dremcia5': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    'z64fyyg3': {
      'en': 'Delete',
      'ar': '',
    },
    '9zyaxavs': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'rvippjmg': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Poll_answer
  {
    'pc8lgxa6': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'tt4mtn0d': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'gaa0n7hn': {
      'en': '__',
      'ar': '__',
    },
  },
  // PollFORM
  {
    '49cjpnek': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    'd8013eh5': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    'w5uodm4c': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    'njxryl67': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'yy5gl74u': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '9tzwk5gb': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    'qlf8mwq8': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    'e17k4fws': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    'hik91prj': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    '8slp706s': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'q2w3ag9d': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'dv2l4b69': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'xjlty079': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'eqp72ea0': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'jwk0te4b': {
      'en': 'Question',
      'ar': 'عنوان',
    },
    '9cj3pxcd': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'h706r1o2': {
      'en': 'End Date',
      'ar': 'تاريخ البدء',
    },
    '6292hl7j': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    'kwscrp5m': {
      'en': 'Remove',
      'ar': 'إضافة صورة',
    },
    'rsv2kt7i': {
      'en': 'Field is required',
      'ar': '',
    },
    '5uisldfz': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '0h37tec4': {
      'en': 'Field is required',
      'ar': '',
    },
    'u0j3zttn': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '9mdnk4lf': {
      'en': 'Field is required',
      'ar': '',
    },
    '2awtqrrq': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '6f68d2az': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'dmfdgqmx': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'f7goanjb': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // PollAnswerFORM
  {
    'sqx6l8ys': {
      'en': 'Answer',
      'ar': 'عنوان',
    },
    'oqfhz83i': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '9uh2qzvp': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'iyj2d1pj': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'olgpm5j2': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // AllReview
  {
    'gdtvxm4h': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'edce1d8v': {
      'en': 'All Reviews',
      'ar': 'جميع التقييمات',
    },
    'wf9iy6ir': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '1zj9s6w9': {
      'en': 'Course',
      'ar': 'دورة',
    },
    '8wsao2tk': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    '6ttkpzbc': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'u62ylv9u': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'm2zyhwj4': {
      'en': 'Action',
      'ar': 'فعل',
    },
    '7ya823k0': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    '8618n08g': {
      'en': '',
      'ar': '',
    },
    'wozv1yt5': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    '055izhvk': {
      'en': '',
      'ar': '',
    },
    'nk302yom': {
      'en': '__',
      'ar': '__',
    },
  },
  // Singleorder
  {
    '0lloy8o4': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'ropua828': {
      'en': 'Days - Classes',
      'ar': 'حزمة',
    },
    'll6nl5vb': {
      'en': 'Course Plan',
      'ar': '',
    },
    'kcavcise': {
      'en': ' Type',
      'ar': 'نوع الدفع',
    },
    'zff0fpme': {
      'en': 'Price',
      'ar': 'سعر',
    },
    '2bhlsnuj': {
      'en': 'Coupon Details',
      'ar': 'تفاصيل القسيمة',
    },
    'ohrg1e6e': {
      'en': 'Coupon Name',
      'ar': 'اسم القسيمة',
    },
    'ekhvmyg2': {
      'en': 'Discount Type',
      'ar': 'نوع الخصم',
    },
    '5oub765k': {
      'en': 'Coupon Amount',
      'ar': 'مبلغ القسيمة',
    },
    'ikp3h94r': {
      'en': 'Customer Details',
      'ar': 'تفاصيل العميل',
    },
    'nsydpfke': {
      'en': 'Customer Name',
      'ar': 'اسم الزبون',
    },
    '51b6lfoh': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'e9iz1y9x': {
      'en': 'Email ID',
      'ar': 'عنوان الايميل',
    },
    'drsqagm6': {
      'en': 'Order Details',
      'ar': 'تفاصيل الطلب',
    },
    'zo3aagbg': {
      'en': 'AUTO PAY',
      'ar': 'الدفع التلقائي',
    },
    'z0okqv56': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'rzdids2d': {
      'en': 'Order ID',
      'ar': 'رقم التعريف الخاص بالطلب',
    },
    'yrwa8mh0': {
      'en': 'Transaction ID',
      'ar': 'رقم المعاملة',
    },
    'a2jjcdrq': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '293ql6ad': {
      'en': 'Order Summary',
      'ar': 'ملخص الطلب',
    },
    'ae5rp9fo': {
      'en': 'Order Created',
      'ar': 'أجل خلق',
    },
    'stuif0sx': {
      'en': 'Order Time',
      'ar': 'وقت الطلب',
    },
    'cjjaum6v': {
      'en': 'Subtotal',
      'ar': 'المجموع الفرعي',
    },
    'b3dv8ziw': {
      'en': 'Coupon',
      'ar': 'مبلغ القسيمة',
    },
    'itafn22h': {
      'en': 'Total',
      'ar': 'المجموع',
    },
    'abyblrf9': {
      'en': 'Order Status',
      'ar': '',
    },
    'nbe4z5mx': {
      'en': 'CAPTURED',
      'ar': '',
    },
    'bq4w9g64': {
      'en': 'CANCELLED',
      'ar': '',
    },
    '03ookdoq': {
      'en': 'Pending',
      'ar': '',
    },
    'iq991jlw': {
      'en': 'Select status...',
      'ar': '',
    },
    'b4fbf8b6': {
      'en': 'Search for an status...',
      'ar': '',
    },
    'oezkdt64': {
      'en': 'Save',
      'ar': '',
    },
    'wc91hgiu': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    '3jxoav36': {
      'en': 'Purchase',
      'ar': 'شراء',
    },
  },
  // Batch
  {
    'j6hl0624': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'oqailj5z': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    'w8bral1f': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'gl8n2oz6': {
      'en': 'View Batch',
      'ar': 'عرض الدفعة',
    },
    'doyju55o': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    'pd96dkgq': {
      'en': '__',
      'ar': '__',
    },
  },
  // BatchList
  {
    'majip3d0': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    '11iszxaa': {
      'en': 'Ongoing Course List',
      'ar': 'قائمة الدورات المستمرة',
    },
    'dqcjuu1f': {
      'en': 'Archive',
      'ar': 'أرشيف',
    },
    'lpptdcbp': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'bjxeig5y': {
      'en': 'Archived Course List',
      'ar': 'قائمة الدورات المؤرشفة',
    },
    '6qfx8u7a': {
      'en': 'Ongoing',
      'ar': 'جاري التنفيذ',
    },
    'h9fd6ikl': {
      'en': 'Batch Details',
      'ar': 'تفاصيل الدفعة',
    },
    '4tl0jxir': {
      'en': 'ID',
      'ar': 'بطاقة تعريف',
    },
    '7wvo4fc4': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'olbvbgvf': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'rhscsg07': {
      'en': 'End Date',
      'ar': 'تاريخ الانتهاء',
    },
    'uj69i3b2': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '3rbvddrz': {
      'en': '__',
      'ar': '__',
    },
  },
  // BatchFORM
  {
    '1xmqzbb8': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '062o2rlx': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'jr9j9jin': {
      'en': 'Student Limit',
      'ar': 'اسم',
    },
    '89thyzqf': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'anqvdz2i': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'divduxua': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'unfy39y1': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'g6sz9de4': {
      'en': 'End Date',
      'ar': 'تاريخ الانتهاء',
    },
    'drmcfae6': {
      'en': 'Ongoing',
      'ar': 'جاري التنفيذ',
    },
    'a2mads7h': {
      'en': 'Archived',
      'ar': 'مؤرشف',
    },
    'aaq9ambq': {
      'en': 'Select status...',
      'ar': 'اختر الحالة...',
    },
    '5w1fr1ar': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'pa24arf9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2mkji94s': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1vfvesbs': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6u3ln13x': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'acxgx011': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'm89flh1n': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7oexvywt': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    '37bonndz': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'qamf07bn': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'diw1aa6v': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '1nd8fgr9': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // mainBatchStatusChangesProcess
  {
    'hod88090': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // batchChngCourseProces
  {
    '17xsj4m7': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // batchCourseListProces
  {
    'zo697zfq': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // CouponFORM
  {
    'uuyn1pcp': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '8tytzjsi': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'v6txiv9s': {
      'en': 'Discount',
      'ar': 'تخفيض',
    },
    'y3ll0tgt': {
      'en': 'Amount',
      'ar': 'كمية',
    },
    '67ap22b3': {
      'en': 'Select coupon type',
      'ar': 'اختر نوع القسيمة',
    },
    'q874jz05': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'tc2ka255': {
      'en': 'Coupon amount',
      'ar': 'مبلغ القسيمة',
    },
    'h2gy9u4b': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'dfn3s731': {
      'en': 'Total usage limit',
      'ar': 'حد الاستخدام الإجمالي',
    },
    'wzr8jid1': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'y8w68f9x': {
      'en': 'Minimum amount',
      'ar': 'الحد الأدنى للمبلغ',
    },
    'q2f1i54m': {
      'en': '',
      'ar': '',
    },
    'kiug4lrb': {
      'en': 'Maximum amount',
      'ar': 'الحد الأقصى للمبلغ',
    },
    'lfjrxwtm': {
      'en': '',
      'ar': '',
    },
    '2trfz0ot': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    '75y3v1tt': {
      'en': 'End Date',
      'ar': 'تاريخ الانتهاء',
    },
    'k54k4p57': {
      'en': 'Enable Coupon',
      'ar': 'تمكين القسيمة',
    },
    'gar3o3lr': {
      'en': 'Select the courses',
      'ar': 'حدد الدورات',
    },
    'oxkbw363': {
      'en': 'Search here...',
      'ar': '',
    },
    'dx01tobl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'uqwdcsd4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '0ovvflbq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '92040gv9': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qrek58ib': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rf3j62po': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'e4dq0xvf': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'sna1nss7': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '3pvsg0jp': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Coupon
  {
    'x6ge3s4q': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'ksumjnk1': {
      'en': 'Coupons',
      'ar': 'المراجعات',
    },
    'n4kx7x0o': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'clb4zk5b': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '1y8qsifn': {
      'en': 'Coupon Type',
      'ar': 'تاريخ',
    },
    'to1vffc9': {
      'en': 'Coupon Amount',
      'ar': 'مراجعة',
    },
    'hy1d9rs4': {
      'en': 'Usage / Limit\t',
      'ar': 'حالة',
    },
    'hc1o4flj': {
      'en': 'Start Date',
      'ar': 'حالة',
    },
    'e3ivyh87': {
      'en': 'Expiry date',
      'ar': 'فعل',
    },
    '19pdk7uf': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'xkizd74v': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'alhl6afa': {
      'en': 'Coupon Type',
      'ar': 'تاريخ',
    },
    'irfxxms3': {
      'en': 'Coupon Amount',
      'ar': 'مراجعة',
    },
    'o9xgrukc': {
      'en': 'Usage / Limit\t',
      'ar': 'حالة',
    },
    '4u3fx5o4': {
      'en': 'Start Date',
      'ar': 'حالة',
    },
    'ykxpu5ge': {
      'en': 'Expiry date',
      'ar': 'فعل',
    },
    's3pn295p': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'tswabhp4': {
      'en': 'Orders',
      'ar': 'طلبات',
    },
    'y6fjclty': {
      'en': '__',
      'ar': '__',
    },
  },
  // Video_management
  {
    're7oiumd': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'velxncou': {
      'en': 'Media Management',
      'ar': 'إدارة وسائل الإعلام',
    },
    '9cdexfyu': {
      'en': 'Add',
      'ar': '',
    },
    'joggou53': {
      'en': 'Close',
      'ar': '',
    },
    'xfh9vzxp': {
      'en': 'Please don\'t exit from this window until the video is uploaded.',
      'ar': 'من فضلك لا تخرج من هذه النافذة حتى يتم تحميل الفيديو.',
    },
    'k72i4bvi': {
      'en': '__',
      'ar': '__',
    },
  },
  // VideoFORM
  {
    '3qdk18ka': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'qoa9fyfn': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'bq2wmm8k': {
      'en': 'Upload',
      'ar': 'رفع',
    },
    'ib7thi9f': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    '5luj0h7n': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'l9zd2a3t': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'rqfsuca8': {
      'en': 'Video Details',
      'ar': 'تفاصيل الفيديو',
    },
    'vrw82e2h': {
      'en': 'ID',
      'ar': 'بطاقة تعريف',
    },
    'd6yc2q6g': {
      'en': 'Date & Time',
      'ar': 'التاريخ والوقت',
    },
    'g7t1gbfu': {
      'en': 'Duration',
      'ar': 'مدة',
    },
    'vrkx6j9q': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'y2h6qq1t': {
      'en': 'Update',
      'ar': '',
    },
    '9e1q7kfg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ooh4dm21': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'txl3zj0i': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ry3xppij': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yk7525pa': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'uhebsddi': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // BulkSMSMarketing
  {
    'y1r9wa7b': {
      'en': 'Bulk SMS Marketing',
      'ar': 'دورة',
    },
    '9rwltyyd': {
      'en': 'New',
      'ar': 'جديد',
    },
    '5ek6kpxm': {
      'en': 'Date',
      'ar': 'اسم',
    },
    'iwui3c6w': {
      'en': 'Message',
      'ar': 'تاريخ',
    },
    'bjk0z8nv': {
      'en': 'Status',
      'ar': 'مراجعة',
    },
    'vpmb6tmd': {
      'en': 'Action',
      'ar': 'فعل',
    },
    'u761l125': {
      'en': 'View',
      'ar': 'منظر',
    },
    '3zo5e1be': {
      'en': '',
      'ar': 'يمسح',
    },
    'imouxp9h': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '6b3s1ua5': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // BulkSMSMarketingFORM
  {
    'rslw7q3g': {
      'en': 'Message',
      'ar': 'رسالة',
    },
    'sec3mue4': {
      'en': '',
      'ar': '',
    },
    '6qgbmal9': {
      'en': 'Send Now',
      'ar': 'ارسل الان',
    },
    '8kc1oox0': {
      'en': '\"The maximum characters for SMS are 160.\"',
      'ar': '\"الحد الأقصى لعدد أحرف الرسائل القصيرة هو 160.\"',
    },
    'e5j084bc': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    'enwc34o9': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'mapfmaoo': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'vhnx3pv8': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'duulbiwj': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'rzzzpklg': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationCourse
  {
    '15kuloi8': {
      'en': 'Course',
      'ar': 'دورة',
    },
    '3md9ttxa': {
      'en': 'status',
      'ar': 'حالة',
    },
    'uuvi621b': {
      'en': 'Chapters',
      'ar': '',
    },
    '4cnei962': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'bhszzs2y': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationCourseFORM
  {
    'g6l974o3': {
      'en': 'English',
      'ar': 'English',
    },
    'wpzlroq9': {
      'en': 'English',
      'ar': 'English',
    },
    'naj9pymh': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    '6dro57zf': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'lh4disg9': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '2tfzf4cs': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'ixpy2g2j': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'sfotqswy': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'oy0h5awt': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'qukp6uqb': {
      'en': '',
      'ar': 'أدخل العنوان الفرعي للدورة هنا ...',
    },
    'nsnv89ph': {
      'en': 'Description',
      'ar': 'وصف',
    },
    's9rmno6i': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '7yprmd07': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    'jt7mun45': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'tuv9vwv0': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    'i2qs0tcv': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '9s7w4m4k': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'r6egfu7n': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    's79vmr1l': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '7xdwxdf0': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'cjbgfjpv': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'i4ba8gtv': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'vxtitlzf': {
      'en': '',
      'ar': 'أدخل العنوان الفرعي للدورة هنا ...',
    },
    'unwpj0ao': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'xa5of124': {
      'en': '',
      'ar': 'أدخل العنوان الفرعي للدورة هنا ...',
    },
    'eksvd7pb': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'd9wfkefz': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'exmvvkl4': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '5mjaz4if': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'k60627ap': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    'xcblxc94': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'ly6e9xv0': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    'z6kwjn6e': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'ebd02n5c': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    'ksydpd7e': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'ygnjp8z5': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    '5io0che2': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '0noxvnm3': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    '9ttxh56p': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'hdk83jjc': {
      'en': '',
      'ar': '',
    },
    'ujxgoa7x': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'mu6dgoln': {
      'en': '',
      'ar': '',
    },
    'zsxzh607': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'xjjvgu2v': {
      'en': '',
      'ar': '',
    },
    '80mu86s3': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'sxu0bis5': {
      'en': '',
      'ar': '',
    },
    'lnzq3rf7': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'e4y3nz9g': {
      'en': '',
      'ar': '',
    },
    'w3fmltwq': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '146n5d1n': {
      'en': '',
      'ar': '',
    },
    'vo9ebm8n': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    '642yqnb4': {
      'en': '',
      'ar': '',
    },
    'cip4pfjq': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    'iy832eo9': {
      'en': '',
      'ar': '',
    },
    'giwmrbf7': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    'ixozl9qf': {
      'en': '',
      'ar': '',
    },
    '69q9effs': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    'a7w5bko7': {
      'en': '',
      'ar': '',
    },
    'axd6k9xn': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'oq01770x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0h04368c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'q3ho598n': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'htiokd0g': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ulq1143u': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gm2sj9ik': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hbisseup': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'f8mo6lbs': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8x090ic8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '86zfc71i': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8ex2rxr8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'tm65zpxu': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'j6umjokj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'zvx2em2y': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'xphj3dna': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'w8yi6b0t': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'd3le64xu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2jjhakw6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1wcm3mir': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'mmk4f29v': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ffli4hln': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ydfktlew': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'xwrdv6ne': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'zjrlxwim': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1nqs4q0w': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '3qht3rnl': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationChapterFORM
  {
    'n7el8kuo': {
      'en': 'Chapter',
      'ar': 'الفصل',
    },
    'dalwbh87': {
      'en': 'English',
      'ar': 'English',
    },
    'lgekbk2r': {
      'en': 'English',
      'ar': 'English',
    },
    'jb847y1a': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'ti1w883m': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'bbzdd3mj': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'i65nvo2a': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'qp632zm5': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'sjwcv1tm': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'n89kjnhv': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '6sy2ckzl': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '63ouzsxw': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'hod9fm6y': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'gf2jrumk': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'rxkwisk7': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ay773iia': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '07yj3sdz': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'efoixlcv': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '4550e64a': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'cel8zg7c': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'mmmxw9gr': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    '0dpohcqi': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'cjyduq2t': {
      'en': '',
      'ar': '',
    },
    'or91z0j5': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'nieyfgud': {
      'en': '',
      'ar': '',
    },
    'x6xv6beq': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'ev3nv9ad': {
      'en': '',
      'ar': '',
    },
    'ltm871mi': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'x660nddr': {
      'en': '',
      'ar': '',
    },
    'q3c57u7i': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'udzi33j0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dwi5eohn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    't9ggu5g5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hgqfk5gf': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'xqzcwh3z': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'nhhwonbo': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1kt02wve': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'h5ytt1g7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'mind8m0a': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'eclg1fm8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7s4uncjo': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '73asx101': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '76ys2x5h': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2kkxwdln': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'p63lza8x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vdzyq4qh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kj07vtfx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'czwgfgu7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '2yh16dic': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9hvry5t7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7017vwwv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'z21405tq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kuysqmu2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'fw08uljz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hdu7sak1': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '38havm4i': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationLessonFORM
  {
    '1d78gl9l': {
      'en': 'Lesson',
      'ar': 'درس',
    },
    '6hgd2twf': {
      'en': 'English',
      'ar': 'English',
    },
    '8ec0i258': {
      'en': 'English',
      'ar': 'English',
    },
    'cdeq57lg': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'vsq8yuc1': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'hrdtwmnr': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'apzcx66g': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'w05uclo6': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'za9bfzvm': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'k8ex0fdx': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'zv9w6ofm': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'iyloijqo': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'lujb62dd': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'jyn88uam': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '5h31cg42': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'q66q6pp3': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'la39fwmo': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '17wtd2oz': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'k3dwj1c8': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'wih8a766': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'd129wv89': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'qvklftno': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '4tqcivbb': {
      'en': '',
      'ar': '',
    },
    '5el3sxl1': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'frm0d084': {
      'en': '',
      'ar': '',
    },
    'kfnhvw5n': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'dm8z1cmb': {
      'en': '',
      'ar': '',
    },
    '5w41sqzf': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '6tkkmzlo': {
      'en': '',
      'ar': '',
    },
    '9tmnf4mj': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'etapzw34': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'q3oo7r1z': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ukgujbhf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'h8k2ioxx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x42h8k7w': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'lnnvfalc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '9jmjtkxe': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1dz2s5x2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'km8ylzbl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9bac86km': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'go4dacxr': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0ekcz25v': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wou0d054': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ssywqzem': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6v7intir': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'z7o8c7fn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'w2abcz4d': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xqhrkmuo': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '9c3kt4nk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'zbmovxm3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'zh6ercjt': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '4meujn38': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yod422c2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5j9ufbcr': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8fpl8zca': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'hwhdcecr': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationZoomLessonFORM
  {
    'zdfkn3t7': {
      'en': 'Zoom Lesson',
      'ar': 'درس التكبير',
    },
    'f245ypu7': {
      'en': 'English',
      'ar': 'English',
    },
    '3n7t33ek': {
      'en': 'English',
      'ar': 'English',
    },
    '2p2wnzlf': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'g6iixxcj': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'm8ykc3xs': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'tmhed7u8': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'frw6cgsu': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '3r2ul0iw': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '3me7qr0c': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '6bn9hnug': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'vvl3zf1o': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'hkq7i0re': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ksq8mjzr': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '9en99u6w': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'j6e9y0hu': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '6xzx151j': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'xl1tq88b': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'tnd5wgn9': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'xyqh7uaw': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'qo3t5wn7': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'sixq9z7k': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'mviglxpu': {
      'en': '',
      'ar': '',
    },
    'uubrsfim': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'vztfknvv': {
      'en': '',
      'ar': '',
    },
    'bir3za6k': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'pzqmlr9x': {
      'en': '',
      'ar': '',
    },
    'mlykwwlm': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'grcfysqv': {
      'en': '',
      'ar': '',
    },
    '6zijzdwo': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'r8o07e3t': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'aymopcyb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'v2mck6i8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1h5tzqls': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'cllwvlkf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ojie2uyz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'n1n7yj90': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dq0v0h6k': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vohaef73': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'w349wj02': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'mybmi29l': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vsfx3fqs': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3md95riv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yit09f8v': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'km8fdd64': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'n6id2kh8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hspo5miv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hrfv9kci': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'k57oh7ij': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7ig03grx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'n1dau4nu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'wxgusagg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '320khnpj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    't6o38pd2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'l3fi1fae': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '659fisz4': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationAnnouncementFORM
  {
    '78ketoqp': {
      'en': 'Announcement',
      'ar': 'إعلان',
    },
    'ymt6upxe': {
      'en': 'English',
      'ar': 'English',
    },
    '1hisyupp': {
      'en': 'English',
      'ar': 'English',
    },
    'nc64gaq2': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'xr8eqjqk': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'tur748nz': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'g8cug9u2': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'th6r70st': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'wja6jjlw': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'ympxg888': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'oyiyxmsj': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'yxxi8225': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'yd3gw2we': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'qox9bpxo': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'e65maxhn': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'pa3hpi1v': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'f1r1io7r': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'pxxsmblc': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'ma8zann4': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'o3zrgsd4': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'es6dx50r': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'cpabgmjw': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '6xprxccf': {
      'en': '',
      'ar': '',
    },
    'ble92jtr': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '0j9bh60e': {
      'en': '',
      'ar': '',
    },
    'jt7w1jdl': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'jii1rby4': {
      'en': '',
      'ar': '',
    },
    '021bf5qd': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '79uwj8ve': {
      'en': '',
      'ar': '',
    },
    'n5ugc6bn': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'nk3saq0n': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gmvhmttg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'r3iwg3sw': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'mc1mlcb6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8stxt0rc': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qago5bqc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ojda7eem': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '837nfwsj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4qfwwo8v': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'tq57rnrw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm8zfb1b9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6niebx3o': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wbc7r52x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vaguvnv6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x150rnma': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    't9ieslfq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'iy8t28lu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '05lpd7tt': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '02qjdbqk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rxitapmx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '5rctn1p0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yo2tgwj7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '99iges51': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'lhrshmd8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '378f00ka': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'ynrrvx8v': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationCourseCategoryFORM
  {
    'jsj90vuu': {
      'en': 'Course Category',
      'ar': 'فئة الدورة',
    },
    't7zlzab0': {
      'en': 'English',
      'ar': 'English',
    },
    '9v4zyx61': {
      'en': 'English',
      'ar': 'English',
    },
    '7zmtgote': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    '0f806wch': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'a1wneks3': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'ltp4ks5g': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'lafkekx6': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '29rqo23a': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'xvo5m07w': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'x2ct26e8': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'zrhaur53': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'bifmrarp': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '1541edik': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'r9oaaoum': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'dfm34z63': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ygmfynh6': {
      'en': '',
      'ar': '',
    },
    'bbdzxh2o': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '38w8iqfg': {
      'en': '',
      'ar': '',
    },
    '0mjpq45z': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '0y1j3sqs': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5vqx4bgm': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qxjgsi5z': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ye5vi76y': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'sv5e1puu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hnerg8v3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'i70do0hj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2lh3wqwz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4p6ile4g': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1m9jqry3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x2ry3pq8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6qh955i7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'tmqcuy5k': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xx9xsnq2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '720t80io': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'f27q4us8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3e4b1ylp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'cl6gbkre': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3l185ho0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'e48h3lvp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'w42y13ww': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'aw909eyf': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'byno28eu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8o75z6dl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ivewf2rh': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '0dkcya6a': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationCategory
  {
    'u3bzat69': {
      'en': 'Course Category',
      'ar': 'فئة الدورة',
    },
    '9awwv7ib': {
      'en': 'status',
      'ar': 'حالة',
    },
    'n9kvfo2j': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'u153b5d1': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationMeetingFORM
  {
    '56z2ko2j': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'z1ftyaqi': {
      'en': 'English',
      'ar': 'English',
    },
    'rjv3ql2k': {
      'en': 'English',
      'ar': 'English',
    },
    '5yydfyrn': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'wwiv8s6c': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'r4p9c53n': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'c3mltizy': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'xwvgr2f5': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'uknid3jx': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'erzeewb2': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'ts9qg3fk': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'zpoxcsmd': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'liu7r868': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'mj6fy02i': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'jrcbym4m': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'yma5ik84': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'zeq675um': {
      'en': '',
      'ar': '',
    },
    '2yinldqm': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'y2mpwzy5': {
      'en': '',
      'ar': '',
    },
    '0dmo26pg': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'tk5le4a1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'e6ykzxrn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'giky7dze': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dkrn1qfg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'jm91u31x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'zft7f6yi': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '52qslcq8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dx0uk7k1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kyp1l1np': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6f6hmk4r': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '39x0cevg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7zf0ztca': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qh1pyo55': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5tid9jdr': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'djq2aegf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vp59phlc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'rie30rbn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6eodd2wu': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '9baqmyju': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'cnrdplcd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'c94onuyf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8uhdqjen': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'a0nps9jk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xse9l86x': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ao0hmd51': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'd8wvid9o': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationPollFORM
  {
    'l9eisq9v': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    'd2zbyjhy': {
      'en': 'English',
      'ar': 'English',
    },
    'vh93w3h1': {
      'en': 'English',
      'ar': 'English',
    },
    'x19z0z5q': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'e3jdaot8': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'rqx7ki9j': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '48stlmo4': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    '4tvsafph': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'nspgdu7a': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'kswd2l65': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'v2vt9d5v': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'g13guajg': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'yae8z1id': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '1enf4oxl': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'tvfkadwp': {
      'en': 'Bio',
      'ar': 'السيرة الذاتية',
    },
    'uyb1kkri': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'br65e19i': {
      'en': 'Question',
      'ar': 'سؤال',
    },
    'cpwo1g3q': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'xw2q0miv': {
      'en': 'Question',
      'ar': 'سؤال',
    },
    'fvttuzqk': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'yj40lev4': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'xpppobgp': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ia0komg5': {
      'en': '',
      'ar': '',
    },
    'hnzboavc': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ibtj40oj': {
      'en': '',
      'ar': '',
    },
    'tbqgx4d4': {
      'en': 'Bio',
      'ar': 'السيرة الذاتية',
    },
    '63z5pwix': {
      'en': '',
      'ar': '',
    },
    'mc562ojp': {
      'en': 'Bio',
      'ar': 'السيرة الذاتية',
    },
    'j41nc79g': {
      'en': '',
      'ar': '',
    },
    'e11faf1u': {
      'en': 'Question',
      'ar': 'سؤال',
    },
    '122sdevc': {
      'en': '',
      'ar': '',
    },
    'xqdlnezr': {
      'en': 'Question',
      'ar': 'سؤال',
    },
    'cubpi4ol': {
      'en': '',
      'ar': '',
    },
    'txj3f2jx': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'wqs2ngny': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'k8101nf3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'nynskfkf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'osawpta4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wlqgwtw6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qzv0q5f5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '0fvisb62': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'm9k3az0d': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hwi79oom': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'k15go8sb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    't6l37jyg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    't83akblf': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yafajiiy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rg0v8go4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3emfcr64': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'n9etjmnb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'd3b2fkdl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'mgfvh44e': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qsu6us2x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'q4kw9qez': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'g2rjpjmr': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'nntrcmky': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pkzrezjz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xxdbbs4k': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'e3mi0eex': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    't4dff7tf': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationPollAnswerFORM
  {
    '4xbtb3l3': {
      'en': 'Poll Answer',
      'ar': 'إجابة الاستطلاع',
    },
    'k3yzlhre': {
      'en': 'English',
      'ar': 'English',
    },
    '3v3ucmey': {
      'en': 'English',
      'ar': 'English',
    },
    'mz54937x': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'h8xnj5d0': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'xi5tydex': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '9eejfpnw': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'gayc76zs': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    '6s2uzjk9': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'yo5gleiy': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'h1fadsdr': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    'dom8svgj': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '13py5ahw': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    'qrhuowpj': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    't6c2n2jf': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    '548c7xpx': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    'v3lp0m0d': {
      'en': '',
      'ar': '',
    },
    '0sjb8itl': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    'uup6251o': {
      'en': '',
      'ar': '',
    },
    '47l1gaam': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '84deapm1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'q4foil80': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wedjx7l1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '4dy6eyij': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'd591n69e': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ci5rfj1h': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'gl1ov5q2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'i0b93cj5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'p6uet6yj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'bipn1eg4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '31yuthoh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6gpgbnpp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'noqey9v6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9k1tckzp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hx4252bo': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '52tfz5zp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'rp0qxb2a': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'kmwml28w': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ed5bwsgn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '935qqode': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4wz8cqo6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5xfefhq1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'c5ot6xkw': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '68j4d45m': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'f45qdujp': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'knr7gfof': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationBatchFORM
  {
    '6jrh5kaf': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    '4b4j3m7y': {
      'en': 'English',
      'ar': 'English',
    },
    'uj59sctm': {
      'en': 'English',
      'ar': 'English',
    },
    'v6hibqw3': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'ernecrom': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    '6m0d3t0n': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'xm5zbahp': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    '31mk7ugz': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'go61bv2p': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'yduz1d7n': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '6bzxxrt3': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '89wzjj8r': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'qc16mmtl': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'grd3d891': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '0theoo5z': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ltp0a4ed': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'duaanwep': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'jp8r09pq': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'fudfmvic': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'crhy54tr': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'zmmf5fv0': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'm5h2g2yu': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    't4n4tk6s': {
      'en': '',
      'ar': '',
    },
    'uhdvsph6': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'gintv3r5': {
      'en': '',
      'ar': '',
    },
    'u23mwoim': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'x1t9w5xk': {
      'en': '',
      'ar': '',
    },
    '8hx1kv8s': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'q3qxol7p': {
      'en': '',
      'ar': '',
    },
    'nddo7w3e': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '3zr8k8z9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'l7isve7c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'rrea5lmo': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'fa4tpm8z': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'l8ak2gl5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6uvi1s58': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hm9g00cz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0y6rrkee': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8a5c0l3k': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yxlmymc1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pte9xppi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'cmgnkzqp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'b4jf1n19': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1t09u92m': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'sro1kr2j': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'bkbau6su': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'r5jwkogn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8j9fk62o': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1izlk0o7': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'mfknbs6q': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'txxeun8t': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vkgvaajy': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'efz162w3': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'c60hth4r': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4qo9e16f': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '8oe46xd4': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationCountryFORM
  {
    '301emdxe': {
      'en': 'Country',
      'ar': 'دولة',
    },
    '0d3g1g6f': {
      'en': 'English',
      'ar': 'English',
    },
    'o41dyjkr': {
      'en': 'English',
      'ar': 'English',
    },
    'ddvpz4ay': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    '1777535z': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    '84dyrlu9': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'n8rc2giv': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'zfet14se': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'iz400gfa': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'vt8nl51h': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'me5aetjn': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '9scl0s8c': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'jtocuqaj': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '52m3fkqd': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'y384wtn8': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'gq2dbwf8': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '8vnce7kp': {
      'en': '',
      'ar': '',
    },
    'riqomxs3': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'q0r9lrdf': {
      'en': '',
      'ar': '',
    },
    'rv3czr04': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'mv96zw7c': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'spu4i32m': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7nd7gaw4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dct9kbdl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bfpgauhm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'nn82hzq2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'nnsrvhhc': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0as5pq43': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yz4vu3ic': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    's4ebqo8l': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm7so5os6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'k16mmgio': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'fsvf4mps': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rm5u0g8c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8o1ztr6w': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yrbf042p': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kgn1ia74': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '96hg7zum': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wbm8wren': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yel73xg7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hj37667v': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'x1ianuuu': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6qiayhkz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vzhidtdm': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    's6hymwgg': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '2g9tspd6': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationUniversityFORM
  {
    '6zj5yd2b': {
      'en': 'University',
      'ar': 'جامعة',
    },
    '3u47kos5': {
      'en': 'English',
      'ar': 'English',
    },
    'sljt8uib': {
      'en': 'English',
      'ar': 'English',
    },
    'clik4a1j': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'vppcrpma': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    '6dqk98rb': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'f51rjsjn': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'g0zmhhu0': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'jdzunu4t': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '25j5um4x': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'jpd5et7f': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '53q3v5be': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'l5n9ih0x': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '6igl34cv': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'gnrnqqgp': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'fsf10oel': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '9vaafjsn': {
      'en': '',
      'ar': '',
    },
    'cau795wj': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'dv9f0fr5': {
      'en': '',
      'ar': '',
    },
    '0wm8mwbi': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'hnsw5hit': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qavhdcju': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'l745tlo6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hu64ql9c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ijf9h7j5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '10jnak7s': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x79nhj26': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xo0cwn72': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ur4i4q3c': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ojkakzqj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qahvkrg7': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'c2x8go69': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kmlt24wn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '76qfbmlk': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '2t77117j': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '473m8bjh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'dyo49ckf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hpqo5dlx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'rvoub9ex': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qrkytziq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'f6hoh5pw': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '71vywsmy': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'g5wm0elu': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'lrclec66': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6g2czpxn': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'twboon1z': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationBranchFORM
  {
    'irj307li': {
      'en': 'Branch',
      'ar': 'فرع',
    },
    'tn2163x6': {
      'en': 'English',
      'ar': 'English',
    },
    'xap1nt8e': {
      'en': 'English',
      'ar': 'English',
    },
    'afhu08zn': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    '7tz2ni03': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'fcfhpz2e': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'v8izgf7l': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'tayzgxqf': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '7vi9zugf': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '4j7ynnu2': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'fcy7yt34': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'bpjt162i': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '915sdeax': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'zndg9hjy': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'usw283ho': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'g82nmgho': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'i8m6016n': {
      'en': '',
      'ar': '',
    },
    'ht58l8p7': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'vn6r5boi': {
      'en': '',
      'ar': '',
    },
    '5qzyc6qu': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '35un39ig': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'x4q54l1w': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'zltfjo2o': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'yivjlfml': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7ozjlr2a': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '3xem6yo9': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qw1n4jv0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gidm7z7j': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'surypkro': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vkyurfdc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    't1jybnst': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'abld92k1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vovy0w8c': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'fqw90rda': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vztjbboh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6fia5a89': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'am7aeytf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '50t6ol0c': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kp0jfr8r': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ih7i2ao5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6axjt5an': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'kzxarrit': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qcgc9it6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'butok2ij': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'c8xntdk1': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'oyldjlg5': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationSettingFORM
  {
    'jv2s5fs6': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
    '2a3v1eba': {
      'en': 'English',
      'ar': 'English',
    },
    '7ej3fgv7': {
      'en': 'English',
      'ar': 'English',
    },
    '6d3w3gkh': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    '5hklzl6x': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    's1n8h5t3': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'fxtvym57': {
      'en': 'About Section',
      'ar': 'حول القسم',
    },
    'mpaxhite': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'sdnolu80': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'dwzzucgm': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'g1jbzn4t': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'sb9k9eyz': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'f0gj9nfp': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '86wbr3oe': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    's9qflfdq': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'lqo6mgdz': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'v3jeuwy4': {
      'en': '',
      'ar': '',
    },
    'bw4w5y44': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ftud2ecn': {
      'en': '',
      'ar': '',
    },
    'a2yptmma': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'ji86740n': {
      'en': '',
      'ar': '',
    },
    'iviodau7': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '8f8jgmfc': {
      'en': '',
      'ar': '',
    },
    'dgo4z7oj': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'y00kayy5': {
      'en': '',
      'ar': '',
    },
    'sszc2twm': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '0ud3eq4e': {
      'en': '',
      'ar': '',
    },
    '0oio7sot': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'yg6nso0r': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '78k6hvrq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'r5u0rszn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ou03tylm': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'oqbs6bd1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'piyykhmh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'z2ofrpx5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'khz6bzjs': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ysd4o0pk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'p0gx90ff': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bzida5a9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'phk23w7v': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4rfplg2k': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '4mv7adfp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    't4n95sqm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'tzlz2igc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'dd6ghsdy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'i7z4bl19': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3hcaht9b': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qcifvcpz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'exw2ddar': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0teeylco': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'dbs4zrym': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5q9khf4e': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'l2ox5mjj': {
      'en': 'General Section',
      'ar': 'القسم العام',
    },
    'euivh651': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'uoh285f6': {
      'en': 'Address',
      'ar': 'عنوان',
    },
    '4fe946vu': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '81qkzmlq': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'h8pw3s74': {
      'en': 'Address',
      'ar': 'عنوان',
    },
    'r272zxn9': {
      'en': '',
      'ar': '',
    },
    'rjwyp31b': {
      'en': 'Address',
      'ar': 'عنوان',
    },
    'knyf91ls': {
      'en': '',
      'ar': '',
    },
    'poch32km': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '5npvt7s2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'tl22rmv2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'axxj18jn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8oaagsh1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1tybtvla': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5rt2aqbn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '14r5451u': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'z7wg8szn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'er4eqfvm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ej1n15cp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'borj4rhk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5bkncfv4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8dovi6tf': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '05jxd41g': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hge40hrv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'j2rcmu4r': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yrbj13nq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'zrkpwqau': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'glurlkve': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '0m8xycon': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'a3jke21a': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '3sfpy66g': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hy5w89dq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ja0mpxhg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'uzk6199t': {
      'en': 'Home Slider Section',
      'ar': 'قسم المنزلق المنزلق',
    },
    'gv9k2hcn': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'eurc4kbp': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'pe07pmyq': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'hpt1omhk': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'gb1hw3gx': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'hg4mc11r': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    '7qvfkit5': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'l8v5wjsy': {
      'en': '',
      'ar': '',
    },
    'mw8ldnix': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'ype72jpm': {
      'en': '',
      'ar': '',
    },
    '3ipfgxr3': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'th97lgx9': {
      'en': '',
      'ar': '',
    },
    'a79pmvqz': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '68w5cwud': {
      'en': '',
      'ar': '',
    },
    'dsm5cjxu': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '5ru3odvi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'r5yisfee': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pory871l': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ncwpjv8t': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hjhycwal': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '3opxon4g': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '7buostn6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'qmyrb4v6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ltq4l4ef': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'iir9qcss': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '9whmecuv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xc6c0xkl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'x9bwqnsd': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vdpfh947': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ab10s08w': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'adnlsv09': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bhqfdbdl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8a9ic47n': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hsiph7xb': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'n5o5zldq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'sp19t790': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5huiqsna': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'btip9d3x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2mp969is': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vjdgeu9s': {
      'en': 'Onboard Section',
      'ar': 'قسم على متن الطائرة',
    },
    'j50v3huz': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'l9ojwc6p': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '43yh5p5d': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'sr2mcub3': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'fxjceb8e': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'vq83a851': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    '84b78x0p': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'y05l0qyx': {
      'en': '',
      'ar': '',
    },
    'zvk6xhwx': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'tk3thnzh': {
      'en': '',
      'ar': '',
    },
    'roe4h8fc': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '3dm03mlk': {
      'en': '',
      'ar': '',
    },
    'daidfspg': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    'usg9ifj4': {
      'en': '',
      'ar': '',
    },
    'moyvqrfv': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'wbzjcg3v': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '70ivm2o6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6lfy45yx': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dvda6x43': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '04tb7iw4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'kfzngaj1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3ohaa66s': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '58mue3ee': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '93nxx7u5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'x9r4k7jz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'capceb70': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '05hj7oha': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vbgewyc4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'z5cawomu': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pvlwguab': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '93o76hrg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '38chke21': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'smhquyga': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pd0op1xr': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2txxoiok': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hi4chap0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'iunh6upn': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vk7ge6fq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7fnkamkj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'am9gdbu7': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'v0il4lgs': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationChapter
  {
    'qjx2mntu': {
      'en': 'Chapter',
      'ar': 'دورة',
    },
    'oedzjc7r': {
      'en': 'View Lesson',
      'ar': 'عرض الدرس',
    },
    'o48qqxts': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'psm0zgqo': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationMeeting
  {
    '02sp69r5': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'jppzidbn': {
      'en': 'status',
      'ar': 'حالة',
    },
    'rvv2r1zg': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'nl7kyiex': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationCountry
  {
    '60ucsvbu': {
      'en': 'Country',
      'ar': 'دولة',
    },
    '2udz79j2': {
      'en': 'status',
      'ar': 'حالة',
    },
    'mtapx3xd': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '43e59uq6': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationUniversity
  {
    'vjvk21op': {
      'en': 'University',
      'ar': 'جامعة',
    },
    '6yedltaj': {
      'en': 'status',
      'ar': 'حالة',
    },
    'nev8cuts': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '5r42ott1': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationBranch
  {
    'xbjgi0hc': {
      'en': 'Branch',
      'ar': 'فرع',
    },
    'szuv5apx': {
      'en': 'status',
      'ar': 'حالة',
    },
    'le65rgty': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'y47fanuy': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationBatch
  {
    '27ehv1ne': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    'f47wp1eg': {
      'en': 'status',
      'ar': 'حالة',
    },
    'ct97hbjn': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'yb47ztmu': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationPoll
  {
    'xu37qryf': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    '34i490b6': {
      'en': 'Answer',
      'ar': 'إجابة',
    },
    'lvd5ihxz': {
      'en': 'status',
      'ar': 'حالة',
    },
    'vgdpivx8': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'a5sni6cl': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationLesson
  {
    '8m1pianp': {
      'en': 'Lesson',
      'ar': 'دورة',
    },
    'e6muuee7': {
      'en': 'View Zoom Lesson',
      'ar': 'شاهد درس التكبير',
    },
    '1vsb7fsn': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'u2z6vwt9': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationZoomLesson
  {
    'y75as3wh': {
      'en': 'Zoom Lesson',
      'ar': 'دورة',
    },
    'icpy6gq3': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'symaf23b': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationAnnouncement
  {
    '2lp70ikn': {
      'en': 'Announcement',
      'ar': 'دورة',
    },
    '5xy1othl': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'goriv1kj': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationPollAnswer
  {
    'jbcqvt41': {
      'en': 'Poll Answer',
      'ar': 'دورة',
    },
    '5agzc9pf': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'drx68ir5': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Category
  {
    'f7onuxhh': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'rc2vg1c5': {
      'en': 'Edit',
      'ar': 'يحرر',
    },
    '28xchmhn': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'd3gunfvs': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // CategoryFORM
  {
    'y66qygd9': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'ngakqd32': {
      'en': '',
      'ar': 'أدخل اسم الفرع هنا ...',
    },
    'hryh4h5i': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'u9ns0ucw': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    '6gls6jyd': {
      'en': 'Remove',
      'ar': 'إضافة صورة',
    },
    'brgdcrjv': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'y9zc2fwa': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // translationMainCategory
  {
    'f9qqsa27': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'to60riyj': {
      'en': 'status',
      'ar': 'حالة',
    },
    'q36cg5my': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'ykib3vic': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // TranslationMainCategoryFORM
  {
    '9fz2m9g2': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'i7k7pb5t': {
      'en': 'English',
      'ar': 'English',
    },
    'mldaa91g': {
      'en': 'English',
      'ar': 'English',
    },
    'nitxm6zq': {
      'en': 'Arabic',
      'ar': 'Arabic',
    },
    'o6yx9ktx': {
      'en': 'Select Language...',
      'ar': 'اختار اللغة...',
    },
    'kln8pepj': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '0a6tirn5': {
      'en': 'Original',
      'ar': 'إبداعي',
    },
    'fa09wkhl': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'nyu3bav2': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'neyza56y': {
      'en': 'Automated',
      'ar': 'الآلي',
    },
    'zq4w6y52': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'v9slsaav': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'mtznlgnp': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'fb3ipiig': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '5z287ksg': {
      'en': 'Manual',
      'ar': 'يدوي',
    },
    'gjazbasa': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'lz74k35l': {
      'en': '',
      'ar': '',
    },
    'ljpvn230': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'rx3bptwk': {
      'en': '',
      'ar': '',
    },
    'knc9s2s6': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'flelgew9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'mlr4y7z0': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bti3cigb': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'osjo8akc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vb3gms08': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'optvtf99': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bivgreru': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gxuug3jw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bobxllq0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1u5hz35o': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    's2j8mhkl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '20ccfy4n': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qkhgk1d6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'fzd25dr9': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '4e1oynz9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2lgu8rb8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'jrokw5v9': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vqvguyj9': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'fjltmn4d': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'notsld0r': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wsvizrrh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'w8sn1jg3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'hfy9yrnk': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '90azx66s': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'e994c997': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'dcf8vmks': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // BulkSMSForm
  {
    'yskmy7ej': {
      'en': 'Message',
      'ar': 'رسالة',
    },
    'n9zyp04a': {
      'en': '',
      'ar': '',
    },
    'i8pvlipn': {
      'en': 'Send Now',
      'ar': 'ارسل الان',
    },
    'r1tb9fr1': {
      'en': '\"The maximum characters for SMS are 160.\"',
      'ar': '\"الحد الأقصى لعدد أحرف الرسائل القصيرة هو 160.\"',
    },
    'egay1zhw': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    '2o2j7l73': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'vt1heq4r': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'lnnzkqtm': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'w71biyoz': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'idsurpz2': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // CourseFORMCopy
  {
    'ei5sv9jq': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '4hbwdene': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Email_log
  {
    '8pdc4g7e': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'es8cclni': {
      'en': 'Email Log',
      'ar': 'جميع التقييمات',
    },
    'sa8pdr7y': {
      'en': 'Subject',
      'ar': 'اسم',
    },
    'dyyghmfr': {
      'en': 'To',
      'ar': 'تاريخ',
    },
    'wio8hriw': {
      'en': 'Status',
      'ar': 'مراجعة',
    },
    'zzsmgtvm': {
      'en': 'Date Sent',
      'ar': 'حالة',
    },
    '9em1qca9': {
      'en': 'Action',
      'ar': 'حالة',
    },
    '72d7wnzz': {
      'en': 'View',
      'ar': 'منظر',
    },
    '5oh8pfxj': {
      'en': '__',
      'ar': '__',
    },
  },
  // Session_log
  {
    'veh6rdtv': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'zklticmn': {
      'en': 'User Session Log',
      'ar': 'جميع التقييمات',
    },
    'c6zr238e': {
      'en': 'Filter',
      'ar': '',
    },
    '4t2i1ctj': {
      'en': 'Reset',
      'ar': '',
    },
    'a1jhbp2g': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'h4l51dvv': {
      'en': 'Status',
      'ar': 'دورة',
    },
    '7awil8q0': {
      'en': 'Login Time',
      'ar': 'تاريخ',
    },
    '5jlstl3z': {
      'en': 'ID',
      'ar': 'مراجعة',
    },
    'fmog04b3': {
      'en': 'Device',
      'ar': 'حالة',
    },
    'lpuw5hdv': {
      'en': 'Action',
      'ar': 'حالة',
    },
    'pmp14i78': {
      'en': 'Success',
      'ar': '',
    },
    '44teml71': {
      'en': 'View',
      'ar': 'منظر',
    },
    'hpaydzxm': {
      'en': 'Success',
      'ar': '',
    },
    'yfoq91nk': {
      'en': 'View',
      'ar': '',
    },
    'tpv93j3s': {
      'en': '__',
      'ar': '__',
    },
  },
  // Activity_log
  {
    'trnev2ci': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'h5cs9ooa': {
      'en': 'Activity Log',
      'ar': 'جميع التقييمات',
    },
    'k65cdmb4': {
      'en': 'Archived',
      'ar': '',
    },
    'ch72acq2': {
      'en': 'Created',
      'ar': '',
    },
    '86fwgjzb': {
      'en': 'Deleted',
      'ar': '',
    },
    'w35w2ttv': {
      'en': 'Modified',
      'ar': '',
    },
    'fmffaefp': {
      'en': 'Select event type...',
      'ar': '',
    },
    '74ygnqxw': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'q6jn070o': {
      'en': 'Branch',
      'ar': '',
    },
    'ydjt0kr1': {
      'en': 'Category',
      'ar': '',
    },
    'b39mipej': {
      'en': 'Chapter',
      'ar': '',
    },
    '5qy452ms': {
      'en': 'Country',
      'ar': '',
    },
    '3q3n9741': {
      'en': 'Coupon',
      'ar': '',
    },
    'mc9bczz1': {
      'en': 'Coures Category',
      'ar': '',
    },
    'qwp6e59w': {
      'en': 'Course',
      'ar': '',
    },
    '1iu4ajhy': {
      'en': 'Course (Image)',
      'ar': '',
    },
    'qcyynqau': {
      'en': 'Course (Video)',
      'ar': '',
    },
    '4phj007b': {
      'en': 'Instructor Request',
      'ar': '',
    },
    'z1drahq2': {
      'en': 'Lesson',
      'ar': '',
    },
    '2gferskt': {
      'en': 'Meeting',
      'ar': '',
    },
    'uijz91ns': {
      'en': 'Poll',
      'ar': '',
    },
    'wh1c8mrb': {
      'en': 'Signin',
      'ar': '',
    },
    'axq4hd2b': {
      'en': 'University',
      'ar': '',
    },
    'tqcjm4wy': {
      'en': 'University (Image)',
      'ar': '',
    },
    'bmrywexj': {
      'en': 'User',
      'ar': '',
    },
    'mskbdgg0': {
      'en': 'Users',
      'ar': '',
    },
    '8w7jp0ib': {
      'en': 'Zoom Lesson',
      'ar': '',
    },
    'mchtr6xt': {
      'en': 'Select object...',
      'ar': '',
    },
    '40ijkzhr': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'udjuk0z7': {
      'en': 'Filter',
      'ar': '',
    },
    'bnmae304': {
      'en': 'Reset',
      'ar': '',
    },
    'tqcbff6a': {
      'en': 'Severity',
      'ar': 'اسم',
    },
    'dxjmrgy2': {
      'en': 'Name',
      'ar': '',
    },
    '93adyu5y': {
      'en': 'Date & Time',
      'ar': 'دورة',
    },
    'of7ihrd2': {
      'en': 'IP Address',
      'ar': 'تاريخ',
    },
    'pwudsr5e': {
      'en': 'Object',
      'ar': 'مراجعة',
    },
    'gtuuor9k': {
      'en': 'Event Type',
      'ar': 'حالة',
    },
    'wzlxnuln': {
      'en': 'Action',
      'ar': 'حالة',
    },
    'dpf7b90c': {
      'en': 'Medium',
      'ar': '',
    },
    'oxsrd5as': {
      'en': 'High',
      'ar': '',
    },
    'hchctsk1': {
      'en': 'Low',
      'ar': '',
    },
    '44bnnvsq': {
      'en': 'View',
      'ar': 'منظر',
    },
    'r64zyi6j': {
      'en': 'Medium',
      'ar': '',
    },
    '9lww3r8o': {
      'en': 'High',
      'ar': '',
    },
    'yhaq5ucf': {
      'en': 'Low',
      'ar': '',
    },
    'iq7bfto7': {
      'en': 'View',
      'ar': 'منظر',
    },
    '09jvj8hp': {
      'en': '__',
      'ar': '__',
    },
  },
  // HalloweenUsers
  {
    '9jtrbyxt': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'l5mgjpmn': {
      'en': 'Halloween Users',
      'ar': 'مقابلة',
    },
    'qvfue8kg': {
      'en': 'Username',
      'ar': 'عنوان',
    },
    'epmkf5yq': {
      'en': 'Phone',
      'ar': 'تاريخ البدء',
    },
    '9f5v6mtb': {
      'en': 'Offer State',
      'ar': 'قائمة الأيام',
    },
    'bbqqy0p5': {
      'en': 'Created At',
      'ar': 'حد',
    },
    'z0rw90o0': {
      'en': '__',
      'ar': '__',
    },
  },
  // FORM
  {
    'lkc5c086': {
      'en': 'Form',
      'ar': '',
    },
    'gz856irj': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'czg4m2oi': {
      'en': 'Report',
      'ar': 'يحرر',
    },
    'mjjp2dfv': {
      'en': 'Question',
      'ar': 'يحرر',
    },
    'jf2vli90': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    '4koh5eiu': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // Question
  {
    'r1n7lw3h': {
      'en': 'Question',
      'ar': '',
    },
    'edbiw3bn': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'jhzv47fk': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'rr00oic9': {
      'en': 'Course',
      'ar': 'دورة',
    },
  },
  // FORMReport
  {
    '7ijvw418': {
      'en': 'Contracts',
      'ar': 'انكماش',
    },
    'x3twedqd': {
      'en': 'Report',
      'ar': 'مقابلة',
    },
    '9wi4oewb': {
      'en': 'Username',
      'ar': 'عنوان',
    },
    'bdn1dopt': {
      'en': 'Email',
      'ar': 'تاريخ البدء',
    },
    'cauuv7kx': {
      'en': 'Phone',
      'ar': 'تاريخ البدء',
    },
    'fj6l5f8b': {
      'en': 'Score',
      'ar': 'قائمة الأيام',
    },
    'tzshgv2q': {
      'en': 'Result',
      'ar': 'حد',
    },
    'unu57uzv': {
      'en': '__',
      'ar': '__',
    },
  },
  // CoursePlan
  {
    'iomn3o0d': {
      'en': 'Contracts',
      'ar': '',
    },
    'mjzbp8ne': {
      'en': 'Course',
      'ar': '',
    },
    'zm5nyiem': {
      'en': 'Course Plan',
      'ar': '',
    },
    'abffnvzt': {
      'en': 'Course',
      'ar': '',
    },
    '8xefniww': {
      'en': ' > ',
      'ar': '',
    },
    '65m2itjr': {
      'en': ' > ',
      'ar': '',
    },
    'ippum3uo': {
      'en': 'Course Plan',
      'ar': '',
    },
    'cgjnmzu3': {
      'en': 'Add',
      'ar': '',
    },
    '4nyhql6d': {
      'en': 'Edit',
      'ar': '',
    },
    '7np4nuvb': {
      'en': '__',
      'ar': '',
    },
  },
  // CoursePlanFORM
  {
    'u1cnzijy': {
      'en': 'Title',
      'ar': '',
    },
    'c65j17oe': {
      'en': '',
      'ar': '',
    },
    'p1l7xaa2': {
      'en': 'Price',
      'ar': '',
    },
    'k722tzsq': {
      'en': '',
      'ar': '',
    },
    'dfcuq98w': {
      'en': 'Number of classes',
      'ar': '',
    },
    '54ckogaa': {
      'en': '',
      'ar': '',
    },
    'lww75tg4': {
      'en': 'Number of days',
      'ar': '',
    },
    'e755lq77': {
      'en': '',
      'ar': '',
    },
    'gty66dim': {
      'en': 'Draft',
      'ar': '',
    },
    '71qpixph': {
      'en': 'Publish',
      'ar': '',
    },
    '6uo371bp': {
      'en': 'Archive',
      'ar': '',
    },
    'xb2l6na9': {
      'en': 'Please select...',
      'ar': '',
    },
    'nqnzaid6': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '364vw6g0': {
      'en': 'Field is required',
      'ar': '',
    },
    'ta3ndp93': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ngrbcpve': {
      'en': 'Field is required',
      'ar': '',
    },
    'lnmwrvcp': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ysgt6wnc': {
      'en': 'Field is required',
      'ar': '',
    },
    'p8pzk3v5': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'nui9i7sj': {
      'en': 'Update',
      'ar': '',
    },
    'ygc9f8cj': {
      'en': 'Customers',
      'ar': '',
    },
    'go9ld3n1': {
      'en': 'Course',
      'ar': '',
    },
  },
  // Classes
  {
    'zo0hw92c': {
      'en': 'Contracts',
      'ar': '',
    },
    '17bqzbn8': {
      'en': 'Course',
      'ar': '',
    },
    'i0sloti6': {
      'en': 'Class',
      'ar': '',
    },
    '2seiocoz': {
      'en': 'Course',
      'ar': '',
    },
    'cyl77csg': {
      'en': ' > ',
      'ar': '',
    },
    '9v4athrl': {
      'en': ' > ',
      'ar': '',
    },
    '3sz1h3jw': {
      'en': 'Class',
      'ar': '',
    },
    'qrp7ku8p': {
      'en': 'Add',
      'ar': '',
    },
    '2fh2rvyu': {
      'en': 'Name',
      'ar': '',
    },
    '66wxj4v9': {
      'en': 'Date',
      'ar': '',
    },
    'vp2mfb86': {
      'en': 'Time',
      'ar': '',
    },
    'z807yx76': {
      'en': 'Total Days',
      'ar': '',
    },
    'pzuzbstj': {
      'en': 'Member Limit',
      'ar': '',
    },
    'fdzxbzew': {
      'en': 'Type',
      'ar': '',
    },
    '1fpg9stf': {
      'en': 'Classes',
      'ar': '',
    },
    'ns5ya9hk': {
      'en': 'Action ',
      'ar': '',
    },
    'ey7mz2pm': {
      'en': 'Regular',
      'ar': '',
    },
    '4g58s1ca': {
      'en': 'Zoom',
      'ar': '',
    },
    '09lwg39f': {
      'en': 'Edit',
      'ar': '',
    },
    'knv0jllg': {
      'en': 'Delete',
      'ar': '',
    },
    'exbsc7i5': {
      'en': 'Zoom Class',
      'ar': '',
    },
    'jc21wviz': {
      'en': 'Live',
      'ar': '',
    },
    'm55jt7ff': {
      'en': 'Bookings (Live)',
      'ar': '',
    },
    'mg69ot6b': {
      'en': 'Regular Class',
      'ar': '',
    },
    'mheh8cb4': {
      'en': 'Zoom Class',
      'ar': '',
    },
    'lmdwo5i6': {
      'en': 'Delete',
      'ar': '',
    },
    '8gr7p16q': {
      'en': 'Name: ',
      'ar': '',
    },
    'uf8kaes6': {
      'en': 'Date: ',
      'ar': '',
    },
    '8g2bf6pw': {
      'en': 'Time: ',
      'ar': '',
    },
    '4252hmcu': {
      'en': 'Total Days: ',
      'ar': '',
    },
    'beloci3m': {
      'en': 'Member Limit: ',
      'ar': '',
    },
    'y3rivw97': {
      'en': 'Regular',
      'ar': '',
    },
    'mbev5v0n': {
      'en': 'Zoom Info',
      'ar': '',
    },
    'e9dhbcae': {
      'en': 'Edit',
      'ar': '',
    },
    '1mpu0e57': {
      'en': '__',
      'ar': '',
    },
  },
  // ClassFORM
  {
    'id8ck2id': {
      'en': 'Class Form',
      'ar': '',
    },
    '1fftd1b0': {
      'en': 'Class Name',
      'ar': '',
    },
    '46dtez89': {
      'en': '',
      'ar': '',
    },
    'g1czoz09': {
      'en': 'Member Limit',
      'ar': '',
    },
    'lzrcr0cu': {
      'en': '',
      'ar': '',
    },
    'apiyqxkd': {
      'en': 'Number of Day',
      'ar': '',
    },
    '7nq37h2o': {
      'en': '',
      'ar': '',
    },
    '4mlmea26': {
      'en': 'Start time',
      'ar': '',
    },
    'shqr87jh': {
      'en': 'Enter HH:MM  am  / pm',
      'ar': '',
    },
    'c35lrait': {
      'en': 'End time',
      'ar': '',
    },
    'u0mnafhr': {
      'en': 'Enter HH:MM  am  / pm',
      'ar': '',
    },
    'jwtfbudq': {
      'en': 'Live',
      'ar': '',
    },
    'inc5vapk': {
      'en': 'Online',
      'ar': '',
    },
    'mzo6tyiw': {
      'en': 'Select class type...',
      'ar': '',
    },
    'drfk5oog': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'n0gql4x8': {
      'en': 'Add Photo',
      'ar': '',
    },
    'akll9ka6': {
      'en': 'Remove Photo',
      'ar': '',
    },
    '82ja7hm2': {
      'en': 'Add to LIst',
      'ar': '',
    },
    '0rnjityc': {
      'en': 'Sunday',
      'ar': '',
    },
    'rl3jjvck': {
      'en': 'Monday',
      'ar': '',
    },
    '1fe6sxkk': {
      'en': 'Tuesday',
      'ar': '',
    },
    'g4ic0hff': {
      'en': 'Wednesday',
      'ar': '',
    },
    '5seawhvk': {
      'en': 'Thursday',
      'ar': '',
    },
    'srfe2vch': {
      'en': 'Friday',
      'ar': '',
    },
    'tcyokjt3': {
      'en': 'Saturday',
      'ar': '',
    },
    'gydtz3pf': {
      'en': 'Update',
      'ar': '',
    },
    'e1cxkzey': {
      'en': 'Field is required',
      'ar': '',
    },
    '6357xyx6': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '2pjaedj9': {
      'en': 'Field is required',
      'ar': '',
    },
    '3oshmo9v': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'lfkcuk0s': {
      'en': 'Field is required',
      'ar': '',
    },
    'ogmzebv2': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'hh0d1zuo': {
      'en': 'Field is required',
      'ar': '',
    },
    'v4o704k4': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'y1ewxdp8': {
      'en': 'Field is required',
      'ar': '',
    },
    '3gyouo4s': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'h4kxe171': {
      'en': 'Customers',
      'ar': '',
    },
    'islmptsn': {
      'en': 'Course',
      'ar': '',
    },
  },
  // ClassBooking
  {
    'oakzjpnx': {
      'en': 'Contracts',
      'ar': '',
    },
    'kr4pi51a': {
      'en': '> ',
      'ar': '',
    },
    'bmtgr9jd': {
      'en': ' > ',
      'ar': '',
    },
    'algfuayt': {
      'en': 'Class',
      'ar': '',
    },
    '02amojva': {
      'en': ' > ',
      'ar': '',
    },
    '62tty2gj': {
      'en': ' > ',
      'ar': '',
    },
    '5k165oi6': {
      'en': 'Booking',
      'ar': '',
    },
    'ek5i4z2v': {
      'en': 'Course',
      'ar': '',
    },
    '7cwge43f': {
      'en': ' > ',
      'ar': '',
    },
    '03m6k0qm': {
      'en': ' > ',
      'ar': '',
    },
    'lzphm1yg': {
      'en': 'Class',
      'ar': '',
    },
    'cahi0pb4': {
      'en': ' > ',
      'ar': '',
    },
    'w5l9tea3': {
      'en': ' >  ',
      'ar': '',
    },
    '92xc4dmi': {
      'en': 'Booking',
      'ar': '',
    },
    '6jcehttp': {
      'en': 'Username',
      'ar': '',
    },
    'j0eu8cvd': {
      'en': 'Email',
      'ar': '',
    },
    '4h12y0mr': {
      'en': 'Phone ',
      'ar': '',
    },
    '5vsiu2vp': {
      'en': 'Booked date',
      'ar': '',
    },
    '03ow6kwd': {
      'en': 'Attendance Status',
      'ar': '',
    },
    '8xmvmdcw': {
      'en': 'Action',
      'ar': '',
    },
    'fwmdf9nb': {
      'en': 'user@domainname.com',
      'ar': '',
    },
    'joe02fho': {
      'en': 'user@domainname.com',
      'ar': '',
    },
    '6s58wmtl': {
      'en': '__',
      'ar': '',
    },
  },
  // OnlineZoomClassList
  {
    'y7vd285q': {
      'en': 'Contracts',
      'ar': '',
    },
    'wynybh1b': {
      'en': 'Course',
      'ar': '',
    },
    'ihchepd7': {
      'en': ' > ',
      'ar': '',
    },
    'wrq0apxc': {
      'en': ' >  ',
      'ar': '',
    },
    'hipp1ne0': {
      'en': 'Class',
      'ar': '',
    },
    'mksr4gb4': {
      'en': ' > ',
      'ar': '',
    },
    'qwu6t1xv': {
      'en': ' > ',
      'ar': '',
    },
    'k74prlkf': {
      'en': 'Zoom Class',
      'ar': '',
    },
    'l1a0xs3r': {
      'en': 'Add',
      'ar': '',
    },
    '18w4if90': {
      'en': 'Copy Meeting link',
      'ar': '',
    },
    'umbcfih9': {
      'en': 'Start Meeting',
      'ar': '',
    },
    'plpwida8': {
      'en': 'Enrolled Users',
      'ar': '',
    },
    'twr8unke': {
      'en': 'Delete',
      'ar': '',
    },
    'qxe4fefo': {
      'en': 'Copy Link',
      'ar': '',
    },
    'caf0xwxg': {
      'en': 'Start Meeting',
      'ar': '',
    },
    '9mu0jwlf': {
      'en': 'Member(Online)',
      'ar': '',
    },
    'u11l3g1f': {
      'en': '__',
      'ar': '',
    },
  },
  // UpcomingClass
  {
    'g6no9ri4': {
      'en': 'Contracts',
      'ar': '',
    },
    '4a7w08zh': {
      'en': 'Upcoming Class',
      'ar': '',
    },
    'p9jcwo3f': {
      'en': 'All',
      'ar': '',
    },
    'v7rhbn3d': {
      'en': 'Upcoming In-person Class',
      'ar': '',
    },
    '4x66conq': {
      'en': 'Upcoming Zoom Class',
      'ar': '',
    },
    '2ctq5hyi': {
      'en': '__',
      'ar': '',
    },
  },
  // SessionList
  {
    'm72zzdj3': {
      'en': 'Session',
      'ar': '',
    },
    'zcn0b9on': {
      'en': 'Add',
      'ar': '',
    },
    '7yds7gsm': {
      'en': 'Published',
      'ar': '',
    },
    'jdkgqoi9': {
      'en': 'Draft',
      'ar': '',
    },
    'f6j30gzw': {
      'en': 'Edit',
      'ar': '',
    },
    'ddxy5btz': {
      'en': 'Preview',
      'ar': '',
    },
    'hcrzcmug': {
      'en': 'Class',
      'ar': '',
    },
    'dp2rwai5': {
      'en': 'Delete',
      'ar': '',
    },
    '3kqyewu1': {
      'en': 'Customers',
      'ar': '',
    },
    'q5inaqb8': {
      'en': 'Course',
      'ar': '',
    },
  },
  // UpcomingClassList
  {
    'choznjvi': {
      'en': 'Upcoming Class',
      'ar': '',
    },
    'qpod15xc': {
      'en': 'Today',
      'ar': '',
    },
    'hks7lpm0': {
      'en': 'Class name',
      'ar': '',
    },
    'p6fgcsh0': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    'vqoiikjx': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
    'nlgofgct': {
      'en': 'Class name',
      'ar': '',
    },
    '6ik3tk69': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    '3bv6obec': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
    'u0sgmfbr': {
      'en': 'Class name',
      'ar': '',
    },
    '5dyqwmad': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    'wib6wumq': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
    '2rn1wfsl': {
      'en': 'Class name',
      'ar': '',
    },
    'ejcypaym': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    'g1dcmzop': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
    '6ynt3yj6': {
      'en': 'Class name',
      'ar': '',
    },
    'b4pz4grp': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    '5ug110ly': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
    'xht5rp9w': {
      'en': 'Class name',
      'ar': '',
    },
    'dykpzp4i': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    '3f9y2ge7': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
    'uybcv1hl': {
      'en': 'Customers',
      'ar': '',
    },
    'pbhmjz5o': {
      'en': 'Course',
      'ar': '',
    },
  },
  // AddClass
  {
    '22zhrlmh': {
      'en': 'Add Class',
      'ar': '',
    },
    '75s09dk7': {
      'en': 'Step 1',
      'ar': '',
    },
    '2hdpkjwd': {
      'en': 'Choose Class Type',
      'ar': '',
    },
    '6estlx54': {
      'en': 'Online',
      'ar': '',
    },
    '61maw5eb': {
      'en': 'Offline',
      'ar': '',
    },
    'mm463cr8': {
      'en': 'Next',
      'ar': '',
    },
    'ay65ab9e': {
      'en': 'Step 2',
      'ar': '',
    },
    'ajyk6hqh': {
      'en': 'Fill the Class Details',
      'ar': '',
    },
    'w6jizuiu': {
      'en': 'Set Image',
      'ar': '',
    },
    'm99ormih': {
      'en': 'Remove',
      'ar': '',
    },
    'r9o1viq7': {
      'en': 'Name',
      'ar': '',
    },
    'pn2mawfa': {
      'en': 'Mumber limit',
      'ar': '',
    },
    '80xa3rop': {
      'en': 'Select the days',
      'ar': '',
    },
    '60eu1tw5': {
      'en': 'Sunday',
      'ar': '',
    },
    'a9x88ri4': {
      'en': 'Monday',
      'ar': '',
    },
    'muhu8zg6': {
      'en': 'Tuesday',
      'ar': '',
    },
    'wxqmrdnc': {
      'en': 'Wednesday',
      'ar': '',
    },
    '37xx4l0g': {
      'en': 'Thursday',
      'ar': '',
    },
    '9twzqm54': {
      'en': 'Friday',
      'ar': '',
    },
    '6k8zy5rk': {
      'en': 'Saturday',
      'ar': '',
    },
    'ye6vqob1': {
      'en': 'Next',
      'ar': '',
    },
    'fpukdbi2': {
      'en': 'Field is required',
      'ar': '',
    },
    'thg3xmvo': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '847chksy': {
      'en': 'Field is required',
      'ar': '',
    },
    '76md20m6': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'wsa7yb08': {
      'en': 'Step 3',
      'ar': '',
    },
    'd1afk4rw': {
      'en': 'Name ',
      'ar': '',
    },
    'rggb0nbn': {
      'en': 'Price',
      'ar': '',
    },
    '0ucybo7t': {
      'en': 'No. of Class',
      'ar': '',
    },
    'jt5bskun': {
      'en': 'Action',
      'ar': '',
    },
    'atupjz0c': {
      'en': 'Create a Plan',
      'ar': '',
    },
    'bxupq0pa': {
      'en': 'Name',
      'ar': '',
    },
    'l63m30xw': {
      'en': 'Price',
      'ar': '',
    },
    '74u00wxg': {
      'en': 'Number of class',
      'ar': '',
    },
    'glmmmsfr': {
      'en': 'Close',
      'ar': '',
    },
    '5akgi1on': {
      'en': 'Field is required',
      'ar': '',
    },
    '9i8wcw1m': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'fypergwr': {
      'en': 'Field is required',
      'ar': '',
    },
    'f99odxau': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'llfq136i': {
      'en': 'Field is required',
      'ar': '',
    },
    'ys3w8ah5': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'znruvhh3': {
      'en': 'Customers',
      'ar': '',
    },
    'jdjebq04': {
      'en': 'Course',
      'ar': '',
    },
  },
  // ClassBookingNew
  {
    '1gygjd3b': {
      'en': 'Contracts',
      'ar': '',
    },
    'exa610yx': {
      'en': '> ',
      'ar': '',
    },
    '6zejuse9': {
      'en': ' > ',
      'ar': '',
    },
    'iu69z9bu': {
      'en': 'Class',
      'ar': '',
    },
    'gpzrnub4': {
      'en': ' > ',
      'ar': '',
    },
    'q2za9faz': {
      'en': ' > ',
      'ar': '',
    },
    '0aiz6n6o': {
      'en': 'Booking',
      'ar': '',
    },
    'c3wmxni9': {
      'en': 'Bookings',
      'ar': '',
    },
    'ugd1wt61': {
      'en': 'Username',
      'ar': '',
    },
    'y2o0dah9': {
      'en': 'Email',
      'ar': '',
    },
    'n888ts6b': {
      'en': 'Phone ',
      'ar': '',
    },
    'lecr508k': {
      'en': 'Booked date',
      'ar': '',
    },
    'q6d1nlwo': {
      'en': 'Attendance Status',
      'ar': '',
    },
    'i42dxstl': {
      'en': 'Action',
      'ar': '',
    },
    '9kiv01o4': {
      'en': ' Name',
      'ar': '',
    },
    'k4g52pee': {
      'en': 'Abc@domain.com',
      'ar': '',
    },
    '7zlv6w87': {
      'en': '1234567890',
      'ar': '',
    },
    'zt1brhv1': {
      'en': '11',
      'ar': '',
    },
    'zd63f1gi': {
      'en': '',
      'ar': '',
    },
    'qjnawlbc': {
      'en': 'Absent',
      'ar': '',
    },
    '89bv32d0': {
      'en': 'Present',
      'ar': '',
    },
    '8jjqjlfy': {
      'en': 'Refund',
      'ar': '',
    },
    '1znezd7z': {
      'en': 'Select status',
      'ar': '',
    },
    'r33bj3q9': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'xh6ydwb2': {
      'en': '__',
      'ar': '',
    },
  },
  // AddSession
  {
    'zv5rk3iq': {
      'en': 'Add Session',
      'ar': '',
    },
    'hei58xfb': {
      'en': 'Title',
      'ar': '',
    },
    'p49v9plg': {
      'en': '',
      'ar': '',
    },
    'iby1k4gs': {
      'en': 'Subtitle',
      'ar': '',
    },
    '2hsj840n': {
      'en': '',
      'ar': '',
    },
    '4zxlfkkk': {
      'en': 'Description',
      'ar': '',
    },
    'w1jfl3np': {
      'en': '',
      'ar': '',
    },
    'ja1wxd6z': {
      'en': '',
      'ar': '',
    },
    'm775fmyb': {
      'en': 'None',
      'ar': '',
    },
    'sctl9wlt': {
      'en': 'Select Type',
      'ar': '',
    },
    'sl4deusu': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'k7qnnfx4': {
      'en': '',
      'ar': '',
    },
    'opiv7996': {
      'en': 'Ravi',
      'ar': '',
    },
    'vjn7pbk6': {
      'en': 'Vizsoft',
      'ar': '',
    },
    'bxbfo6mm': {
      'en': 'Select Instructor',
      'ar': '',
    },
    'pfpps3uk': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'vcmdgfdc': {
      'en': 'Regular Price',
      'ar': '',
    },
    'ip9e8n3f': {
      'en': '',
      'ar': '',
    },
    'ju1olta9': {
      'en': '0',
      'ar': '',
    },
    'jz6s8m0l': {
      'en': 'Sale Price',
      'ar': '',
    },
    '6j8tz5pr': {
      'en': '',
      'ar': '',
    },
    'b89c1om8': {
      'en': '0',
      'ar': '',
    },
    'fa1bq9id': {
      'en': 'Save',
      'ar': '',
    },
    'cg9xif86': {
      'en': 'Enable / Disable',
      'ar': '',
    },
    '2ofxchbx': {
      'en': 'Image',
      'ar': '',
    },
    '8g0r2a55': {
      'en': 'Set Image',
      'ar': '',
    },
    'x4dzi81c': {
      'en': 'Remove',
      'ar': '',
    },
    'x82gqz2l': {
      'en': 'Field is required',
      'ar': '',
    },
    '5oraxm61': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'y0jr689l': {
      'en': 'Field is required',
      'ar': '',
    },
    'q93atmn2': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'e5sph5tq': {
      'en': 'Field is required',
      'ar': '',
    },
    'r00s6nwc': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'iw4a5w41': {
      'en': 'Field is required',
      'ar': '',
    },
    '5m5o9znu': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'o70swbdv': {
      'en': 'Field is required',
      'ar': '',
    },
    '1zqeaaka': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'a7hiqrt0': {
      'en': 'Customers',
      'ar': '',
    },
    '1dvwdmb6': {
      'en': 'Course',
      'ar': '',
    },
  },
  // ClassList
  {
    'ltg0o37o': {
      'en': 'Class',
      'ar': '',
    },
    'pp1gyfry': {
      'en': 'Add',
      'ar': '',
    },
    'f0xubt64': {
      'en': 'Published',
      'ar': '',
    },
    '9s0pkbk6': {
      'en': 'Draft',
      'ar': '',
    },
    'pafumcrj': {
      'en': 'Archived',
      'ar': '',
    },
    'eydyvks1': {
      'en': 'Edit',
      'ar': '',
    },
    'xtmavcpg': {
      'en': 'Delete',
      'ar': '',
    },
    'kts3v8om': {
      'en': 'Customers',
      'ar': '',
    },
    'rqnckm4g': {
      'en': 'Course',
      'ar': '',
    },
  },
  // ClassInfo
  {
    '4il33a2p': {
      'en': 'Class Name',
      'ar': '',
    },
    'dwebzfg5': {
      'en': 'Edit',
      'ar': '',
    },
    '4m45xbzl': {
      'en': 'Class Info',
      'ar': '',
    },
    'az6om3pa': {
      'en': 'Member Limit',
      'ar': '',
    },
    'd28yline': {
      'en': '1',
      'ar': '',
    },
    'rr4oofmi': {
      'en': 'Start Date',
      'ar': '',
    },
    'ecr4hnoy': {
      'en': '1',
      'ar': '',
    },
    '6j4wqwm0': {
      'en': 'End Date',
      'ar': '',
    },
    'v49cn3ec': {
      'en': '1',
      'ar': '',
    },
    'ah14qdmp': {
      'en': 'Days',
      'ar': '',
    },
    '50pw1gvw': {
      'en': 'Monday, Tuesday, ..',
      'ar': '',
    },
    '6e9hziy5': {
      'en': 'Associated Plan',
      'ar': '',
    },
    'r9wij24j': {
      'en': 'Plan name1, Plan name2, ...',
      'ar': '',
    },
    'kp0dhix1': {
      'en': 'Zoom Info',
      'ar': '',
    },
    'gotf9o2h': {
      'en': 'Date',
      'ar': '',
    },
    'j2j49xls': {
      'en': 'January 29',
      'ar': '',
    },
    '68i8fu83': {
      'en': 'Time',
      'ar': '',
    },
    'udpi85l8': {
      'en': '10 am',
      'ar': '',
    },
    'pg623ppw': {
      'en': 'Meeting ID',
      'ar': '',
    },
    '2h2olhi1': {
      'en': '12345',
      'ar': '',
    },
    '9d1o5xls': {
      'en': 'Password',
      'ar': '',
    },
    'z03l4psj': {
      'en': '123456',
      'ar': '',
    },
    'smocv7fq': {
      'en': 'Start Meeting',
      'ar': '',
    },
    'ctokcm0e': {
      'en': 'Start Zoom Meeting',
      'ar': '',
    },
    'ehdm56tg': {
      'en': 'Share',
      'ar': '',
    },
    '4snxcwjv': {
      'en': 'Bookings',
      'ar': '',
    },
    '6u532tg5': {
      'en': 'Auto Attend All',
      'ar': '',
    },
    'txo93ymr': {
      'en': 'Username',
      'ar': '',
    },
    '833bmjzy': {
      'en': 'Email',
      'ar': '',
    },
    'sizk1f0o': {
      'en': 'Phone ',
      'ar': '',
    },
    '4rk0tmc3': {
      'en': 'Booked date',
      'ar': '',
    },
    '37brcy58': {
      'en': 'Attendance Status',
      'ar': '',
    },
    'gxfby0g6': {
      'en': 'Action',
      'ar': '',
    },
    'eqpcz1hz': {
      'en': ' Name',
      'ar': '',
    },
    'y912ayte': {
      'en': 'Abc@domain.com',
      'ar': '',
    },
    'aticgyzl': {
      'en': '1234567890',
      'ar': '',
    },
    'vvv12qn1': {
      'en': '11',
      'ar': '',
    },
    'jzq54diz': {
      'en': '',
      'ar': '',
    },
    'wpn04dwz': {
      'en': 'Absent',
      'ar': '',
    },
    '3np5pyuc': {
      'en': 'Present',
      'ar': '',
    },
    'a4poprui': {
      'en': 'Refund',
      'ar': '',
    },
    'au3q3kfz': {
      'en': 'Select Type',
      'ar': '',
    },
    'xk8f5la5': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '53el0sq8': {
      'en': 'Customers',
      'ar': '',
    },
    '3fna3daj': {
      'en': 'Course',
      'ar': '',
    },
  },
  // EditSession
  {
    '8gnp3jkp': {
      'en': 'Title',
      'ar': '',
    },
    'nu2s52no': {
      'en': '',
      'ar': '',
    },
    '4fi0pdyi': {
      'en': 'Subtitle',
      'ar': '',
    },
    'msw8vyqi': {
      'en': '',
      'ar': '',
    },
    'd5pfeti5': {
      'en': 'Description',
      'ar': '',
    },
    '1rzwdf3c': {
      'en': '',
      'ar': '',
    },
    'yzaibld2': {
      'en': '',
      'ar': '',
    },
    '3n9opzsu': {
      'en': 'None',
      'ar': '',
    },
    'pim95207': {
      'en': 'Select Type',
      'ar': '',
    },
    '7vu3isnz': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'tdrqjklf': {
      'en': '',
      'ar': '',
    },
    '8ey9h1mj': {
      'en': 'Ravi',
      'ar': '',
    },
    'ixtpw5ni': {
      'en': 'Vizsoft',
      'ar': '',
    },
    '54vomshb': {
      'en': 'Select Instructor',
      'ar': '',
    },
    'gkhw057m': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'fu6pw7au': {
      'en': 'Regular Price',
      'ar': '',
    },
    '5u0no6zm': {
      'en': '',
      'ar': '',
    },
    'v5tqsrls': {
      'en': 'Sale Price',
      'ar': '',
    },
    'd5d2bk8o': {
      'en': '',
      'ar': '',
    },
    'mxf9z9ac': {
      'en': 'Update',
      'ar': '',
    },
    'jp5rhhav': {
      'en': 'Enable / Disable',
      'ar': '',
    },
    'e1ngtdv3': {
      'en': 'Image',
      'ar': '',
    },
    'rw5lbx1e': {
      'en': 'Set Image',
      'ar': '',
    },
    'mfh3yr3b': {
      'en': 'Remove',
      'ar': '',
    },
    '0p926oz8': {
      'en': 'Field is required',
      'ar': '',
    },
    'fg5w2co6': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'siecdm8n': {
      'en': 'Field is required',
      'ar': '',
    },
    'oan9geim': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '2br9j3m1': {
      'en': 'Field is required',
      'ar': '',
    },
    'e0smd5gj': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '8tfz21l0': {
      'en': 'Field is required',
      'ar': '',
    },
    'lkjta8wq': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ipdbxh4r': {
      'en': 'Field is required',
      'ar': '',
    },
    'g3gu6ot2': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'mp5b8gvr': {
      'en': 'Customers',
      'ar': '',
    },
    'm769gqvq': {
      'en': 'Course',
      'ar': '',
    },
  },
  // EditClass
  {
    'wynchlmi': {
      'en': 'Edit Class',
      'ar': '',
    },
    '70ly1x2x': {
      'en': '',
      'ar': '',
    },
    'kdcjnjhg': {
      'en': '',
      'ar': '',
    },
    '6b399l2k': {
      'en': 'Name ',
      'ar': '',
    },
    'heb98u4v': {
      'en': 'Price',
      'ar': '',
    },
    'f48zyvox': {
      'en': 'No. of Class',
      'ar': '',
    },
    'pzu5xafd': {
      'en': 'Action',
      'ar': '',
    },
    'x7gzoezj': {
      'en': 'Create a Plan',
      'ar': '',
    },
    'n1qcy4o8': {
      'en': 'Name',
      'ar': '',
    },
    's8wwme9r': {
      'en': 'Price',
      'ar': '',
    },
    'zlwrgjqb': {
      'en': 'Number of class',
      'ar': '',
    },
    'v4nzex3f': {
      'en': 'Update',
      'ar': '',
    },
    '0vkqzqrx': {
      'en': 'Choose Class Type',
      'ar': '',
    },
    'jfmp9pou': {
      'en': 'Online',
      'ar': '',
    },
    'k5a579l4': {
      'en': 'Offline',
      'ar': '',
    },
    'hbon24vk': {
      'en': 'Select Days',
      'ar': '',
    },
    '1n1p712f': {
      'en': 'Sunday',
      'ar': '',
    },
    'wydxoefd': {
      'en': 'Monday',
      'ar': '',
    },
    'riep9xm8': {
      'en': 'Tuesday',
      'ar': '',
    },
    'agqbf53h': {
      'en': 'Wednesday',
      'ar': '',
    },
    'hkkpyznl': {
      'en': 'Thursday',
      'ar': '',
    },
    'rvkn7jj4': {
      'en': 'Friday',
      'ar': '',
    },
    '1ocmwjql': {
      'en': 'Saturday',
      'ar': '',
    },
    '0bujrqba': {
      'en': 'Image',
      'ar': '',
    },
    's8scr3fu': {
      'en': 'Set Image',
      'ar': '',
    },
    'ntkarats': {
      'en': 'Remove',
      'ar': '',
    },
    'iaeynw69': {
      'en': 'Field is required',
      'ar': '',
    },
    '8dn94i6f': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'bnovrwhx': {
      'en': 'Field is required',
      'ar': '',
    },
    'q920eo18': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'fq1yrelu': {
      'en': 'Field is required',
      'ar': '',
    },
    'qvxcgjed': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'euy6wdhb': {
      'en': 'Field is required',
      'ar': '',
    },
    '4roreffl': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'hy6fmgh8': {
      'en': 'Field is required',
      'ar': '',
    },
    '4kfoswqj': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'cui2t5ni': {
      'en': 'Customers',
      'ar': '',
    },
    'mrfmjywq': {
      'en': 'Course',
      'ar': '',
    },
  },
  // SalesReport
  {
    '3xw0cxhp': {
      'en': 'Contracts',
      'ar': '',
    },
    '8d8botwt': {
      'en': 'Report',
      'ar': '',
    },
    '3vpxd2lc': {
      'en': 'Reset',
      'ar': '',
    },
    '2yxtocc6': {
      'en': 'Filter',
      'ar': '',
    },
    '588yiblv': {
      'en': 'Gross Sales',
      'ar': '',
    },
    'jvpctcag': {
      'en': '100 KWD',
      'ar': '',
    },
    'zzckdsgz': {
      'en': 'Net Sales',
      'ar': '',
    },
    'ooaqews9': {
      'en': '100 KWD',
      'ar': '',
    },
    'bl8h8z29': {
      'en': 'Total Sales',
      'ar': '',
    },
    'acgiz6s3': {
      'en': '100 KWD',
      'ar': '',
    },
    'hvsbeagz': {
      'en': 'Sales Report',
      'ar': '',
    },
    'h46t9b0o': {
      'en': 'Date',
      'ar': '',
    },
    'hjq9p1ld': {
      'en': 'Order ID',
      'ar': '',
    },
    'h7l7996k': {
      'en': 'Status',
      'ar': '',
    },
    'anklomdh': {
      'en': 'Customer',
      'ar': '',
    },
    'dhknd9td': {
      'en': 'Session(s)',
      'ar': '',
    },
    'm28t83f7': {
      'en': 'Item Sold',
      'ar': '',
    },
    'd8387wsv': {
      'en': 'Net Sales',
      'ar': '',
    },
    '0yukculb': {
      'en': '12-07-2024',
      'ar': '',
    },
    '7g1dpxz0': {
      'en': '123',
      'ar': '',
    },
    '693sls4z': {
      'en': '0 KWD',
      'ar': '',
    },
    'iwswdhnp': {
      'en': 'Item1',
      'ar': '',
    },
    'hvfyy2cu': {
      'en': '5 ',
      'ar': '',
    },
    '8uxoktn9': {
      'en': 'Days',
      'ar': '',
    },
    'rq6esbsz': {
      'en': '5 ',
      'ar': '',
    },
    'vwfo4fus': {
      'en': 'Orders',
      'ar': '',
    },
    'aqy13zxn': {
      'en': '800 ',
      'ar': '',
    },
    'mp6fzbn8': {
      'en': 'Item Sold',
      'ar': '',
    },
    'bes96iyp': {
      'en': '800 KWD ',
      'ar': '',
    },
    'jzc1i87h': {
      'en': 'Net Sales',
      'ar': '',
    },
    'un7jnlhg': {
      'en': '__',
      'ar': '',
    },
  },
  // RevenueReport
  {
    'a1k24hxz': {
      'en': 'Contracts',
      'ar': '',
    },
    'yefwtzyt': {
      'en': 'Report',
      'ar': '',
    },
    'ujp76ot0': {
      'en': 'Reset',
      'ar': '',
    },
    '81ix0yil': {
      'en': 'Filter',
      'ar': '',
    },
    'ctrf6b85': {
      'en': 'Orders',
      'ar': '',
    },
    '2irqb0eh': {
      'en': '100',
      'ar': '',
    },
    'esy4ljht': {
      'en': 'Net Sales',
      'ar': '',
    },
    '9s28u310': {
      'en': '100 KWD',
      'ar': '',
    },
    'dsdlwkve': {
      'en': 'Total Sales',
      'ar': '',
    },
    '2ogflk9q': {
      'en': '100 KWD',
      'ar': '',
    },
    '71txql5f': {
      'en': 'Revenue Report',
      'ar': '',
    },
    'aqjfju02': {
      'en': 'Date',
      'ar': '',
    },
    'uj4nm58v': {
      'en': 'Orders',
      'ar': '',
    },
    'ee5hrr0u': {
      'en': 'Gross Sales',
      'ar': '',
    },
    'gej7za9t': {
      'en': 'Returns',
      'ar': '',
    },
    'sc9p3e0f': {
      'en': 'Coupons',
      'ar': '',
    },
    '4aw2pvnh': {
      'en': 'Net Sales',
      'ar': '',
    },
    'quw5glka': {
      'en': 'Total Sales',
      'ar': '',
    },
    'eluwnsef': {
      'en': '12-07-2024',
      'ar': '',
    },
    'k4n605f0': {
      'en': '123',
      'ar': '',
    },
    'ahg4ampn': {
      'en': '0 KWD',
      'ar': '',
    },
    'nlnci2ef': {
      'en': 'Item1',
      'ar': '',
    },
    'j04a3bnv': {
      'en': '5 ',
      'ar': '',
    },
    'a2v8pqk8': {
      'en': 'Days',
      'ar': '',
    },
    'ffg5abos': {
      'en': '5 ',
      'ar': '',
    },
    '4c8yfbeg': {
      'en': 'Orders',
      'ar': '',
    },
    '6kglvb7j': {
      'en': '800 KWD ',
      'ar': '',
    },
    'zfb21woq': {
      'en': 'Gross Sales',
      'ar': '',
    },
    'floa1n2y': {
      'en': '800 KWD ',
      'ar': '',
    },
    'u54v2dv2': {
      'en': 'Net Sales',
      'ar': '',
    },
    '6krk9qbv': {
      'en': '800 KWD ',
      'ar': '',
    },
    '0qldkqc4': {
      'en': 'Total Sales',
      'ar': '',
    },
    'tu20lsq4': {
      'en': '__',
      'ar': '',
    },
  },
  // createCourse
  {
    'iiwwk7k8': {
      'en': 'Create Course',
      'ar': 'إنشاء دورة',
    },
    '0j05zjup': {
      'en': 'Enable / Disable',
      'ar': '',
    },
    'vsxorv9o': {
      'en': 'Enable Offline course',
      'ar': '',
    },
    'u44w60my': {
      'en': 'Enable Online course',
      'ar': '',
    },
    'mmhveadj': {
      'en': 'Add Image',
      'ar': 'أضف فيديو',
    },
    '6kxwi017': {
      'en': 'Remove',
      'ar': 'أضف فيديو',
    },
    'oft2bmz5': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    'zlkj5s8w': {
      'en': 'Add Video',
      'ar': 'أضف فيديو',
    },
    '0r0senyp': {
      'en': 'Remove Video',
      'ar': 'أضف فيديو',
    },
    'alnhfigo': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '4idywxfb': {
      'en': '',
      'ar': 'أدخل اسمك هنا...',
    },
    '31vm9a3b': {
      'en': 'Subtitle',
      'ar': 'العنوان الفرعي',
    },
    'wozbwedu': {
      'en': '',
      'ar': 'أدخل العنوان الفرعي الخاص بك هنا ...',
    },
    '34683m5j': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '1wzu8zno': {
      'en': 'Select instructor',
      'ar': 'مؤلف',
    },
    'qf1y0b5h': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    '56mrxhry': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '1gbmof6u': {
      'en': 'Select country...',
      'ar': 'حدد الدولة...',
    },
    'uldep11g': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    'ev2gv7dw': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '05iscnbt': {
      'en': 'Select university...',
      'ar': 'اختر جامعة ...',
    },
    'ev6tehhf': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    'trunhy3v': {
      'en': 'Option 1',
      'ar': '',
    },
    'xwp6lkpm': {
      'en': 'Select category...',
      'ar': '',
    },
    'a8tt7ien': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'z9fomzah': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'z8bywezt': {
      'en': 'Select branch...',
      'ar': 'حدد الفرع ...',
    },
    'qbsj9p4r': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    '6d24gmiu': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '1w1hlvu5': {
      'en': '',
      'ar': 'أدخل وصفك هنا ...',
    },
    'r2lpa6ea': {
      'en': 'What you will learn',
      'ar': 'وصف',
    },
    'lr9dd31n': {
      'en': '',
      'ar': 'أدخل وصفك هنا ...',
    },
    'unk4upiq': {
      'en': 'Course Requirement',
      'ar': 'وصف',
    },
    '6bwmbx3o': {
      'en': '',
      'ar': 'أدخل وصفك هنا ...',
    },
    'z0see5ry': {
      'en': 'Total Course Duration(hours)',
      'ar': 'عنوان',
    },
    '11ri8zo4': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'pxsqq7zh': {
      'en': '0',
      'ar': '',
    },
    'jqvynksp': {
      'en': 'Total Number of Lessons',
      'ar': 'سعر الدفع الكامل',
    },
    '4v69u4vi': {
      'en': '',
      'ar': 'أدخل سعر الدفع الكامل هنا ...',
    },
    'nnexapoz': {
      'en': '0',
      'ar': '',
    },
    'k27caqng': {
      'en': 'Student Limit',
      'ar': '',
    },
    'z7x886bq': {
      'en': '',
      'ar': '',
    },
    'ksazhc27': {
      'en': '10000',
      'ar': '',
    },
    '0r6i1vbc': {
      'en': 'Course Type',
      'ar': '',
    },
    'l9c92vx1': {
      'en': 'Free',
      'ar': '',
    },
    'oeg25xe4': {
      'en': 'Paid',
      'ar': '',
    },
    'bak3cg7z': {
      'en': 'Full Payment',
      'ar': '',
    },
    'm2srxq62': {
      'en': 'Full Payment',
      'ar': '',
    },
    '78f2en11': {
      'en': 'Full Price',
      'ar': 'سعر الدفع الكامل',
    },
    '1budbs4t': {
      'en': '',
      'ar': 'أدخل سعر الدفع الكامل هنا ...',
    },
    'w0sx6mmm': {
      'en': '0',
      'ar': '',
    },
    'gyq74wti': {
      'en': 'Number of Days(for subscription validity)',
      'ar': '',
    },
    '5vee8hcv': {
      'en': '',
      'ar': '',
    },
    'l17zrsyp': {
      'en': '90',
      'ar': '',
    },
    'hbzpj3kv': {
      'en': 'Whatsapp Group Link',
      'ar': 'رسوم بطاقة الائتمان',
    },
    'w9kgsl0z': {
      'en': '',
      'ar': 'أدخل رسوم CreditCard٪ الخاصة بك هنا ...',
    },
    'rjgyitnf': {
      'en': 'Recommended',
      'ar': '',
    },
    'yqiqvubk': {
      'en': 'None',
      'ar': '',
    },
    'k8j6a5s4': {
      'en': 'Recommended',
      'ar': '',
    },
    'n32hh7kf': {
      'en': 'Featured',
      'ar': '',
    },
    'rjc6x6eh': {
      'en': 'Add to list',
      'ar': '',
    },
    'kyermjq4': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'aoymta4u': {
      'en': 'Draft',
      'ar': '',
    },
    '7g0y99n1': {
      'en': 'Draft',
      'ar': 'الخيار 1',
    },
    't0hfhh8d': {
      'en': 'Select status',
      'ar': 'حدد الفرع ...',
    },
    'mfxsc67h': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    'mhi3i8lu': {
      'en': 'Product Gallery',
      'ar': '',
    },
    'efhnqkkh': {
      'en': 'Select',
      'ar': '',
    },
    'ccwe2ztu': {
      'en': 'View File',
      'ar': '',
    },
    'eb7po359': {
      'en': 'Add File',
      'ar': '',
    },
    'dtqrwj4d': {
      'en': 'Remove',
      'ar': '',
    },
    'wqjxvkap': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '7if3i9k3': {
      'en': 'Field is required',
      'ar': '',
    },
    'wkkf9xoj': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'inswqxki': {
      'en': 'Field is required',
      'ar': '',
    },
    '4nlwnc4c': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '0rvz4tcv': {
      'en': 'Field is required',
      'ar': '',
    },
    '5w47wlyf': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'c9j8oszv': {
      'en': 'Field is required',
      'ar': '',
    },
    'zxrm2wgo': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'maxzohov': {
      'en': 'Field is required',
      'ar': '',
    },
    '4877kk08': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'cgwl01b5': {
      'en': 'Field is required',
      'ar': '',
    },
    'g4zhd86d': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'xlqqckq7': {
      'en': 'Field is required',
      'ar': '',
    },
    '3hoieghf': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'xku6z6o0': {
      'en': 'Field is required',
      'ar': '',
    },
    'oejbummt': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'wx34jl0b': {
      'en': 'Field is required',
      'ar': '',
    },
    'q5kc5qjx': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ymw1dws8': {
      'en': 'Field is required',
      'ar': '',
    },
    'kfpkupay': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    't3flkv7r': {
      'en': 'Field is required',
      'ar': '',
    },
    '5w695fek': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'quk4l8zz': {
      'en': 'Field is required',
      'ar': '',
    },
    '3qfgfrrt': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ljt4bce7': {
      'en': 'Field is required',
      'ar': '',
    },
    '6s6y0f7o': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // mobileNav
  {
    'myiii5yc': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    '4cjtib1z': {
      'en': 'Courses',
      'ar': 'الدورات',
    },
    '4oo1umo1': {
      'en': 'List',
      'ar': 'قائمة',
    },
    'pt9drtfg': {
      'en': 'Orders',
      'ar': 'طلبات',
    },
    'r7oojr87': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'lysmja0b': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // webNav
  {
    '68h0mbgw': {
      'en': 'D\'rip',
      'ar': 'علاوة',
    },
    '93o11he5': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    'g8emil3n': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    '8zhgarek': {
      'en': 'Course',
      'ar': 'دورة',
    },
    't9vxqsms': {
      'en': 'Course',
      'ar': 'دورة',
    },
    '01llth37': {
      'en': 'Upcoming Class',
      'ar': '',
    },
    'lffid44a': {
      'en': 'Upcoming Class',
      'ar': '',
    },
    'xot0weo7': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'avmk4h88': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'ervdnn04': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'ztfxxti7': {
      'en': 'Instructor',
      'ar': 'مدرب',
    },
    'grkyezui': {
      'en': 'Orders',
      'ar': 'طلبات',
    },
    'n8m67l6l': {
      'en': 'Orders',
      'ar': 'طلبات',
    },
    'qvr3c05j': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'aj8xilqc': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'vhw9t3pr': {
      'en': 'Video Management',
      'ar': 'إدارة الفيديو',
    },
    'wfzq508f': {
      'en': 'Media',
      'ar': 'وسائط',
    },
    '00btf8sw': {
      'en': 'Coupon',
      'ar': 'قسيمة',
    },
    'tziwkg0a': {
      'en': 'Coupon',
      'ar': 'قسيمة',
    },
    '3irx8rvn': {
      'en': 'User',
      'ar': 'مستخدم',
    },
    'ssqcu6m5': {
      'en': 'Users',
      'ar': 'المستخدمين',
    },
    'i6y7muzc': {
      'en': 'SMS Marketing',
      'ar': 'تسويق الرسائل القصيرة',
    },
    'b7jowee5': {
      'en': 'Marketing',
      'ar': 'تسويق',
    },
    '3oe4p3xg': {
      'en': 'Translation',
      'ar': 'ترجمة',
    },
    'leeb0i37': {
      'en': 'Translation',
      'ar': 'ترجمة',
    },
    'e8461y9e': {
      'en': 'Log',
      'ar': 'ترجمة',
    },
    '2efsg36a': {
      'en': 'Log',
      'ar': 'ترجمة',
    },
    't2xu6dc8': {
      'en': 'Form',
      'ar': '',
    },
    'ywi28paf': {
      'en': 'Form',
      'ar': '',
    },
    '13jfvxnr': {
      'en': 'Halloween Users',
      'ar': '',
    },
    '7kyqk2fz': {
      'en': 'Halloween Users',
      'ar': '',
    },
    '6ei29o0i': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
    'igwwv248': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
    'jc50810l': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
    '7tsnggui': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
    'xzc6uv55': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '0oltw03q': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    'x7nb773v': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // editProfilePhoto
  {
    'g9f2zkcd': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
    },
    'lu4rqoz0': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'ar':
          'قم بتحميل صورة جديدة أدناه لتغيير الصورة الرمزية التي يراها الآخرون.',
    },
    'wqojvflm': {
      'en': 'Upload Image',
      'ar': 'تحميل الصور',
    },
    'qh1dpu6d': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
  },
  // createList
  {
    '7avntsae': {
      'en': 'Add Image',
      'ar': 'أضف فيديو',
    },
    'n3bi5y7d': {
      'en': 'Remove',
      'ar': 'أضف فيديو',
    },
    'gb3qefds': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'oev6qz0i': {
      'en': '',
      'ar': 'أدخل اسمك هنا...',
    },
    'xqtu2cer': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // DeleteMessage
  {
    '5sateaw4': {
      'en': 'Delete!',
      'ar': 'يمسح!',
    },
    'z3gsl6yu': {
      'en': 'Do you want delete this..',
      'ar': 'هل تريد حذف هذا ..',
    },
    '8ntnf1av': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    's22gvnp1': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
  },
  // createLesson
  {
    '6f98pojn': {
      'en': 'Create Lesson',
      'ar': 'إنشاء الدرس',
    },
    '18riir9a': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    'ah5dm01e': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'v7luxrif': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'cpacyvr1': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '2wfh56c7': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'z1hqz825': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'aailewji': {
      'en': 'Free Preview',
      'ar': 'معاينة مجانية',
    },
    'owaz4z2p': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'mcs69os1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '0qm3buwt': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'apnaa4pq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ghyx27g3': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ueer3x5p': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '3yw4alzv': {
      'en': 'Preview',
      'ar': '',
    },
    'vqpzzblx': {
      'en': 'Add Video',
      'ar': 'يضيف',
    },
    't42ninog': {
      'en': 'Remove ',
      'ar': 'يزيل',
    },
    '48zf4ljd': {
      'en': 'View File',
      'ar': 'استعراض الملف',
    },
    'w1i52rcr': {
      'en': 'Add File',
      'ar': 'اضف ملف',
    },
    'zaa0gw5f': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    '3dk13ifa': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // createChapter
  {
    'i43xhymg': {
      'en': 'Serial No.',
      'ar': 'الرقم التسلسلي.',
    },
    'ere0hrpc': {
      'en': '',
      'ar': 'أدخل الرقم التسلسلي الخاص بك هنا ...',
    },
    'c1gyzdhi': {
      'en': 'First',
      'ar': 'أولاً',
    },
    'bo59arec': {
      'en': 'First',
      'ar': 'أولاً',
    },
    '8fz5l8nl': {
      'en': 'Second',
      'ar': 'ثانية',
    },
    'e47m7ejs': {
      'en': 'Third',
      'ar': 'ثالث',
    },
    'cbyjm5rn': {
      'en': 'Please select...',
      'ar': 'الرجاء التحديد...',
    },
    'sr770bt2': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'tsac9qkp': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '2tv7dva6': {
      'en': '',
      'ar': '',
    },
    'm9monts3': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'dquftewb': {
      'en': '',
      'ar': 'أدخل وصفك هنا ...',
    },
    'nkyea1uz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'rmhz0nyj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '9gxe71ib': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'gr6xz1xb': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    's2yeeiwy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'me2hb3x8': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bjywrzmv': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // createMeeting
  {
    '8xw1vsfj': {
      'en': 'Create Meeting',
      'ar': 'إنشاء اجتماع',
    },
    'y28dnp47': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'mw9e8hwn': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'ja2ztm68': {
      'en': 'Limit',
      'ar': 'حد',
    },
    '4essz2h7': {
      'en': '',
      'ar': 'أدخل الحد هنا ...',
    },
    'n1mw3tvr': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    '6aszpg3n': {
      'en': 'Day List',
      'ar': 'قائمة اليوم',
    },
    'speldh03': {
      'en': 'Sunday',
      'ar': 'الأحد',
    },
    'nczm5ieu': {
      'en': 'Monday',
      'ar': 'الاثنين',
    },
    'pyefxnpv': {
      'en': 'Tuesday',
      'ar': 'يوم الثلاثاء',
    },
    'n810h1es': {
      'en': 'Wednesday',
      'ar': 'الأربعاء',
    },
    'lo6pvc3q': {
      'en': 'Thursday',
      'ar': 'يوم الخميس',
    },
    'r94ussqr': {
      'en': 'Friday',
      'ar': 'جمعة',
    },
    'r5nt6j8s': {
      'en': 'Saturday',
      'ar': 'السبت',
    },
    '852qdkh5': {
      'en': 'Session List',
      'ar': 'قائمة الجلسة',
    },
    'tkeutbcw': {
      'en': 'Morning',
      'ar': 'صباح',
    },
    'q6cm4lhv': {
      'en': 'Afternoon',
      'ar': 'بعد الظهر',
    },
    'mk6igdto': {
      'en': 'Evening',
      'ar': 'مساء',
    },
    'gnof8wuk': {
      'en': 'Add Meeting Featured Image',
      'ar': 'إضافة صورة مميزة للاجتماع',
    },
    'fsdg5sh2': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'xkl00pfd': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'xa6l5kmu': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // AddUser
  {
    'lb8bmy07': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
    },
    'n8ht03hl': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'o1zbamo8': {
      'en': 'Your Email',
      'ar': 'بريدك الالكتروني',
    },
    '8yzljehi': {
      'en': '',
      'ar': 'عنوان الايميل',
    },
    'tk7nzc64': {
      'en': 'Admin',
      'ar': 'مسؤل',
    },
    'i71rctv6': {
      'en': 'Instructor',
      'ar': 'مدرب',
    },
    'to8nopd3': {
      'en': 'Student',
      'ar': 'طالب',
    },
    'qhedlaxg': {
      'en': 'Role...',
      'ar': 'دور...',
    },
    '4960mf66': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    'zzsmfqnu': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'ao4c3qbi': {
      'en': '',
      'ar': 'أدخل رقم الهاتف',
    },
    'n29i0lh7': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'p0gy62jc': {
      'en': 'Approve',
      'ar': 'يعتمد',
    },
    'lcw65vjh': {
      'en': 'Reject',
      'ar': 'يرفض',
    },
    'h5nppc7j': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
  },
  // AddAnnouncement
  {
    'anj2y814': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    '377w7ao9': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    '0cshrakw': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    'n6lqtkmo': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'i2e39zq1': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '64nfkckk': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    'hc6vxjum': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    '705nli6v': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    'ueokb7i5': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'gesygtq9': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'w5wx5mik': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'rbx9n54k': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    'q4nbxjsd': {
      'en': 'Summary',
      'ar': 'ملخص',
    },
    '62ra0faq': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    's9i1vo66': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'fnnua9ys': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '2xtymahj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '70ka56g0': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // EditReview
  {
    'e3cxkyx1': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'voeo4359': {
      'en': 'Approved',
      'ar': 'موافقة',
    },
    '404bmukx': {
      'en': 'Rejected',
      'ar': 'مرفوض',
    },
    'lkfl2wce': {
      'en': 'Pending',
      'ar': 'قيد الانتظار',
    },
    '4ys8dpik': {
      'en': 'Select Status...',
      'ar': 'حدد الحالة...',
    },
    'gj8g9wr9': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'yuvx91ud': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    '6y76gzgs': {
      'en': 'Course:',
      'ar': 'دورة:',
    },
    'm38twk54': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    'bi4eho20': {
      'en': 'Admin Reply',
      'ar': 'رد المشرف',
    },
    'sadkarqe': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
    'jti0ul37': {
      'en': 'Reply',
      'ar': 'رد',
    },
    '5gm3mkmh': {
      'en': 'Enter your response',
      'ar': 'أدخل ردك',
    },
    'l2152nlw': {
      'en': '',
      'ar': '',
    },
    'bp8xcqts': {
      'en': 'Reply',
      'ar': 'رد',
    },
  },
  // DeleteMessage_1
  {
    'hujiy9x9': {
      'en': 'Delete!',
      'ar': 'يمسح!',
    },
    '37xnadqz': {
      'en': 'Do you want delete this..',
      'ar': 'هل تريد حذف هذا ..',
    },
    'y7qhe7gp': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    '6g0o86j6': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
  },
  // AddZoomclasses
  {
    'k6lv4yo5': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '2fb3a5mg': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '7bw77sha': {
      'en': 'Summary',
      'ar': 'ملخص',
    },
    '8i47h0h3': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'bu1g80cy': {
      'en': 'Duration(mins)',
      'ar': 'المدة (دقيقة)',
    },
    's1mbjr9p': {
      'en': '',
      'ar': '',
    },
    '673ok57b': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '6xoxemhd': {
      'en': 'Field is required',
      'ar': '',
    },
    'eewh7uiw': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '2jyqnfv9': {
      'en': 'Field is required',
      'ar': '',
    },
    't3z2jj5w': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'vck98dym': {
      'en': 'Field is required',
      'ar': '',
    },
    'dginyijv': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // student_userRoleAprrovedRejectDropDown
  {
    '0b70qcn5': {
      'en': 'Unblock',
      'ar': 'موافقة',
    },
    'mg7yayuc': {
      'en': 'Block',
      'ar': 'يرفض',
    },
    '7hx2tnaw': {
      'en': 'Please select...',
      'ar': 'الرجاء تحديد ...',
    },
    'rihjz8y0': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
  },
  // createPoll
  {
    'z9jnq589': {
      'en': 'Create Poll',
      'ar': 'إنشاء دورة',
    },
    'ay5k0k6r': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    '5j8uthfe': {
      'en': 'Remove',
      'ar': 'إضافة صورة',
    },
    'rdf6vp1g': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    '653li0mx': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    'ny94z7a8': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    'puilzsnx': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'cy0f0sr3': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'v4279lq7': {
      'en': 'CSS',
      'ar': 'CSS',
    },
    '8usn6fj2': {
      'en': 'JS',
      'ar': 'شبيبة',
    },
    'dtsb24yo': {
      'en': 'ReactJs',
      'ar': 'ReactJs',
    },
    '5n3crh7a': {
      'en': 'Select Course...',
      'ar': 'اختر الدورة...',
    },
    'megeh6ke': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'q5p9kluf': {
      'en': 'Title',
      'ar': 'اسم',
    },
    'fo59w858': {
      'en': '',
      'ar': 'أدخل اسمك هنا...',
    },
    'xj9v75uq': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '5thp2qxu': {
      'en': '',
      'ar': 'أدخل وصفك هنا ...',
    },
    '5y4khrfw': {
      'en': 'Question',
      'ar': 'سعر الدفع الكامل',
    },
    'jp6b1lyh': {
      'en': '',
      'ar': 'أدخل سعر الدفع الكامل هنا ...',
    },
    'ik56funp': {
      'en': 'End Date',
      'ar': 'تاريخ البدء',
    },
    '3cqi7039': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // createPollAnswer
  {
    '30lfuqes': {
      'en': 'Create Poll Answer',
      'ar': 'إنشاء دورة',
    },
    '0tc3huy4': {
      'en': 'Answer',
      'ar': 'اسم',
    },
    'd0svu4cq': {
      'en': '',
      'ar': 'أدخل اسمك هنا...',
    },
    'maleye80': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // instructor_userRoleAprrovedRjectDropDownCopy
  {
    'nwtuc54h': {
      'en': 'Approved',
      'ar': 'موافقة',
    },
    '89p2dcby': {
      'en': 'Reject',
      'ar': 'يرفض',
    },
    'yn7f2f1e': {
      'en': 'Pending',
      'ar': 'قيد الانتظار',
    },
    'vzsuv82v': {
      'en': 'Please select...',
      'ar': 'الرجاء تحديد ...',
    },
    'lpvhnjxu': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
  },
  // Mobile
  {
    'rk8yqcyi': {
      'en': 'Window is too small!',
      'ar': 'النافذة صغيرة جدًا!',
    },
  },
  // ProfilePopup
  {
    'ufisciyd': {
      'en': 'View Profile',
      'ar': 'عرض الصفحة الشخصية',
    },
    '0frs1hof': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
  },
  // changeCountry
  {
    '14wdqq77': {
      'en': '*',
      'ar': '*محدث',
    },
  },
  // changeUniversity
  {
    'c88npaj3': {
      'en': '*',
      'ar': '*محدث',
    },
  },
  // changeBranch
  {
    '0szhsa3f': {
      'en': '*',
      'ar': '*محدث',
    },
  },
  // AllEditReview
  {
    'indigah9': {
      'en': 'Review',
      'ar': 'مراجعة',
    },
    'etcs36jd': {
      'en': 'Approved',
      'ar': 'موافقة',
    },
    'vfci1jkb': {
      'en': 'Rejected',
      'ar': 'مرفوض',
    },
    '0pdroggi': {
      'en': 'Pending',
      'ar': 'قيد الانتظار',
    },
    'ddhtmq0i': {
      'en': 'Select Status...',
      'ar': 'حدد الحالة...',
    },
    'v4ojzmr0': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'cebl069p': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'hr3tkvlj': {
      'en': 'Course:',
      'ar': 'دورة:',
    },
    'cgg7imv0': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    'llrmvf0q': {
      'en': 'Admin Reply',
      'ar': 'رد المشرف',
    },
    'fybyqkfi': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
    'a43gsb3h': {
      'en': 'Reply',
      'ar': 'رد',
    },
    'dayrz01s': {
      'en': 'Enter your response',
      'ar': 'أدخل ردك',
    },
    'sped5g9m': {
      'en': '',
      'ar': '',
    },
    'qzrylvcv': {
      'en': 'Reply',
      'ar': 'رد',
    },
  },
  // Order_page_course_block
  {
    'hh6cqo6o': {
      'en': 'Course plan',
      'ar': '',
    },
  },
  // createCategory
  {
    'ywq5f3xr': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    '64wgyaq1': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'xyqf692w': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '4gxzw0i5': {
      'en': 'Select country...',
      'ar': 'حدد الدولة...',
    },
    'vg2zozsn': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'd6fh8a50': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'aam1qv70': {
      'en': 'Select university...',
      'ar': 'اختر الجامعة...',
    },
    'z6y9sdg0': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'f8r670eu': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'hhqc5haj': {
      'en': 'Select category...',
      'ar': 'اختر الفئة...',
    },
    '90n2mrck': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'g8iv83lh': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'h6firoik': {
      'en': 'Select branch...',
      'ar': 'اختر الفرع...',
    },
    'pnco0ffh': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '77jbrv7d': {
      'en': 'Search here...',
      'ar': 'عنوان',
    },
    'wlsjttp1': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '3adlu41w': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
  },
  // webNavCourseSubmenu
  {
    'vudpjnvu': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    '7iw6dh92': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    '0tdzk7g7': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'jd6vh6so': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'g17s2rts': {
      'en': 'Course Category',
      'ar': 'فئة الدورة',
    },
    'dem6mudy': {
      'en': 'Category',
      'ar': 'فئة',
    },
    '982pie2h': {
      'en': 'University',
      'ar': 'جامعة',
    },
    '9835i6un': {
      'en': 'University',
      'ar': 'جامعة',
    },
    'l9ktproi': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    'hes6fphj': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    'u2fwnvsm': {
      'en': 'Announcement',
      'ar': 'إعلان',
    },
    'lf5x9ndz': {
      'en': 'Announcement',
      'ar': 'إعلان',
    },
  },
  // webNavUserSubmenu
  {
    'ix6yaiwa': {
      'en': 'User',
      'ar': 'مستخدم',
    },
    '7e4t5hs5': {
      'en': 'User',
      'ar': 'مستخدم',
    },
    'zjxwi6xd': {
      'en': 'Instructor Request',
      'ar': 'طلب مدرس',
    },
    '8k5dhjjz': {
      'en': 'Instructor Request',
      'ar': 'طلب مدرس',
    },
  },
  // Remove
  {
    'xmn3tbe6': {
      'en': 'Remove!',
      'ar': 'يمسح!',
    },
    '0groranu': {
      'en': 'Do you want remove this..',
      'ar': 'هل تريد حذف هذا ..',
    },
    '734uodgk': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    'hntv0zap': {
      'en': 'Delete',
      'ar': 'يمسح',
    },
  },
  // student_blocking
  {
    '17jvd240': {
      'en': 'Reason',
      'ar': 'سبب',
    },
    'brubvkdy': {
      'en': '',
      'ar': 'أدخل اسمك هنا...',
    },
    '2myvfr78': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '58er5jul': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '303tzihv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // AddBatch
  {
    'rzqyad7k': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'sswmoti8': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'z8183lh6': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'ctd5q6o9': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    '7d2ttduo': {
      'en': 'Student Limit',
      'ar': 'وصف',
    },
    'usuk20c4': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    'w5smwbxd': {
      'en': 'Description',
      'ar': 'وصف',
    },
    '727zv3rk': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    '6u0uen47': {
      'en': '',
      'ar': '',
    },
    'ovfmrg41': {
      'en': 'Ongoing',
      'ar': 'جاري التنفيذ',
    },
    'hrynbnal': {
      'en': 'Archived',
      'ar': 'مؤرشف',
    },
    '6egrldgd': {
      'en': 'Select status...',
      'ar': 'اختر الحالة...',
    },
    '03h639ht': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'be64j1va': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'o19ta1de': {
      'en': 'End Date',
      'ar': 'تاريخ الانتهاء',
    },
    'vpo8u8yo': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '6eziri4e': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5rco8ouk': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'm7ihx81f': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ki9qc3kl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // AddBatchList
  {
    'diaqfkrb': {
      'en': '',
      'ar': '',
    },
    '9c20400o': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'g3kpuovs': {
      'en': '2',
      'ar': '2',
    },
    'eyxzu74z': {
      'en': '3',
      'ar': '3',
    },
    '2g6r2u7e': {
      'en': 'Select course...',
      'ar': 'اختر الدورة...',
    },
    '3d24r8qx': {
      'en': 'Search for an course...',
      'ar': 'البحث عن عنصر...',
    },
    'l16rhw71': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'qjoeo6fd': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5z28fun3': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'i4c9q8ya': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'o4zyvzpe': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // pwdCouseBatch
  {
    'miwlgm7q': {
      'en': 'Please enter master password',
      'ar': 'الرجاء إدخال كلمة المرور الرئيسية',
    },
    '15pw713p': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'g79g07nw': {
      'en': '',
      'ar': '',
    },
    'q7e1cjbu': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'fk7lf0uv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '960wfqez': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'iuvjyv4q': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8xljn6hq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // PresentBatchinCourse
  {
    '38b57s33': {
      'en': 'Present batch details',
      'ar': 'تفاصيل الدفعة الحالية',
    },
    '8wruw2ps': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    'j9bd5ypn': {
      'en': 'Update',
      'ar': 'تحديث',
    },
    'm56cbvdj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'i5xytekj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'kqqgz021': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1ktrlrru': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // bookings
  {
    '1hmr42p8': {
      'en': 'Upcoming',
      'ar': 'القادمة',
    },
    'iuh2zwij': {
      'en': 'Archived',
      'ar': 'مؤرشف',
    },
    'vo3337ui': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    '44tbo30f': {
      'en': 'Session',
      'ar': 'حصة',
    },
    'qk2ag4a1': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    'm8x0iz57': {
      'en': 'Remarks',
      'ar': 'ملاحظات',
    },
    'cjyvpr9o': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'wy2w8hc3': {
      'en': 'Session',
      'ar': 'حصة',
    },
    '991mt29j': {
      'en': 'User Details',
      'ar': 'بيانات المستخدم',
    },
    '3zibfokz': {
      'en': 'Remarks',
      'ar': 'ملاحظات',
    },
  },
  // pwdMainBatchStatusChange
  {
    '0uiukpre': {
      'en': 'Please enter master password',
      'ar': 'الرجاء إدخال كلمة المرور الرئيسية',
    },
    'sb1wu5co': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'ztfuzulm': {
      'en': '',
      'ar': '',
    },
    '4li730cx': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'vqdnqggt': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'pijtghaq': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '9cte7pgh': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dqmegh1m': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // pwdBatchCouseList
  {
    'ycq01ti2': {
      'en': 'Please enter master password',
      'ar': 'الرجاء إدخال كلمة المرور الرئيسية',
    },
    'hddomhvd': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '49t3uvdj': {
      'en': '',
      'ar': '',
    },
    'aiy3e9yo': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '24egswwv': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'nz6hbo8i': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'nk0x3agi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'piuoj72a': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // ListAvilableBatches
  {
    'funyv7ae': {
      'en': 'Select Batch & Publish ',
      'ar': 'حدد الدفعة هنا',
    },
    '1g7klq70': {
      'en': 'OR',
      'ar': 'أو',
    },
    'ce696wpz': {
      'en': 'New Batch',
      'ar': 'دفعة جديدة',
    },
    'e54vkqw5': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'a5bhamhw': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'r0h49809': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '539l1yii': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // block_status
  {
    '5jz8hhp7': {
      'en': 'Sorry, you have been blocked',
      'ar': 'عذرا، لقد تم حظرك',
    },
    'mua7x6s0': {
      'en': 'Please contact support team \'+965 98765432\'',
      'ar': 'يرجى الاتصال بفريق الدعم \"+965 98765432\"',
    },
  },
  // AddCoupon
  {
    'q6aa6liw': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'vacqe6au': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    'onyep8al': {
      'en': 'Discount',
      'ar': 'تخفيض',
    },
    'b5qe5eux': {
      'en': 'Discount',
      'ar': 'تخفيض',
    },
    'r71sx5hf': {
      'en': 'Amount',
      'ar': 'كمية',
    },
    'ivphg282': {
      'en': 'Select coupon type',
      'ar': 'اختر نوع القسيمة',
    },
    'g826lwup': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '9rhpgf5n': {
      'en': 'Amount',
      'ar': 'كمية',
    },
    'aa32vmpg': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    'fy3rxwyd': {
      'en': 'Total usage limit',
      'ar': 'حد الاستخدام الإجمالي',
    },
    'maea83b2': {
      'en': '',
      'ar': 'عنوان الإعلان',
    },
    '4fd6rgar': {
      'en': 'Minimum amount',
      'ar': 'الحد الأدنى للمبلغ',
    },
    'jqmj8rk4': {
      'en': '',
      'ar': '',
    },
    'gq3ecptx': {
      'en': '0',
      'ar': '',
    },
    '97tj8q79': {
      'en': 'Maximum amount',
      'ar': 'الحد الأقصى للمبلغ',
    },
    '270cguia': {
      'en': '',
      'ar': '',
    },
    'k9uqv3uw': {
      'en': '0',
      'ar': '',
    },
    'p8dqte3k': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'fe97mspw': {
      'en': 'End Date',
      'ar': 'تاريخ الانتهاء',
    },
    '3zkup764': {
      'en': 'Select the courses',
      'ar': 'حدد الدورات',
    },
    '0lmt1zwp': {
      'en': 'Search here...',
      'ar': '',
    },
    'aanyto68': {
      'en': 'Enable Coupon',
      'ar': 'تمكين القسيمة',
    },
    'qtmlkauz': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '9r6z44d3': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '2y44ts4g': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'pej7jnmr': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'lov07f2f': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'q3qrswxz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'j7nu1nw7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // ListAvailableVideo
  {
    '3s7pbisq': {
      'en': 'Select Video here',
      'ar': 'حدد الفيديو هنا',
    },
    'ey7hb5y7': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    'kr51k6k6': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
  },
  // webNavSMSSubmenu
  {
    'lj9xurvn': {
      'en': 'Batch',
      'ar': '',
    },
    'qfjf1w4m': {
      'en': 'SMS',
      'ar': 'لوحة القيادة',
    },
  },
  // Bulk_sms_confirmation
  {
    'cyucm5yf': {
      'en': 'Do you really want to send the sms?',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    '2vquuotp': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'ehnatisr': {
      'en': 'No',
      'ar': 'لا',
    },
  },
  // bulk_sms_recepients
  {
    '9qhdgdem': {
      'en': 'Bulk SMS Report',
      'ar': 'تقرير الرسائل القصيرة بالجملة',
    },
    'adbo566n': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    'bgiglr3s': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    '4rqdevlx': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'du73rgdn': {
      'en': 'Status',
      'ar': 'حالة',
    },
  },
  // webNavTranslateSubmenu
  {
    'xu3w07g7': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    '7hduej44': {
      'en': 'Batch',
      'ar': 'حزمة',
    },
    '2hp9rlph': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'd7bgcznw': {
      'en': 'Course',
      'ar': 'دورة',
    },
    'fjwv7phb': {
      'en': 'Course Category',
      'ar': 'فئة الدورة',
    },
    'sj3r1ohg': {
      'en': 'Course Category',
      'ar': 'فئة الدورة',
    },
    'uzqx6c7j': {
      'en': 'Country',
      'ar': 'دولة',
    },
    'ry57aene': {
      'en': 'Country',
      'ar': 'دولة',
    },
    'mikcmjj8': {
      'en': 'University',
      'ar': 'جامعة',
    },
    'erqiw4ol': {
      'en': 'University',
      'ar': 'جامعة',
    },
    'c2g2n5wj': {
      'en': 'Branch',
      'ar': 'فرع',
    },
    'aud6skss': {
      'en': 'Category',
      'ar': 'فئة',
    },
    '8do0w5qe': {
      'en': 'Branch',
      'ar': 'فرع',
    },
    '2mjjdauu': {
      'en': 'Branch',
      'ar': 'فرع',
    },
    'vlwungrm': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    '5lkjwm8c': {
      'en': 'Poll',
      'ar': 'تصويت',
    },
    'envm55a0': {
      'en': 'Announcement',
      'ar': 'إعلان',
    },
    '60xxv2r4': {
      'en': 'Announcement',
      'ar': 'إعلان',
    },
    'wb6vcapp': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    'wtfj3b25': {
      'en': 'Meeting',
      'ar': 'مقابلة',
    },
    '23iu6nth': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
    'hpzs03dz': {
      'en': 'Setting',
      'ar': 'جلسة',
    },
  },
  // expand_textfield
  {
    'k4r1ijua': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'rlgs75hn': {
      'en': 'Enter here',
      'ar': 'أدخل هنا',
    },
    'az7li9cv': {
      'en': '',
      'ar': '',
    },
    'eqcqoywu': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'qqebzpqm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jjap29bl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'bq41r30p': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'pyw598hp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // SMSforParicularCourse
  {
    's8wbdrby': {
      'en': 'Message',
      'ar': 'رسالة',
    },
    '172q9lq5': {
      'en': '',
      'ar': '',
    },
    '3b9m2g88': {
      'en': '\"The maximum characters for SMS are 160.\"',
      'ar': '\"الحد الأقصى لعدد أحرف الرسائل القصيرة هو 160.\"',
    },
    'grjcw0go': {
      'en': 'Send Now',
      'ar': 'ارسل الان',
    },
    '78jn0qen': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
    },
    'fi2q79o8': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    '04tqtt8c': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'o40gxxbk': {
      'en': 'Status',
      'ar': 'حالة',
    },
  },
  // changeCategory
  {
    'wy1h7oqs': {
      'en': '*',
      'ar': '*',
    },
  },
  // RemoveMessage
  {
    'yah1isbf': {
      'en': 'Remove!',
      'ar': 'يزيل!',
    },
    '0i8klchr': {
      'en': 'Do you want remove this..',
      'ar': 'هل تريد إزالة هذا ..',
    },
    '4itn91rg': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    '6c6xdkrw': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
  },
  // pwdCouseStatus
  {
    'mrc6zzbv': {
      'en': 'Please enter master password',
      'ar': 'الرجاء إدخال كلمة المرور الرئيسية',
    },
    'yyvac0bm': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'ibytnl64': {
      'en': '',
      'ar': '',
    },
    '25vds5jn': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'cph6zk5a': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'aeoc88bs': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '81m5cs1n': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ljs83x4h': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
  },
  // Delete_confirmation
  {
    '84si4klh': {
      'en':
          'Do you want to really delete this? If yes, below will get deleted.',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'oxhdsky7': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    '9omtdsgl': {
      'en': 'No',
      'ar': 'لا',
    },
  },
  // CourseFORMinComponents
  {
    'mx4qsb66': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    '1j5kkwlj': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'jlt1aumm': {
      'en': 'Title',
      'ar': 'عنوان',
    },
    'bhxdwo5z': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'xydse8nb': {
      'en': 'Subtitle',
      'ar': 'الترجمة',
    },
    '73gwaun6': {
      'en': '',
      'ar': 'أدخل العنوان الفرعي للدورة هنا ...',
    },
    'f24mqch2': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    '5kcenffr': {
      'en': 'Select country...',
      'ar': 'حدد الدولة...',
    },
    'ouoyroup': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    '1zmoza4c': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    's9pbbl66': {
      'en': 'Select university...',
      'ar': 'اختر جامعة ...',
    },
    '9rap3sw5': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    '6pfdj388': {
      'en': 'Option 1',
      'ar': '',
    },
    'uvk4iv19': {
      'en': 'Select category...',
      'ar': '',
    },
    'plb8lwp7': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'mtwpcgdq': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'r9qabvfp': {
      'en': 'Select branch...',
      'ar': 'حدد الفرع ...',
    },
    'w9ee31kz': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر ...',
    },
    'bd39n9lw': {
      'en': 'Description',
      'ar': 'وصف',
    },
    'igw8dzkd': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'dhrxqa2i': {
      'en': 'What you will learn',
      'ar': 'ماذا سوف تتعلم',
    },
    'i8kei3l1': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    'e0ra6gz3': {
      'en': 'Course Requirement(one per line)',
      'ar': 'متطلبات الدورة (واحد لكل سطر)',
    },
    'sjdjdys6': {
      'en': '',
      'ar': 'أدخل وصف الدورة هنا ...',
    },
    '1u7bjkpk': {
      'en': 'Total Course Duration(hurs)',
      'ar': 'إجمالي مدة الدورة (ساعات)',
    },
    'l2dpgycw': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    '8rv3ree2': {
      'en': 'Total Number of Lessons',
      'ar': 'إجمالي عدد الدروس',
    },
    'f0shpjh4': {
      'en': '',
      'ar': 'أدخل العنوان هنا...',
    },
    'ldg0vjlf': {
      'en': 'Student Limit',
      'ar': '',
    },
    '9fmjf9o7': {
      'en': '',
      'ar': '',
    },
    'bmqe0bla': {
      'en': 'Course Type',
      'ar': 'دورة كتابية',
    },
    'juj5y4xx': {
      'en': 'Free',
      'ar': 'حر',
    },
    'cyk8lran': {
      'en': 'Paid',
      'ar': 'مدفوع',
    },
    '2062vp8f': {
      'en': 'Full Price',
      'ar': 'السعر الكامل',
    },
    '2iww088v': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    'qblvxq3z': {
      'en': 'First EMI Price',
      'ar': 'سعر القسط الشهري الأول',
    },
    'sf4e36w8': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    '67vnrf7s': {
      'en': 'Second EMI Price',
      'ar': 'سعر القسط الشهري الثاني',
    },
    'qhu8s051': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    't0a11ece': {
      'en': 'Third EMI Price',
      'ar': 'سعر القسط الشهري الثالث',
    },
    'swv130o7': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    'f6dq5rca': {
      'en': 'Whatsapp Group Link',
      'ar': 'رابط مجموعة الواتساب',
    },
    'gaa6s9wh': {
      'en': '',
      'ar': 'أدخل السعر هنا ...',
    },
    '4zlunapm': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'hpuy34v3': {
      'en': 'Select instructor',
      'ar': 'اختر المدرب',
    },
    'nuygd73k': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'r922c5dg': {
      'en': 'Add to LIst',
      'ar': 'أضف إلى القائمة',
    },
    'xaapjc5g': {
      'en': '',
      'ar': '',
    },
    's2cdt1iq': {
      'en': 'Recommended',
      'ar': 'مُستَحسَن',
    },
    'klvd7cyz': {
      'en': 'Featured',
      'ar': 'متميز',
    },
    '4axzmawk': {
      'en': '',
      'ar': '',
    },
    'dln7vsi0': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'bf68m9y4': {
      'en': 'Batches',
      'ar': 'دفعات',
    },
    'ouf5ut1j': {
      'en': 'Draft',
      'ar': 'مسودة',
    },
    '0r7tctkx': {
      'en': 'Publish',
      'ar': 'ينشر',
    },
    'lots8v7t': {
      'en': 'Select batches...',
      'ar': 'حدد الدفعات...',
    },
    'wm5qt2m0': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'wbh1vkc9': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'uyy7ud71': {
      'en': 'Draft',
      'ar': 'مسودة',
    },
    's3tbdrww': {
      'en': 'Publish',
      'ar': 'ينشر',
    },
    'tr8j16ay': {
      'en': 'Select branch...',
      'ar': 'اختر الفرع...',
    },
    '1fh4wsg2': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    '7lzrf1n7': {
      'en': 'Add Photo',
      'ar': 'إضافة صورة',
    },
    'hd9he9i2': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'e1t1sj21': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    '19qcrr8e': {
      'en': 'Preview',
      'ar': 'معاينة',
    },
    'j585huri': {
      'en': 'Add Video',
      'ar': 'أضف فيديو',
    },
    'r00agd7b': {
      'en': 'Remove ',
      'ar': 'يزيل',
    },
    'hcou0ieg': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'zcb3a1wa': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'u3s3mpa8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7g58gned': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '8rd0v84x': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'q0h0z662': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'v5z955jp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'udr3i1e6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'xto3bs7k': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'bkmonstl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wb8o71se': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5hcnvt2y': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'tj3r2zs7': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'v1v673sm': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'abmt5470': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'flmyg0rj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    's0jhfu9k': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'x0g7xrll': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'osadsomm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'uxzeu2h6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'i6n5umz1': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'fgafryxv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ia63l885': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'we7087mz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'k9su3kr5': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // webNavLogsSubmenu
  {
    'v56noxzg': {
      'en': 'Email Log',
      'ar': '',
    },
    'pxzvfofi': {
      'en': 'Email Log',
      'ar': '',
    },
    'zs9leseg': {
      'en': 'Session Log',
      'ar': '',
    },
    'mn490sxa': {
      'en': 'User Session Log',
      'ar': '',
    },
    'jucjrzak': {
      'en': 'Activity Log',
      'ar': '',
    },
    '85smmapl': {
      'en': 'Activity Log',
      'ar': '',
    },
  },
  // SMS
  {
    '4w5or8p3': {
      'en': 'Do you really want to send the sms?',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    '44efwjac': {
      'en': 'Yes',
      'ar': 'نعم',
    },
    'tiydncbo': {
      'en': 'No',
      'ar': 'لا',
    },
  },
  // Email_Log_details
  {
    '8d9bo0l9': {
      'en': 'Details',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'c0wbjjpg': {
      'en': 'Attempts',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'qs5xdsy6': {
      'en': 'Start Date & Time',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'rne1m4mn': {
      'en': 'End Date & Time',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    '2mu25heq': {
      'en': 'Error',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    '6igyzxvk': {
      'en': 'Status',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
  },
  // Session_Log_details
  {
    'rdf9lx8l': {
      'en': 'User Session Details',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'bt80piwn': {
      'en': 'Device ID',
      'ar': 'اسم المستخدم',
    },
    '1alpmnc0': {
      'en': 'Login Time',
      'ar': 'متحرك',
    },
  },
  // Activity_Log_details
  {
    'sz81rewu': {
      'en': 'Activity Details',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'bhsa347z': {
      'en': 'Event ID',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'q0epgz38': {
      'en': 'Event Type',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'r9z7kbqr': {
      'en': 'Event Title',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    '1obwgkbo': {
      'en': 'Event Status',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'grl2qzns': {
      'en': 'Object',
      'ar': 'هل تريد حقا إرسال الرسائل القصيرة؟',
    },
    'ao0lw7qz': {
      'en': 'User Details',
      'ar': '',
    },
    'irwxtylc': {
      'en': 'Show less',
      'ar': '',
    },
    'xb6hokze': {
      'en': 'Show more',
      'ar': '',
    },
  },
  // CreateFORM
  {
    '11c1v2jz': {
      'en': 'FORM',
      'ar': '',
    },
    '32218lqi': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'xizdajuv': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    '3be5cv75': {
      'en': 'Title',
      'ar': '',
    },
    'wrjddb5o': {
      'en': '',
      'ar': '',
    },
    '9d6ql3mi': {
      'en': 'Subtitle',
      'ar': '',
    },
    '2o2n2ejj': {
      'en': '',
      'ar': '',
    },
    '15pf56zb': {
      'en': 'Description',
      'ar': '',
    },
    '5gfiehvd': {
      'en': '',
      'ar': '',
    },
    'vjfuu95x': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    '5vb90a8p': {
      'en': 'Field is required',
      'ar': '',
    },
    '4ch1im32': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '7z2q30ao': {
      'en': 'Field is required',
      'ar': '',
    },
    'xgkl9gt4': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    't177gjjh': {
      'en': 'Field is required',
      'ar': '',
    },
    'c2sjty44': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // EditFORM
  {
    '26j9vkdb': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'b19lga00': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    '5g4kobeu': {
      'en': 'Name',
      'ar': '',
    },
    'j11ifqk8': {
      'en': '',
      'ar': '',
    },
    '06887jkp': {
      'en': 'Subtitle',
      'ar': '',
    },
    'zyfm1b8g': {
      'en': '',
      'ar': '',
    },
    's6n97sj3': {
      'en': 'Description',
      'ar': '',
    },
    'onywpati': {
      'en': '',
      'ar': '',
    },
    '37cir8cp': {
      'en': 'Update',
      'ar': 'يحفظ',
    },
    '6i9p9qwk': {
      'en': 'Field is required',
      'ar': '',
    },
    'qh7r5uo8': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '8mjfx5ui': {
      'en': 'Field is required',
      'ar': '',
    },
    'rgpz7zbh': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '4w7chnzx': {
      'en': 'Field is required',
      'ar': '',
    },
    '8n6wjhgb': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // CreateQuestion
  {
    'kr7nrepf': {
      'en': 'Question',
      'ar': '',
    },
    'ivg4pnqz': {
      'en': '',
      'ar': '',
    },
    '7o74xbeh': {
      'en': 'Select the right answer here.',
      'ar': '',
    },
    'ela9zjar': {
      'en': 'Option 1',
      'ar': '',
    },
    'pi0pvgjp': {
      'en': 'Please select...',
      'ar': '',
    },
    '1f0xp2lu': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'zi7v1sxs': {
      'en': 'Add one more answer here.',
      'ar': '',
    },
    '8nxfkb4g': {
      'en': '+ Add answer',
      'ar': '',
    },
    'jms1zjs3': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'vkt9dsaz': {
      'en': 'Field is required',
      'ar': '',
    },
    'mjfdq1db': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'cgdrdigf': {
      'en': 'Field is required',
      'ar': '',
    },
    'copm87w3': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // EditQuestion
  {
    'agvkml4x': {
      'en': 'Question',
      'ar': '',
    },
    'o6u66wyj': {
      'en': '',
      'ar': '',
    },
    '4xsdkz1w': {
      'en': 'Select the right answer here.',
      'ar': '',
    },
    'd28lpntn': {
      'en': 'Option 1',
      'ar': '',
    },
    'pwk3qgmh': {
      'en': 'Please select...',
      'ar': '',
    },
    'jz8gh8qv': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'kryc0r3u': {
      'en': 'Serial Number',
      'ar': '',
    },
    '2o1mtlua': {
      'en': 'Enter serial number here...',
      'ar': '',
    },
    '99rs6hak': {
      'en': 'Add one more answer here.',
      'ar': '',
    },
    'gmyy2bjq': {
      'en': '+ Add answer',
      'ar': '',
    },
    'tgzbj31b': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'jmih309g': {
      'en': 'Field is required',
      'ar': '',
    },
    '931qrb4r': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'd4xqr4fj': {
      'en': 'Field is required',
      'ar': '',
    },
    'zfxfuc1p': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // createCoursePlan
  {
    'lb7rf5d8': {
      'en': 'Name',
      'ar': '',
    },
    'el6k3z4w': {
      'en': '',
      'ar': '',
    },
    '6asgqyzf': {
      'en': 'Price',
      'ar': '',
    },
    'oddc8koq': {
      'en': '',
      'ar': '',
    },
    '0d1lxa84': {
      'en': 'Number of days',
      'ar': '',
    },
    'x7itanw7': {
      'en': '',
      'ar': '',
    },
    'znpm6v2y': {
      'en': 'Number of classes',
      'ar': '',
    },
    'lypwlcp6': {
      'en': '',
      'ar': '',
    },
    'zqe8l2z2': {
      'en': 'Publish',
      'ar': '',
    },
    'eo71waqv': {
      'en': 'Draft',
      'ar': '',
    },
    'lp5gwk8d': {
      'en': 'Publish',
      'ar': '',
    },
    'wi603bkz': {
      'en': 'Archive',
      'ar': '',
    },
    'sbuwdjvq': {
      'en': 'Please select...',
      'ar': '',
    },
    'uuwj16vq': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '8chb0p7z': {
      'en': 'Field is required',
      'ar': '',
    },
    '57s6bouc': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'zi6fp8yj': {
      'en': 'Field is required',
      'ar': '',
    },
    '8qpnufgq': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'sbny2flq': {
      'en': 'Field is required',
      'ar': '',
    },
    'jeu7937e': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'mp4bzliz': {
      'en': 'Save',
      'ar': '',
    },
  },
  // Add_member
  {
    '5sbjxxrr': {
      'en': 'Serial Number',
      'ar': '',
    },
    'ub661w6z': {
      'en': '',
      'ar': '',
    },
    'fpdcfxp4': {
      'en': 'Title',
      'ar': '',
    },
    'oimvrhv1': {
      'en': '',
      'ar': '',
    },
    '7rt7lb9w': {
      'en': 'Subtitle',
      'ar': '',
    },
    'xrxr1cz5': {
      'en': '',
      'ar': '',
    },
    'j2gimnf9': {
      'en': 'Description',
      'ar': '',
    },
    'uw779gyy': {
      'en': '',
      'ar': '',
    },
    '8w88nyfq': {
      'en': 'Website URL',
      'ar': '',
    },
    'bp4sctoq': {
      'en': '',
      'ar': '',
    },
    'biiozrtw': {
      'en': 'Facebook',
      'ar': '',
    },
    't7630th6': {
      'en': '',
      'ar': '',
    },
    'cead7egk': {
      'en': 'Instagram',
      'ar': '',
    },
    'idixbaig': {
      'en': '',
      'ar': '',
    },
    'elueszih': {
      'en': 'LinkedIn',
      'ar': '',
    },
    'it6t91xj': {
      'en': '',
      'ar': '',
    },
    'o62uvbr4': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'b9227lfp': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    '8ditg1mm': {
      'en': 'Save',
      'ar': '',
    },
  },
  // Edit_member
  {
    '4yngnmt9': {
      'en': 'Serial Number',
      'ar': '',
    },
    'w2xkygd7': {
      'en': '',
      'ar': '',
    },
    '8x0uosml': {
      'en': 'Title',
      'ar': '',
    },
    'cbidcljw': {
      'en': '',
      'ar': '',
    },
    'e2d0hodv': {
      'en': 'Subtitle',
      'ar': '',
    },
    'j3zjbt9e': {
      'en': '',
      'ar': '',
    },
    'zvnwtqpq': {
      'en': 'Description',
      'ar': '',
    },
    '92qr5vgk': {
      'en': '',
      'ar': '',
    },
    'f258sanf': {
      'en': 'Website URL',
      'ar': '',
    },
    '6fsudg14': {
      'en': '',
      'ar': '',
    },
    'p1d37i23': {
      'en': 'Facebook',
      'ar': '',
    },
    '1p9hxa5o': {
      'en': '',
      'ar': '',
    },
    'ysukduh0': {
      'en': 'Instagram',
      'ar': '',
    },
    'pytuz7dp': {
      'en': '',
      'ar': '',
    },
    'jqvrswcd': {
      'en': 'LinkedIn',
      'ar': '',
    },
    'k8m1k6lk': {
      'en': '',
      'ar': '',
    },
    '22nu6rfc': {
      'en': 'Add Image',
      'ar': 'إضافة صورة',
    },
    'i20j68kx': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    'r2pyou0m': {
      'en': 'Remove',
      'ar': 'يزيل',
    },
    '2rikuzd8': {
      'en': 'Update',
      'ar': '',
    },
  },
  // createClass
  {
    'n8gwgsya': {
      'en': 'Create Class',
      'ar': '',
    },
    'bltbbwr7': {
      'en': 'Class Name',
      'ar': '',
    },
    'rbj6bex9': {
      'en': '',
      'ar': '',
    },
    '83z3qr2c': {
      'en': 'Member Limit',
      'ar': '',
    },
    'brh6mxko': {
      'en': '',
      'ar': '',
    },
    'nlfjiwiy': {
      'en': 'Number of Day',
      'ar': '',
    },
    'q0woh60q': {
      'en': '',
      'ar': '',
    },
    '6rfqb2pq': {
      'en': 'Start time',
      'ar': '',
    },
    '00et4z6a': {
      'en': 'Enter HH:MM  am  / pm',
      'ar': '',
    },
    'rtkzufpb': {
      'en': 'End time',
      'ar': '',
    },
    'hzucng6h': {
      'en': 'Enter HH:MM  am  / pm',
      'ar': '',
    },
    'ltezk2jg': {
      'en': 'Live',
      'ar': '',
    },
    'zjv4u1l6': {
      'en': 'Online',
      'ar': '',
    },
    'qkqsu979': {
      'en': 'Select class type...',
      'ar': '',
    },
    'ordknj3x': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'wc2a4kws': {
      'en': 'Add Photo',
      'ar': '',
    },
    'vn6q5hdd': {
      'en': 'Remove Photo',
      'ar': '',
    },
    'bhgmen6r': {
      'en': 'Add to LIst',
      'ar': '',
    },
    '04c29by5': {
      'en': 'Sunday',
      'ar': '',
    },
    'eoov4gku': {
      'en': 'Monday',
      'ar': '',
    },
    'fabhvkm5': {
      'en': 'Tuesday',
      'ar': '',
    },
    'ci4a2yww': {
      'en': 'Wednesday',
      'ar': '',
    },
    'au36zlaw': {
      'en': 'Thursday',
      'ar': '',
    },
    'aip7mune': {
      'en': 'Friday',
      'ar': '',
    },
    '9ri816dr': {
      'en': 'Saturday',
      'ar': '',
    },
    'p5zvy13y': {
      'en': 'Save',
      'ar': '',
    },
    'ca2d0dl2': {
      'en': 'Field is required',
      'ar': '',
    },
    'fe1v1zi0': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'hcoz60ch': {
      'en': 'Field is required',
      'ar': '',
    },
    'nq9ra9lf': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'jypeocjc': {
      'en': 'Field is required',
      'ar': '',
    },
    '79zwn9gl': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ow92zptn': {
      'en': 'Field is required',
      'ar': '',
    },
    '07f7w62h': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'g6q4k6um': {
      'en': 'Field is required',
      'ar': '',
    },
    'v7fk1jyc': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // videoUploadingStatus1
  {
    'qcjwtdz8': {
      'en': 'Upload Failed!!!',
      'ar': '',
    },
  },
  // remove_video
  {
    'shr2du0a': {
      'en': 'Do you really want to remove the video?',
      'ar': '',
    },
    'z7czwh0y': {
      'en': 'Yes',
      'ar': '',
    },
    'wen62p5f': {
      'en': 'No',
      'ar': '',
    },
  },
  // AddOnlineZoomClass
  {
    't0y10cv3': {
      'en': 'Add',
      'ar': '',
    },
    'jktpdtcd': {
      'en': 'Title',
      'ar': '',
    },
    'trlhvzmr': {
      'en': '',
      'ar': '',
    },
    '0kd9b3ci': {
      'en': 'Summary',
      'ar': '',
    },
    'iwi5guc8': {
      'en': '',
      'ar': '',
    },
    'utbqxeri': {
      'en': 'Duration(mins)',
      'ar': '',
    },
    'nm3r4f88': {
      'en': '',
      'ar': '',
    },
    '6cd8b6iq': {
      'en': 'Save',
      'ar': '',
    },
    '9goosrje': {
      'en': 'Field is required',
      'ar': '',
    },
    'ncsbubkm': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '42h093l6': {
      'en': 'Field is required',
      'ar': '',
    },
    'nvmmnj7l': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'c1enjtc8': {
      'en': 'Field is required',
      'ar': '',
    },
    'hczhleds': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // Course_grid
  {
    '3xid6hb8': {
      'en': 'Edit',
      'ar': '',
    },
    '5942cd8r': {
      'en': 'Preview',
      'ar': '',
    },
    'e3gilek6': {
      'en': 'Menu',
      'ar': '',
    },
    'g61dyres': {
      'en': 'Delete',
      'ar': '',
    },
    'unxqzwh2': {
      'en': 'Move to draft',
      'ar': '',
    },
  },
  // Course_grid_popup
  {
    'jozrivtf': {
      'en': 'Vidoes & PDF',
      'ar': '',
    },
    'vcf96qwp': {
      'en': 'Session Plans',
      'ar': '',
    },
    'hfy9my0j': {
      'en': 'Classes',
      'ar': '',
    },
    '2zb9h6ac': {
      'en': 'Online Program',
      'ar': '',
    },
    'rhvx1m2w': {
      'en': 'Session Plan ',
      'ar': '',
    },
    '8hme0vr7': {
      'en': 'Class',
      'ar': '',
    },
  },
  // booking_popup
  {
    'n69ecwpd': {
      'en': 'Booking',
      'ar': '',
    },
    '7semv0zh': {
      'en': 'Username',
      'ar': '',
    },
    '790hjpej': {
      'en': 'Email',
      'ar': '',
    },
    'gu5s1zi1': {
      'en': 'Phone ',
      'ar': '',
    },
    'zee29ye2': {
      'en': 'Booked date',
      'ar': '',
    },
    '1woy6u32': {
      'en': 'Attendance Status',
      'ar': '',
    },
    '9j5m0bsi': {
      'en': 'Action',
      'ar': '',
    },
    '1c0tr8fc': {
      'en': 'user@domainname.com',
      'ar': '',
    },
  },
  // upcommingMainClassComponents
  {
    'ib6bn2dp': {
      'en': 'Regular Class',
      'ar': '',
    },
    '8y2xyoms': {
      'en': 'Zoom Class',
      'ar': '',
    },
    'onxooklh': {
      'en': 'Name: ',
      'ar': '',
    },
    'oazsjx9f': {
      'en': 'Date: ',
      'ar': '',
    },
    'akueawyf': {
      'en': 'Time: ',
      'ar': '',
    },
    'skz70z4f': {
      'en': 'Bookings',
      'ar': '',
    },
    'xkcvzox7': {
      'en': 'Zoom Info',
      'ar': '',
    },
  },
  // ZoomInfo
  {
    'jq65qzli': {
      'en': 'Date',
      'ar': '',
    },
    'ceskthb6': {
      'en': 'Time',
      'ar': '',
    },
    '4p93ip6k': {
      'en': 'Meeting ID',
      'ar': '',
    },
    'x1dloob3': {
      'en': 'Password',
      'ar': '',
    },
    'v665pf3g': {
      'en': 'Start Meeting',
      'ar': '',
    },
    'h0ram813': {
      'en': 'Start Zoom Meeting',
      'ar': '',
    },
  },
  // webNavnew
  {
    'bkz6h7j9': {
      'en': 'D\'rip',
      'ar': '',
    },
    '3jbl7hzp': {
      'en': 'Dashboard',
      'ar': '',
    },
    'gzf9tnjp': {
      'en': 'Dashboard',
      'ar': '',
    },
    'l62nzs4b': {
      'en': 'Course',
      'ar': '',
    },
    'm2bqbbec': {
      'en': 'Session',
      'ar': '',
    },
    'ni2wariu': {
      'en': 'Orders',
      'ar': '',
    },
    'ir0yqohd': {
      'en': 'Orders',
      'ar': '',
    },
    'ng6mc2wt': {
      'en': 'Review',
      'ar': '',
    },
    'yugbcgp8': {
      'en': 'Review',
      'ar': '',
    },
    'hgxjp5ji': {
      'en': 'Video Management',
      'ar': '',
    },
    'igcdpbaw': {
      'en': 'Media',
      'ar': '',
    },
    'dicb29ck': {
      'en': 'User',
      'ar': '',
    },
    'wh8bosy1': {
      'en': 'Users',
      'ar': '',
    },
    'cjl5rpio': {
      'en': 'Form',
      'ar': '',
    },
    'm9cr6myu': {
      'en': 'Form',
      'ar': '',
    },
    '4ddb6p6x': {
      'en': 'Halloween Users',
      'ar': '',
    },
    '8ust7yso': {
      'en': 'Halloween Users',
      'ar': '',
    },
    '8oy89voi': {
      'en': 'Setting',
      'ar': '',
    },
    'aqalnd1q': {
      'en': 'Setting',
      'ar': '',
    },
    'w82y09ek': {
      'en': 'Setting',
      'ar': '',
    },
    '44jy55se': {
      'en': 'Setting',
      'ar': '',
    },
    'zy4o0jdb': {
      'en': 'Logout',
      'ar': '',
    },
    'wpklhj87': {
      'en': 'Logout',
      'ar': '',
    },
    'zum87cx5': {
      'en': 'Profile',
      'ar': '',
    },
  },
  // DeleteGlobal
  {
    'ic0lotkm': {
      'en': 'Delete!',
      'ar': '',
    },
    'cg61nicj': {
      'en': 'Do you want delete this..',
      'ar': '',
    },
    '4vdce237': {
      'en': 'Cancel',
      'ar': '',
    },
    'apuzd59w': {
      'en': 'Delete',
      'ar': '',
    },
  },
  // Class_grid
  {
    '90wlnq78': {
      'en': 'Class name',
      'ar': '',
    },
    'cveizfzf': {
      'en': '6:00pm - 8:00pm',
      'ar': '',
    },
    'm2xowe5r': {
      'en': 'No. Of Checkin: 4 of 10',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    '58n1dxme': {
      'en': '',
      'ar': '',
    },
    'byi7dj8m': {
      'en': '',
      'ar': '',
    },
    'e4zdsev2': {
      'en': '',
      'ar': '',
    },
    '65e2tfs2': {
      'en': '',
      'ar': '',
    },
    'ddazihx4': {
      'en': '',
      'ar': '',
    },
    'db03cpjj': {
      'en': '',
      'ar': '',
    },
    'fdb9078p': {
      'en': '',
      'ar': '',
    },
    '80ouzj9q': {
      'en': '',
      'ar': '',
    },
    '6rzhptp9': {
      'en': '',
      'ar': '',
    },
    'ce8c4ty0': {
      'en': '',
      'ar': '',
    },
    'up127qid': {
      'en': '',
      'ar': '',
    },
    'm3xhxk0l': {
      'en': '',
      'ar': '',
    },
    'kcvqa08x': {
      'en': '',
      'ar': '',
    },
    'dqrzd6sq': {
      'en': '',
      'ar': '',
    },
    'dpqtohyf': {
      'en': '',
      'ar': '',
    },
    'v01vf71s': {
      'en': '',
      'ar': '',
    },
    'gcv6def1': {
      'en': '',
      'ar': '',
    },
    'um9es99m': {
      'en': '',
      'ar': '',
    },
    'o4enbz4j': {
      'en': '',
      'ar': '',
    },
    '8z4tvfh7': {
      'en': '',
      'ar': '',
    },
    '2ybzla8x': {
      'en': '',
      'ar': '',
    },
    'd1wdf5i1': {
      'en': '',
      'ar': '',
    },
    '2ln7n9rw': {
      'en': '',
      'ar': '',
    },
    '2py80kgi': {
      'en': '',
      'ar': '',
    },
    'p6lsrh2a': {
      'en': '',
      'ar': '',
    },
    'ne8cclp9': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
