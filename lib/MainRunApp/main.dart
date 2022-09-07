import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/BottomNavigationBar/Notifications.dart';
import 'package:untitled/BottomNavigationBar/PageBeforeHomePage.dart';
import 'package:untitled/Constants/LocaleString.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../BottomNavigationBar/Settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, widget) => GetMaterialApp(
        localizationsDelegates: const [
          FormBuilderLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
        supportedLocales: FormBuilderLocalizations.delegate.supportedLocales,
        translations: LocaleString(),
        locale: Locale('fr', 'FR'),
        debugShowCheckedModeBanner: false,
          initialRoute: '/',
            routes: {
          '/': (context) => Homepage(),
              '/second': (context) => const SettingsPage(),
              '/three': (context) => const Notifications(),
            },
      ),
    );
  }
}
