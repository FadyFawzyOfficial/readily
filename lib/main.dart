import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'core/constants/themes.dart';
import 'core/router/app_router.dart';
import 'core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const Readily());
}

class Readily extends StatelessWidget {
  const Readily({super.key});

  @override
  Widget build(context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        appBarTheme: kAppBarTheme,
        cardTheme: kCardTheme,
      ),
      routerConfig: router,
    );
  }
}
