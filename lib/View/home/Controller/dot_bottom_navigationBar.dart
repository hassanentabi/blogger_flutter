import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class DotBottomNavigationBar extends StatefulWidget {
  const DotBottomNavigationBar({super.key});

  @override
  State<DotBottomNavigationBar> createState() => _DotBottomNavigationBarState();
}

enum _SelectedTab { home, search, bookmark, settings }

const Color SelectColor = Colors.black;

class _DotBottomNavigationBarState extends State<DotBottomNavigationBar> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DotNavigationBar(
      //margin: EdgeInsets.only(left: 10, right: 10),
      currentIndex: _SelectedTab.values.indexOf(_selectedTab),
      dotIndicatorColor: Colors.white,
      unselectedItemColor: Colors.grey[300],
      splashBorderRadius: 50,
      borderRadius: 16,
      boxShadow: const [
        BoxShadow(
          color: Colors.grey, // Shadow color
          blurRadius: 6, // Spread of the shadow
          offset: Offset(0, 3), // Offset of the shadow
        ),
      ],
      // enableFloatingNavBar: false,
      onTap: _handleIndexChanged,
      items: [
        /// Home
        DotNavigationBarItem(
          icon: Icon(Icons.home),
          selectedColor: SelectColor,
        ),

        /// search
        DotNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          selectedColor: SelectColor,
        ),

        /// bookmark
        DotNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          selectedColor: SelectColor,
        ),

        /// settings
        DotNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          selectedColor: SelectColor,
        ),
      ],
    );
  }
}
