import 'package:demoapp/enums.dart';
import 'package:demoapp/rubric_colors.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  final FlowController<BodyContent> flowController;

  const NavBar({@required this.flowController});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    widget.flowController.addListener(_rebuild);
    super.initState();
  }

  @override
  void dispose() {
    if (mounted) widget.flowController.removeListener(_rebuild);
    super.dispose();
  }

  void _rebuild() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final activeRouteName = widget.flowController.state;
    final updateActiveRoute = (BodyContent activeRoute) {
      widget.flowController.update((_) => activeRoute);
    };

    return BottomAppBar(
      notchMargin: 10.0,
      color: Color(0xff2F035F),
      child: Row(
        children: [
          NavIcon(
            defaultAssetName: 'assets/images/icon-dashboard-default.svg',
            activeAssetName: 'assets/images/icon-dashboard-active.svg',
            semanticsLabel: 'rubric dashboard icon',
            iconText: 'dashboard',
            routeName: BodyContent.dashboard,
            isActive: activeRouteName == BodyContent.dashboard,
            onTap: updateActiveRoute,
          ),
          NavIcon(
            defaultAssetName: 'assets/images/icon-rubrics-default.svg',
            activeAssetName: 'assets/images/icon-rubrics-active.svg',
            semanticsLabel: 'rubric rubrics icon',
            iconText: 'rubrics',
            routeName: BodyContent.rubrics,
            isActive: activeRouteName == BodyContent.rubrics,
            onTap: updateActiveRoute,
          ),
          Spacer(),
          NavIcon(
            defaultAssetName: 'assets/images/icon-favorites-default.svg',
            activeAssetName: 'assets/images/icon-favorites-active.svg',
            semanticsLabel: 'rubric favorites icon',
            iconText: 'favorites',
            routeName: BodyContent.favorites,
            isActive: activeRouteName == BodyContent.favorites,
            onTap: updateActiveRoute,
          ),
          NavIcon(
            defaultAssetName: 'assets/images/icon-recess-default.svg',
            activeAssetName: 'assets/images/icon-recess-active.svg',
            semanticsLabel: 'rubric recess icon',
            iconText: 'recess',
            routeName: BodyContent.recess,
            isActive: activeRouteName == BodyContent.recess,
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
  final BodyContent routeName;
  final bool isActive;
  final void Function(BodyContent) onTap;

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
          onTap: () => onTap(routeName),
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
