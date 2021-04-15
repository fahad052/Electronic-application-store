import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop1/constants.dart';
import 'package:shop1/screen/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    const Locale('ar', 'AE'), 
    const Locale('ar', 'AE'), 
  ],
      home: HomeScreen(),
    );
  }
}
