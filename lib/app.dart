import 'package:demoapp/components/navbar.dart';
import 'package:demoapp/enums.dart';
import 'package:demoapp/landing_1.dart';
import 'package:demoapp/landing_2.dart';
import 'package:demoapp/landing_3.dart';
import 'package:demoapp/rubric_colors.dart';
import 'package:demoapp/state.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flowController = context.read(flowControllerRef);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: FlowBuilder<BodyContent>(
          controller: flowController,
          onGeneratePages: (bodyContent, pages) {
            return [
              if (bodyContent == BodyContent.dashboard)
                MaterialPage(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Landing1(),
                  ),
                  key: ValueKey('Landing1'),
                ),
              if (bodyContent == BodyContent.rubrics)
                MaterialPage(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Landing2(),
                  ),
                  key: ValueKey('Landing2'),
                ),
              if (bodyContent == BodyContent.favorites)
                MaterialPage(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Landing3(),
                  ),
                  key: ValueKey('Landing3a'),
                ),
              if (bodyContent == BodyContent.recess)
                MaterialPage(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Landing3(),
                  ),
                  key: ValueKey('Landing3b'),
                ),
            ];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: goldenyellow,
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavBar(flowController: flowController),
    );
  }
}
