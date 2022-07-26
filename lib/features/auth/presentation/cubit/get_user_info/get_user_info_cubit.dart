import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/user_info.dart';
import '../../../domain/faliures/auth_failure.dart';
import '../../../domain/repositories/i_auth_repository.dart';

part 'get_user_info_state.dart';
part 'get_user_info_cubit.freezed.dart';

@injectable
class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit(this._authRepository) : super(const GetUserInfoState.initial());

  final IAuthRepository _authRepository;

  static GetUserInfoCubit getInstance(context) {
    return BlocProvider.of(context);
  }

  getProfileUserInfoInfo()async{
    await _authRepository.getUserInfo().then((authFailureOrSuccessOption) {
      print("just for test : $authFailureOrSuccessOption");
      authFailureOrSuccessOption.fold(() => emit(const GetUserInfoState.noInfo()), (failureOrSuccess) {
        failureOrSuccess.fold((failure) => emit(GetUserInfoState.getInfoFailure(failure)),
                (userInfo) => emit( GetUserInfoState.getInfoSuccess(userInfo)));
      } );

    });
  }
}
