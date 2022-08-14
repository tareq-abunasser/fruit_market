import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../repositories/i_onboarding_repository.dart';

@LazySingleton()
class GetIfUserFirstTimeToOpenApp {
  final IOnBoardingRepository _repository;

  GetIfUserFirstTimeToOpenApp(this._repository);

  bool call() {
    return _repository.isFirstTimeOpenApp();
  }
}
