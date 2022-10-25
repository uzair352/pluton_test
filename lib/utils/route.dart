import 'package:flutter/material.dart';
import 'package:pluton_test/screen/home_screen.dart';

import '../screen/splash_screen.dart';

const SplashScreenRoute = '/splash-screen';

const HomeScreenRoute = '/home-screen';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SplashScreen());

    default:
      return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
  }
}
