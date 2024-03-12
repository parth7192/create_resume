import 'package:create_resume/pages/build_options_page/build_options/personal_info_page/personal_info_page.dart';
import 'package:create_resume/pages/build_options_page/build_options/technical_skill/technical_skills.dart';
import 'package:create_resume/pages/build_options_page/build_options_page.dart';
import 'package:create_resume/pages/home_page/home_page.dart';
import 'package:create_resume/pages/splash_screen/splash_screen.dart';
import 'package:create_resume/utils/route_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      MyRoutes.splashScreen: (context) => const SplashScreen(),
      MyRoutes.homePage: (context) => const HomePage(),
      MyRoutes.buildOptionPage: (context) => const BuildOptionPage(),
      MyRoutes.buildOptions[0]['route']: (context) => const PersonalInfoPage(),
      MyRoutes.buildOptions[5]['route']: (context) => const TechnicalPage(),
    });
  }
}
