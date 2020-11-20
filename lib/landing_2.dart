import 'package:demoapp/rubric_card.dart';
import 'package:flutter/material.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Landing2 extends StatelessWidget {
  // static const spacing = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 270,
            child: ListView(
              // able to scroll vert
              scrollDirection: Axis.horizontal,
              children: [
                RubricCard(), //create a new widget that houses these, 11.19
                SizedBox(width: 30),
                RubricCard(),
                SizedBox(width: 30),
                RubricCard(),
                SizedBox(width: 30),
                RubricCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget buildFloatingSearchBar(BuildContext context) {
//   final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

//   return FloatingSearchBar(
//     hint: 'Search...',
//     scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
//     transitionDuration: const Duration(milliseconds: 800),
//     transitionCurve: Curves.easeInOut,
//     physics: const BouncingScrollPhysics(),
//     axisAlignment: isPortrait ? 0.0 : -1.0,
//     openAxisAlignment: 0.0,
//     maxWidth: isPortrait ? 600 : 500,
//     debounceDelay: const Duration(milliseconds: 500),
//     onQueryChanged: (query) {
//       // Call your model, bloc, controller here.
//     },
//     // Specify a custom transition to be used for
//     // animating between opened and closed stated.
//     transition: CircularFloatingSearchBarTransition(),
//     actions: [
//       FloatingSearchBarAction(
//         showIfOpened: false,
//         child: CircularButton(
//           icon: const Icon(Icons.place),
//           onPressed: () {},
//         ),
//       ),
//       FloatingSearchBarAction.searchToClear(
//         showIfClosed: false,
//       ),
//     ],
//     builder: (context, transition) {
//       return ClipRRect(
//         borderRadius: BorderRadius.circular(8),
//         child: Material(
//           color: Colors.white,
//           elevation: 4.0,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: Colors.accents.map((color) {
//               return Container(height: 112, color: color);
//             }).toList(),
//           ),
//         ),
//       );
//     },
//   );
// }
