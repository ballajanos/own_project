import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

void main() {
  runApp(const OwnProject());
}

//flutterapp helyett own project
class OwnProject extends StatelessWidget {
  const OwnProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: strings.appTitle,
      home: HomeScreen(),
    );
  }
}
