import 'package:flutter/material.dart';
import 'package:untitled/LogIn_Signup/LogIn.dart';
import 'package:untitled/WelcomePage/MainPage.dart';

final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey();
class TabBarDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          bottomNavigationBar: const BottomAppBar(
            color: Colors.black,
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              WillPopScope(
                onWillPop: () async {
                  return !(await homeNavigatorKey.currentState!.maybePop());
                },
                child: Navigator(
                  key: homeNavigatorKey,
                  onGenerateRoute: (settings) {
                    return MaterialPageRoute(
                      builder: (context) => IconButton(
                          icon: Icon(Icons.directions_car),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DiscoverPage()))),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class newPage extends StatelessWidget {
  const newPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new page"),
      ),
      body: Center(child: Icon(Icons.add)),
    );
  }
}