import 'package:example/pages/auth/sign_in_page.dart';
import 'package:example/pages/auth/sign_up_page.dart';
import 'package:example/pages/home/home_page.dart';
import 'package:example/pages/landing/landing_page.dart';
import 'package:example/utils/constants.dart';
import 'package:example/utils/router.dart';
import 'package:example/utils/scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryColor,
        ),
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
        useMaterial3: true,
      ),
      home: const HomePage(),
      onGenerateRoute: router,
    );
  }
}
