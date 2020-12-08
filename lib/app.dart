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
                MaterialPage(child: Landing1()),
              if (bodyContent == BodyContent.rubrics)
                MaterialPage(child: Landing2()),
              if (bodyContent == BodyContent.favorites)
                MaterialPage(child: Landing3()),
              if (bodyContent == BodyContent.recess)
                MaterialPage(child: Landing3()),
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
