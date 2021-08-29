import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/input_page.dart';

const appBackgroundColor = Color(0xFF024263B);
const appPrimaryColor = Color(0xFF24263B);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new BMICalculator());
  });
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: appPrimaryColor,
        scaffoldBackgroundColor: appBackgroundColor,
      ),
      home: InputPage(),
    );
  }
}

