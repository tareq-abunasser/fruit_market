import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

   Future<bool> saveData(
      {required String key, required dynamic data}) async {
    if (data is bool) return await _sharedPreferences!.setBool(key, data);
    if (data is String) return await _sharedPreferences!.setString(key, data);
    if (data is int) return await _sharedPreferences!.setInt(key, data);
    return await _sharedPreferences!.setDouble(key, data);
  }

   getData({required String key}) {
    return _sharedPreferences!.get(key);
  }

   Future<bool> removeData({required String key}) async {
    return await _sharedPreferences!.remove(key);
  }

   Future<void> clearAllData() async {
    _sharedPreferences!.clear();
  }

}
