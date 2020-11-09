import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';
// import 'package:button/button.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            logo(),
            SizedBox(height: 150),
            loginButton(),
            SizedBox(height: 20),
            //row of buttons here //
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  socialLogin(
                    iconAccess: 'Google Login',
                    imageSwapper: 'assets/images/google.svg',
                  ),
                  SizedBox(width: 8),
                  socialLogin(
                    iconAccess: 'Facebook Login',
                    imageSwapper: 'assets/images/facebook.svg',
                  ),
                  SizedBox(width: 8),
                  socialLogin(
                    iconAccess: 'Apple Login',
                    imageSwapper: 'assets/images/apple.svg',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'sign up',
                style: GoogleFonts.merriweather(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget socialLogin({
    @required String imageSwapper,
    @required String iconAccess,
  }) {
    return Expanded(
      child: Material(
        color: Color(0xff8743D3),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(
            // horizontal: double.infinity,
            vertical: 10,
          ),
          // decoration: BoxDecoration(), // was using this, interesting / turned off
          child: SvgPicture.asset(
            imageSwapper,
            semanticsLabel: iconAccess,
            width: 21,
            height: 21,
            color: Color(0xff2F035F),
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return GestureDetector(
      onTap: () {},
      child: Material(
        textStyle: TextStyle(
          color: Colors.white,
        ),
        color: Color(0xff2F035F),
        borderRadius: BorderRadius.circular(10),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'login',
              style: GoogleFonts.merriweather(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget logo() {
    return Center(
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        color: Colors.white,
        semanticsLabel: 'rubric logo',
        width: 295,
        height: 89,
      ),
    );
  }
}
