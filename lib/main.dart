import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ryc/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        shadowColor: Colors.white,
        textTheme: GoogleFonts.openSansCondensedTextTheme(),
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomePage(),
    );
  }
}
