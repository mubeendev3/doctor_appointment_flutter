import 'package:doctor_appointment_app/splashscreen.dart';
import 'package:doctor_appointment_app/util/appthem.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Apptheme.primary, statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Appointment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Apptheme.primary),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: AdminNavBarRoots(),
    );
  }
}
