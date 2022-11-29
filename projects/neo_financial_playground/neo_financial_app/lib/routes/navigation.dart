import 'package:flutter/material.dart';
import 'package:neo_financial_app/views/profile_view.dart';
import '../views/error_view.dart';
import '../views/home_template_view.dart';
import '../views/onboarding/onboarding_screen_view.dart';
import '../views/onboarding/register_template_view.dart';
import '../views/splash_view.dart';

class Navigation {
  static Route<dynamic> navigationGenarator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const SplashScreenView());
      case '/Home':
        return MaterialPageRoute(
          builder: (context) => const HomeTemplateView(),
        );
      case '/Onboarding':
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreenView(),
        );
      case '/Register':
        return MaterialPageRoute(
          builder: (context) => const RegisterTemplateView(),
        );
      case '/Profile':
        return MaterialPageRoute(
          builder: (context) => const ProfileView(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const ErrorView());
    }
  }
}
