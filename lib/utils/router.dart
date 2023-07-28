import 'package:example/pages/landing/landing_page.dart';
import 'package:example/pages/sign_in/sign_in_screen.dart';
import 'package:example/utils/pages/error_page.dart';
import 'package:flutter/material.dart';

Route router(RouteSettings settings) {
  switch (settings.name) {
    case LandingPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const LandingPage(),
      );
    case SignInScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignInScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const ErrorPage(message: 'No such route found!'),
      );
  }
}
