import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:readily/core/utils/functions/service_locator.dart';

import 'core/constants/colors.dart';
import 'core/constants/strings.dart';
import 'core/constants/themes.dart';
import 'core/router/app_router.dart';
import 'features/home/domain/entities/book_entity.dart';

void main() async {
  setupServiceLocator();

  // Refactor Needed
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
  await Hive.openBox(kNewestBox);

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
