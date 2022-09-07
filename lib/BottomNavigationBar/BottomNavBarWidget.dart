import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/BottomNavigationBar/Help.dart';
import 'package:untitled/BottomNavigationBar/Notifications.dart';
import 'package:untitled/BottomNavigationBar/Settings.dart';
import 'package:untitled/WelcomePage/MainPage.dart';

class BottomNavBarContainer extends StatefulWidget {
  const BottomNavBarContainer({Key? key}) : super(key: key);

  @override
  State<BottomNavBarContainer> createState() => _BottomNavBarContainerState();
}

class _BottomNavBarContainerState extends State<BottomNavBarContainer> {

  int _selectedIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    DiscoverPage(),
    const SettingsPage(),
    const Notifications(),
    const HelpPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ]
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
            icon: _selectedIndex == 0
                ? const Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
            icon: _selectedIndex == 1
                ? const Icon(
              Icons.notifications_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            icon: _selectedIndex == 2
                ? const Icon(
              Icons.settings_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                _selectedIndex = 3;
              });
            },
            icon: _selectedIndex == 3
                ? const Icon(
              Icons.question_mark,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.question_mark_sharp,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
