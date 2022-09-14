import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/entities/failures.dart';
import '../../../../routes/mobile_app_pages.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final Failure _failure;

  const CriticalFailureDisplay(
    this._failure, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            _failure.maybeMap(
              serverError: (_) => 'Server Error',
              internet: (_) => 'check your internet',
              orElse: () => 'Unexpected error. \nPlease, contact support.',
            ),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              print('Sending email!');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Get.offAndToNamed(MobileRoutes.HOME);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.refresh_sharp),
                SizedBox(width: 4),
                Text('reload page'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
