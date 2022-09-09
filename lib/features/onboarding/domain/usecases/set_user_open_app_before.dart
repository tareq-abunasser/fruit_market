import 'package:injectable/injectable.dart';

import '../repositories/i_onboarding_repository.dart';

@LazySingleton()
class SetUserOpenAppBefore {
  final IOnBoardingRepository _repository;

  SetUserOpenAppBefore(this._repository);

  void call() {
    return _repository.setUserOpenAppBefore();
  }
}
