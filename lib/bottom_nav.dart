import 'package:applicationlab/diu_page.dart';
import 'package:applicationlab/myprofile_page.dart';
import 'package:applicationlab/favorites_page.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //! Selected Index
  int selectedIndex = 0;

  //! Pages
  static const List pages = <Widget>[
    MyProfilePage(),
    DIUPage(),
    FavoritesPage(),
  ];

  //! Bottom Navigation Bar Code
  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],

      //! Bottom Navigation Bar Code
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'DIU',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.teal,
      ),
    );
  }
}
