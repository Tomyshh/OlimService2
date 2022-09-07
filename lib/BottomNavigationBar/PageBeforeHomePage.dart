import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/BottomNavigationBar/Help.dart';
import 'package:untitled/BottomNavigationBar/Notifications.dart';
import 'package:untitled/BottomNavigationBar/Settings.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';
import 'package:untitled/WelcomePage/MainPage.dart';

final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey();

class BeforeHomePage extends StatefulWidget {
  const BeforeHomePage({Key? key}) : super(key: key);

  @override
  State<BeforeHomePage> createState() => _BeforeHomePageState();
}

class _BeforeHomePageState extends State<BeforeHomePage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                key: homeNavigatorKey,
                child: DiscoverPage(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SettingsPage(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Notifications(),
              );
            });
          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(
              child: DiscoverPage(),
            );
          });
        }
      },
    );
  }
}
