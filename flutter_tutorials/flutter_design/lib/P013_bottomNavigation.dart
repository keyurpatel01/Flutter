import 'package:flutter/material.dart';
import 'package:flutter_design/Pages/chat.dart';
import 'package:flutter_design/Pages/like.dart';
import 'package:flutter_design/Pages/setting.dart';
import 'package:flutter_design/pages/home.dart';
import 'package:flutter_design/pages/search.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _currentIndex = 0;

  List pages = [
    HomePage(),
    SearchPage(),
    LikesPage(),
    ChatPage(),
    SettingPage(),
  ];

  void bottomMenu(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigation'),
        backgroundColor: Colors.green,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: bottomMenu,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: 'Likes',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
