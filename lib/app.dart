import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questloco/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: _prefs,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GetMaterialApp(
            title: 'Questloco',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.green,
            ),
            home: HomePage(),
          );
        } else {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
