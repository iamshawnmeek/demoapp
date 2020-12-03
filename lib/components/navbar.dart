import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ),
          NavIcon(
            defaultAssetName: 'assets/images/icon-rubrics-default.svg',
            activeAssetName: 'assets/images/icon-rubrics-active.svg',
            semanticsLabel: 'rubric rubrics icon',
            iconText: 'rubrics',
            routeName: 'rubrics',
          ),
          Spacer(),
          NavIcon(
            defaultAssetName: 'assets/images/icon-favorites-default.svg',
            activeAssetName: 'assets/images/icon-favorites-active.svg',
            semanticsLabel: 'rubric favorites icon',
            iconText: 'favorites',
            routeName: 'favorites',
          ),
          NavIcon(
            defaultAssetName: 'assets/images/icon-recess-default.svg',
            activeAssetName: 'assets/images/icon-recess-active.svg',
            semanticsLabel: 'rubric recess icon',
            iconText: 'recess',
            routeName: 'recess',
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

  const NavIcon({
    Key key,
    @required this.defaultAssetName,
    @required this.activeAssetName,
    @required this.semanticsLabel,
    @required this.iconText,
    @required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.of(context).pushReplacementNamed(routeName),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12),
              SvgPicture.asset(
                defaultAssetName,
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
                  color: Colors.white,
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
