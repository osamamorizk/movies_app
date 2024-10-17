import 'package:shared_preferences/shared_preferences.dart';

class CasheHelper {
  static late final SharedPreferences sharedPreferences;

  static Future casheIntialization() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return await sharedPreferences.setInt(key, value);
    }
  }

  static dynamic getData({required key}) {
    return sharedPreferences.get(key);
  }
}
