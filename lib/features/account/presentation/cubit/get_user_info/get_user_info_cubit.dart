import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/entities/failures.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_user_info.dart';

part 'get_user_info_state.dart';
part 'get_user_info_cubit.freezed.dart';

@injectable
class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit(this._getUserInfo) : super(const GetUserInfoState.initial());

  final GetUserInfo _getUserInfo;

  static GetUserInfoCubit getInstance(context) {
    return BlocProvider.of(context);
  }

  getProfileUserInfo()async{
    print("getProfileUserInfo");
    emit(const GetUserInfoState.getInfoLoadInProgress());
    await _getUserInfo().then((authFailureOrSuccessOption) {
      authFailureOrSuccessOption.fold(() => emit(const GetUserInfoState.noInfo()), (failureOrSuccess) {
        failureOrSuccess.fold((failure) => emit(GetUserInfoState.getInfoFailure(failure)),
                (userInfo) => emit( GetUserInfoState.getInfoSuccess(userInfo)));
      } );

    });
  }
}
