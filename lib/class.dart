import 'package:shared_preferences/shared_preferences.dart';
class A {
  static Future<void> setUser(bool log) async {
    final sharedprf = await SharedPreferences.getInstance();
    sharedprf.setBool("value", log);
  }
}
