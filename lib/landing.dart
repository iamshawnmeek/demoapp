import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // super dope, could also be .center to center up //
            crossAxisAlignment: CrossAxisAlignment.stretch, // super dope //
            children: <Widget>[
              // Text(                // come back to with group, 11.11.20
              //   'rubric', // not happy with this, wanting to load SvgPicture widget
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20,
              //   ),
              // ),
              SizedBox(height: 30),
              Container(
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff8743D3),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff8743D3),
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff8743D3),
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Container(

              //   height: 230,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: const Color(0xff8743D3),
              //   ),
              // ),
              SizedBox(height: 30),
              Container(
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff8743D3),
                ),
              ),
            ],
          ),
        ),
      ),
    ); // 11.9.20: working w/ scaffold / body, SafeWidget introduced
  }
}
