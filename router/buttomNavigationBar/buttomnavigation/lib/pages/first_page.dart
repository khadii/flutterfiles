import 'package:buttomnavigation/pages/home_page.dart';
import 'package:buttomnavigation/pages/profile_page.dart';
import 'package:buttomnavigation/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //tracking selected page
  int _selectedIndex = 0;

  final List _pages = [
//homepage
    HomePage(),

//profilepage
    ProfilePage(),

//settingspage
    SettingsPage(),
  ];
  //list of headers
  final List _Headers = [
//homepage
    Text('homepage'),

//profilepage
    Text('profilepage'),

//settingspage
    Text('settingspage')
  ];

  void _navigationBottombar(int index) {
    setState(() {
      _selectedIndex = index;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _Headers[_selectedIndex],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBottombar,
          items: [
            //home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            //profile
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            //settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
