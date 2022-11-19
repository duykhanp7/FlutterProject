// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class SLocation {
  SLocation();

  static SLocation? _current;

  static SLocation get current {
    assert(_current != null,
        'No instance of SLocation was loaded. Try to initialize the SLocation delegate before accessing SLocation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<SLocation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = SLocation();
      SLocation._current = instance;

      return instance;
    });
  }

  static SLocation of(BuildContext context) {
    final instance = SLocation.maybeOf(context);
    assert(instance != null,
        'No instance of SLocation present in the widget tree. Did you add SLocation.delegate in localizationsDelegates?');
    return instance!;
  }

  static SLocation? maybeOf(BuildContext context) {
    return Localizations.of<SLocation>(context, SLocation);
  }

  /// `Welcome Back`
  String get welcome_back {
    return Intl.message(
      'Welcome Back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_your_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enter_your_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button_text {
    return Intl.message(
      'Login',
      name: 'login_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Email: `
  String get email_input {
    return Intl.message(
      'Email: ',
      name: 'email_input',
      desc: '',
      args: [],
    );
  }

  /// `Password: `
  String get password_input {
    return Intl.message(
      'Password: ',
      name: 'password_input',
      desc: '',
      args: [],
    );
  }

  /// `Change email: `
  String get change_email {
    return Intl.message(
      'Change email: ',
      name: 'change_email',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese: `
  String get lang_vietnamese {
    return Intl.message(
      'Vietnamese: ',
      name: 'lang_vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `English: `
  String get lang_english {
    return Intl.message(
      'English: ',
      name: 'lang_english',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<SLocation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<SLocation> load(Locale locale) => SLocation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
