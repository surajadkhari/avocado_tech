import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/homepage/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
