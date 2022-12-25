import 'package:flutter/material.dart';
import 'package:lucely_app/common/custom_text_themes.dart';
import 'package:lucely_app/pages/authentication/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucely App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: customTextThemes,
        colorScheme: Theme.of(context).colorScheme.copyWith(
            // primary: primary500,
            // onPrimary: primary500,
            // secondary: primary300,
            ),
      ),
      home: const SplashScreen(),
    );
  }
}
