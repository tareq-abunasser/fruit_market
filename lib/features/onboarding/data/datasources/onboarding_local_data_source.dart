import 'dart:convert';


abstract class OnOboardingLocalDataSource {
  bool isFirstTimeToOpenApp();
}

@LazySingleton(as: AccountLocalDataSource)
class AuthLocalDataSourceImpl extends AccountLocalDataSource {
  final PreferencesManager _preferencesManager;
  static const String PREF_USER_INFO = 'userInfo';
  static const String PREF_IS_FIRST_TIME_OPEN_APP = "firstTimeOpenApp";

  AuthLocalDataSourceImpl(this._preferencesManager);

  @override
  Future<void> cacheUserInfo(UserInfoDTO userInfoCache) async {
    await _preferencesManager.saveData(
        key: PREF_USER_INFO, data: json.encode(userInfoCache.toJson()));
  }

  @override
  UserInfoDTO getUserInfo() {
    final userInfo = _preferencesManager.getData(key: PREF_USER_INFO);
    if (userInfo == null) {
      throw CacheException();
    }
    return UserInfoDTO.fromJson(json.decode(userInfo));
  }

  @override
  bool isFirstTimeToOpenApp() {
    final isFirstTimeOpenApp =
        _preferencesManager.getData(key: PREF_IS_FIRST_TIME_OPEN_APP);
    if (isFirstTimeOpenApp == null) {
      _preferencesManager.saveData(
          key: PREF_IS_FIRST_TIME_OPEN_APP, data: false);
      return true;
    }
    return false;
  }
}
