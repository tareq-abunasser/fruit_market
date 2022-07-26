import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


@LazySingleton()
class PreferencesManager {
  final SharedPreferences sharedPreferences;

  PreferencesManager({
    required this.sharedPreferences,
  });

  Future<bool> saveData({required String key, required dynamic data}) async {
    if (data is bool) return await sharedPreferences.setBool(key, data);
    if (data is String) return await sharedPreferences.setString(key, data);
    if (data is int) return await sharedPreferences.setInt(key, data);
    return await sharedPreferences.setDouble(key, data);
  }

  getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  Future<void> clearAllData() async {
    sharedPreferences.clear();
  }
}
