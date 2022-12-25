import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/authentication/login_page.dart';
import 'package:lucely_app/pages/authentication/splash_screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    pageDelay();
  }

  void pageDelay() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SplashScreen2(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: spacing * 18,
            height: spacing * 18,
            child: Image.asset('assets/images/lucely-logo.png'),
          ),
        ),
      ),
    );
  }
}
