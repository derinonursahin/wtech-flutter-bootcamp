import 'package:duolingo_math/pages/get_started_pages/get_started_page_3.dart';
import 'package:duolingo_math/pages/get_started_pages/get_started_page_2.dart';
import 'package:duolingo_math/pages/onboarding_pages/onboarding_pages.dart';
import 'package:duolingo_math/pages/onboarding_pages/page1.dart';
import 'package:duolingo_math/pages/onboarding_pages/page2.dart';
import 'package:duolingo_math/pages/onboarding_pages/page3.dart';
import 'package:duolingo_math/pages/onboarding_pages/page4.dart';
import 'package:duolingo_math/pages/get_started_pages/get_started_page_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android)
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    else
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(OnBoardingScreen(), settings);
      case '/getstarted':
        return _routeOlustur(Get_Started_Page_1(), settings);
      case '/getstarted_2':
        return _routeOlustur(Get_Started_Page_2(), settings);
      case '/getstarted_3':
        return _routeOlustur(Get_Started_Page_3(), settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('404'),
            ),
            body: Center(
              child: Text('Sayfa Bulunamadı'),
            ),
          ),
        );
    }
  }
}