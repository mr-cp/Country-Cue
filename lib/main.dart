import 'package:country_cue/screens/view/detail_screen.dart';
import 'package:country_cue/screens/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Country Cue',
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeScreen(),
          '/detail': (context) => const DetailScreen()
        });
  }
}
