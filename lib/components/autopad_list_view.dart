import 'package:flutter/material.dart';

class AutopadListView extends StatelessWidget {
  final List<Widget> children;

  AutopadListView({
    @required this.children,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children.map(
        (child) {
          if (child is NoPad) {
            return child;
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: child,
            );
          }
        },
      ).toList(),
    );
  }
}

class NoPad extends StatelessWidget {
  final Widget child;

  const NoPad({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => child;
}
