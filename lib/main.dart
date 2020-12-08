import 'package:demoapp/app.dart';
import 'package:demoapp/enums.dart';
import 'package:demoapp/splash.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff6E27BC),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color(0xff6E27BC),
        ),
        home: FlowBuilder<MainFlow>(
          state: MainFlow.splash,
          onGeneratePages: (mainFlow, pages) {
            return [
              if (mainFlow == MainFlow.splash) MaterialPage(child: Splash()),
              if (mainFlow == MainFlow.app) MaterialPage(child: App()),
            ];
          },
        ),
      ),
    );
  }
}
