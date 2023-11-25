import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/constants/colors.dart';
import 'core/constants/themes.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() => runApp(const Readily());

class Readily extends StatelessWidget {
  const Readily({super.key});

  @override
  Widget build(context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        appBarTheme: kAppBarTheme,
        cardTheme: kCardTheme,
      ),
      home: const SplashView(),
    );
  }
}
