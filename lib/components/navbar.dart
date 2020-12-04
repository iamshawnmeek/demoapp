import 'package:demoapp/rubric_colors.dart';
import 'package:demoapp/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void updateActiveRoute(String activeRoute) {
    setState(() => activeRouteName = activeRoute);
  }

  @override
  Widget build(BuildContext context) {
  final ref = //ended on 12.4.20
    return BottomAppBar(
      notchMargin: 10.0,
      color: Color(0xff2F035F),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavIcon(
            defaultAssetName: 'assets/images/icon-dashboard-default.svg',
            activeAssetName: 'assets/images/icon-dashboard-active.svg',
            semanticsLabel: 'rubric dashboard icon',
            iconText: 'dashboard',
            routeName: 'dashboard',
            isActive: activeRouteName == 'dashboard',
            onTap: updateActiveRoute,
          ),
          NavIcon(
            defaultAssetName: 'assets/images/icon-rubrics-default.svg',
            activeAssetName: 'assets/images/icon-rubrics-active.svg',
            semanticsLabel: 'rubric rubrics icon',
            iconText: 'rubrics',
            routeName: 'rubrics',
            isActive: activeRouteName == 'rubrics',
            onTap: updateActiveRoute,
          ),
          Spacer(),
          NavIcon(
            defaultAssetName: 'assets/images/icon-favorites-default.svg',
            activeAssetName: 'assets/images/icon-favorites-active.svg',
            semanticsLabel: 'rubric favorites icon',
            iconText: 'favorites',
            routeName: 'favorites',
            isActive: activeRouteName == 'favorites',
            onTap: updateActiveRoute,
          ),
          NavIcon(
            defaultAssetName: 'assets/images/icon-recess-default.svg',
            activeAssetName: 'assets/images/icon-recess-active.svg',
            semanticsLabel: 'rubric recess icon',
            iconText: 'recess',
            routeName: 'recess',
            isActive: activeRouteName == 'recess',
            onTap: updateActiveRoute,
          ),
        ],
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}

class NavIcon extends StatelessWidget {
  final String defaultAssetName;
  final String activeAssetName;
  final String semanticsLabel;
  final String iconText;
  final String routeName;
  final bool isActive;
  final void Function(String) onTap;

  const NavIcon({
    Key key,
    @required this.defaultAssetName,
    @required this.activeAssetName,
    @required this.semanticsLabel,
    @required this.iconText,
    @required this.routeName,
    @required this.isActive,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap(routeName);
            Navigator.of(context).pushReplacementNamed(routeName);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12),
              SvgPicture.asset(
                isActive ? activeAssetName : defaultAssetName,
                semanticsLabel: semanticsLabel,
                width: 32,
                height: 28,
                alignment: Alignment.center,
              ),
              SizedBox(height: 12),
              Text(
                iconText,
                style: TextStyle(
                  fontSize: 12,
                  color: isActive ? goldenyellow : Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Avenir-Black',
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
