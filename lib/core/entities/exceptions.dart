class ServerException implements Exception {
  String? cause;

  ServerException([this.cause]);
}

class CacheException implements Exception {
  String? cause;

  CacheException([this.cause]);
}

class UnAuthenticatedException implements Exception {}

class InternetException implements Exception {}
