import 'package:flutter/material.dart';
import 'package:storeapp/constans/strings.dart';
import 'package:storeapp/screens/home%20screen/home_screen.dart';
import 'package:storeapp/screens/update_proudct_screen/update_proudct_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        homescreen: (context) => const HomeScreen(),
        updateProudctscreen: (context) => const UbdateProudctscreen(),
      },
      initialRoute: homescreen,
    );
  }
}
