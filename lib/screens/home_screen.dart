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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, color: Colors.black),
                        SizedBox(
                            width: 8), // Add spacing between icon and ColorTab
                        ColorTab(color: Colors.red),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications, color: Colors.black),
                        SizedBox(width: 8),
                        ColorTab(color: Colors.green),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.map, color: Colors.black),
                        SizedBox(width: 8),
                        ColorTab(color: Colors.blue),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.people, color: Colors.black),
                        SizedBox(width: 8),
                        ColorTab(color: Colors.yellow),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, color: Colors.black),
                        SizedBox(width: 8),
                        ColorTab(color: Colors.orange),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                          color: Colors.white))),
            ),
            ColoredBox(
              color: Colors.green,
              child: Center(
                  child: Text('2nd part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            ColoredBox(
              color: Colors.blue,
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
                          color: Colors.white))),
            ),
            ColoredBox(
              color: Colors.orange,
              child: Center(
                  child: Text('5th part',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
