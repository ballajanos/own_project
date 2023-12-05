import 'package:flutter/material.dart';

import '../common/strings.dart' as strings;
import '../widgets/color_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(strings.homeScreenTitle),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                tabs: [
                  Tab(
                    child: Center(
                      child: ColorTab(
                        color: Colors.red,
                        width: 80,
                        height: 80,
                        icon: Icon(Icons.home, color: Colors.black),
                        child:
                            Text('Home', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: ColorTab(
                        color: Colors.green,
                        width: 80,
                        height: 80,
                        icon: Icon(Icons.notifications, color: Colors.black),
                        child: Text('Notification',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: ColorTab(
                        color: Colors.blueGrey,
                        width: 80,
                        height: 80,
                        icon: Icon(Icons.map, color: Colors.black),
                        child: Text('Location',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: ColorTab(
                        color: Colors.yellow,
                        width: 80,
                        height: 80,
                        icon: Icon(Icons.people, color: Colors.black),
                        child: Text('Friends',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: ColorTab(
                        color: Colors.orange,
                        width: 80,
                        height: 80,
                        icon: Icon(Icons.phone, color: Colors.black),
                        child: Text('Contact',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            ColoredBox(
              color: Colors.red,
              child: Center(
                  child: Text('1st part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            ),
            ColoredBox(
              color: Colors.green,
              child: Center(
                  child: Text('2nd part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            ),
            ColoredBox(
              color: Colors.blueGrey,
              child: Center(
                  child: Text('3rd part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            ColoredBox(
              color: Colors.yellow,
              child: Center(
                  child: Text('4th part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            ),
            ColoredBox(
              color: Colors.orange,
              child: Center(
                  child: Text('5th part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            ),
          ],
        ),
      ),
    );
  }
}
