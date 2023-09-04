import 'package:example/pages/auth/sign_up_page.dart';
import 'package:example/pages/home/home_page.dart';
import 'package:example/pages/landing/landing_page.dart';
import 'package:example/pages/auth/sign_in_page.dart';
import 'package:example/utils/pages/error_page.dart';
import 'package:flutter/material.dart';

Route router(RouteSettings settings) {
  switch (settings.name) {
    case LandingPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const LandingPage(),
      );
    case SignInPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignInPage(),
      );
    case SignUpPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignUpPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const ErrorPage(message: 'No such route found!'),
      );
  }
}
