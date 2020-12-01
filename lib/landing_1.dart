import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Landing1 extends StatelessWidget {
  static const spacing = 30.0;
  static const spacing2 = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                color: Color(0xff8743D3),
                semanticsLabel: 'rubric logo',
                width: 120,
                alignment: Alignment.centerLeft,
              ),
            ),
            SizedBox(height: spacing2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height:
                    (150), // would want to know how to make this auto height / snap height
                child: Text(
                  'Grading made simple',
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 1.125,
                      fontFamily: 'Avenir-Black'),
                ),
              ),
            ),
            SizedBox(height: spacing2),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Container(
                child: Text(
                  'Your rubrics',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Avenir-Black',
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            scrollAreaOne(),
            SizedBox(height: spacing),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: RubricCard(height: 360),
            ),
            SizedBox(height: spacing),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        color: Color(0xff2F035F),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              // vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/icon-dashboard-default.svg',
                      semanticsLabel: 'rubric dashboard icon',
                      width: 32,
                      color: Colors.white,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'dashboard',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Avenir-Black',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/icon-rubrics-default.svg',
                      semanticsLabel: 'rubric rubrics icon',
                      width: 32,
                      color: Colors.white,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'rubrics',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Avenir-Black',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/icon-favorites-default.svg',
                      semanticsLabel: 'rubric favorites icon',
                      width: 32,
                      color: Colors.white,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'favorites',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Avenir-Black',
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/icon-recess-default.svg',
                      semanticsLabel: 'rubric recess icon',
                      width: 32,
                      color: Colors.white,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'recess',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Avenir-Black',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          height: 60, //iOS min tap area
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

Widget scrollAreaOne() {
  return SizedBox(
    height: 210,
    child: ListView(
      // able to scroll vert
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 12),
        FractionalRubricCard(
          height: 210,
          variableWidth: .8,
        ),
        SizedBox(width: 30),
        FractionalRubricCard(
          height: 210,
          variableWidth: .8,
        ),
        SizedBox(width: 30),
        FractionalRubricCard(
          height: 210,
          variableWidth: .8,
        ),
        SizedBox(width: 30),
        FractionalRubricCard(
          height: 210,
          variableWidth: .8,
        ),
        SizedBox(width: 12),
      ],
    ),
  );
}
