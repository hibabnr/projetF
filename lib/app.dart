import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisonparfaite/features/authentification/screens/onboarding/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      themeMode: ThemeMode.system,
      home: OnboardingScreen(),
    );
  }
}
