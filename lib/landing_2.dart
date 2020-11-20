import 'package:demoapp/rubric_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Landing2 extends StatelessWidget {
  // static const spacing = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            //interesting, when this was column, logo was centered
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.white,
                semanticsLabel: 'rubric logo',
                width: 120,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff8743D3),
                      child: SizedBox(
                        height: 125,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff8743D3),
                      child: Expanded(
                        child: SizedBox(
                          height: 125,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff8743D3),
                      child: SizedBox(
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 270,
                child: ListView(
                  // able to scroll vert
                  scrollDirection: Axis.horizontal,
                  children: [
                    RubricCard(), //create a new widget that houses these, 11.19
                    SizedBox(width: 30),
                    RubricCard(),
                    SizedBox(width: 30),
                    RubricCard(),
                    SizedBox(width: 30),
                    RubricCard(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff8743D3),
                      child: SizedBox(
                        height: 225,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
