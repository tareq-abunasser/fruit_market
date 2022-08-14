import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/i_onboarding_repository.dart';
import '../datasources/onboarding_local_data_source.dart';

@LazySingleton(as: IOnBoardingRepository)
class OnBoardingRepository implements IOnBoardingRepository {
  final OnBoardingLocalDataSource _onBoardingLocalDataSourceImpl;

  OnBoardingRepository(
    this._onBoardingLocalDataSourceImpl,
  );

  @override
  bool isFirstTimeOpenApp() {
    return _onBoardingLocalDataSourceImpl.isFirstTimeToOpenApp();
  }
}
