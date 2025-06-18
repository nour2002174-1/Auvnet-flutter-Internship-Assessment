
import 'package:auvnet/features/onboarding_screens/onboarding_screen1_view.dart';
import 'package:auvnet/features/splach_screen/splach_screen_view.dart';
import 'package:flutter/material.dart';

class SplashToHomeRouter extends StatefulWidget {
  const SplashToHomeRouter({super.key});

  @override
  State<SplashToHomeRouter> createState() => _SplashToHomeRouterState();
}

class _SplashToHomeRouterState extends State<SplashToHomeRouter> {
  bool _isSplashDone = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 9), () {
      setState(() {
        _isSplashDone = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isSplashDone ? On_boardingscreen1_view() : Splach_View();
  }
}
