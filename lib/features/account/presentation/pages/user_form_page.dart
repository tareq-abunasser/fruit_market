import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/injection.dart';
import 'package:get/get.dart';

import '../../../../routes/mobile_app_pages.dart';
import '../cubit/complete_information_form/complete_info_form_cubit.dart';
import '../widgets/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<CompleteInfoFormCubit>(),
        child: Scaffold(
          body: CompleteInformationBody(),
        ));
  }
}
