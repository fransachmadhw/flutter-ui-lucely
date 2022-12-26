import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/custom_text_themes.dart';
import 'package:lucely_app/pages/authentication/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Lucely App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            textTheme: customTextThemes,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: blue,
                  onPrimary: blue,
                  secondary: columbiaBlue,
                ),
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
