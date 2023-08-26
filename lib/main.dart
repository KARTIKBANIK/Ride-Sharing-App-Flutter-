import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing_app/splachScreen/splash_screen.dart';
import 'package:ride_sharing_app/themeProvider/theme_provider.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: SplashScreen(),
    );
  }
}
