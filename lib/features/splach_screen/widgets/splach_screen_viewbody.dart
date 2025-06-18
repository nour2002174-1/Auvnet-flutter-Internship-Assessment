import 'dart:async';
import 'package:auvnet/constants.dart';
import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/features/onboarding_screens/onboarding_screen1_view.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({Key? key}) : super(key: key);

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody> {
  @override
  void initState() {
    super.initState();


    Timer(const Duration(seconds: 9), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => On_boardingscreen1_view(), 
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.splach_screen_image,
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
