import 'package:auvnet/constants.dart';
import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/utils/elevated_button.dart';
import 'package:auvnet/features/login/view/login_view.dart';
import 'package:auvnet/features/onboarding_screens/onboarding_screen2_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class On_boardingscreen1_viewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
          children: [
           
            Positioned(
              top: -150,
              left: -100,
              child: Container(
                width: 400,
                height: 400,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [kPrimaryColor, secondryColor],
                  ),
                ),
              ),
            ),

      
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      AssetsData.splach_screen_image,
                      height: 250,
                      width: 250,
                    ),
                  ),
                  SizedBox(height: 150),
                  Text(
                    'all-in-one delivery',
                    style: GoogleFonts.rubik(
                      color: Color(0xff333333),
                      letterSpacing: -0.3,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Order groceries, medicines, and meals',
                    style: GoogleFonts.rubik(
                      color: Color(0xff677294),
                      letterSpacing: -0.3,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'delivered straight to your door',
                    style: GoogleFonts.rubik(
                      color: Color(0xff677294),
                      letterSpacing: -0.3,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 130),
                  Elevatedbuttons.blue_elevatedbutton(
                    text: 'Get Started',
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_view()),
                      );
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => On_boardingscreen2_view()),
                      );
                    },
                    child: Text(
                      'next',
                      style: GoogleFonts.rubik(
                        color: Color(0xff677294),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
