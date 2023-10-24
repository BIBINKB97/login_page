import 'package:flutter/material.dart';
import 'package:login_page/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final user = await MyApp.checkUser();
  runApp(MyApp(
    user: user,
  ));
}

  class MyApp extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bool user;
  const MyApp({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Demo App",
        home: user ? Home() : Login());
  }

  static Future<bool> checkUser() async {
    final sharedprf = await SharedPreferences.getInstance();
    final user = sharedprf.getBool('value');
    if (user == null || user == false) {
      return false;
    } else {
      return true;
    }
  }
}
