import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  static const spacing = 30.0;

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
          //mainAxisAlignment: MainAxisAlignment.start,
          // super dope, could also be .center to center up
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          padding: const EdgeInsets.all(spacing),
          child: ListView(
            children: <Widget>[
              SizedBox(height: spacing),
              RubricCard(),
              SizedBox(height: spacing),
              Row(
                children: <Widget>[
                  Expanded(child: RubricCard()),
                  SizedBox(width: spacing),
                  Expanded(child: RubricCard()),
                ],
              ),
              SizedBox(height: spacing),
              RubricCard(),
            ],
          ),
        ),
      ),
    ); // 11.9.20: working w/ scaffold / body, SafeWidget introduced
  }
}

class RubricCard extends StatelessWidget {
  const RubricCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff8743D3),
      ),
    );
  }
}
