import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfoService {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfoService)
class NetworkInfoServiceImpl implements NetworkInfoService {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoServiceImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
