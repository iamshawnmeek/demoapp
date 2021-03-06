import 'package:demoapp/components/navbar.dart';
import 'package:demoapp/enums.dart';
import 'package:demoapp/fade_in_page.dart';
import 'package:demoapp/landing_1.dart';
import 'package:demoapp/landing_2.dart';
import 'package:demoapp/landing_3.dart';
import 'package:demoapp/landing_4.dart';
import 'package:demoapp/landing_5.dart';
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
                FadeInPage(child: Landing1()),
              if (bodyContent == BodyContent.rubrics)
                FadeInPage(child: Landing2()),
              if (bodyContent == BodyContent.favorites)
                FadeInPage(child: Landing3()),
              if (bodyContent == BodyContent.recess)
                FadeInPage(child: Landing4()),
            ];
          },
        ),
      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: goldenyellow,
          foregroundColor: Color(0xFF6E27BC),
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => Landing5());
          },
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavBar(flowController: flowController),
    );
  }
}
