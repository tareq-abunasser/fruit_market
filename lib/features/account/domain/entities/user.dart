import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../auth/domain/entities/value_objects.dart';
import '../../../home/domain/entities/value_objects.dart';
import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    required UniqueId id,
    required EmailAddress email,
    required ImageURL imageURL,
    required FullName name,
  }) = _User;

// Option<ValueFailure<dynamic>> get failureOption {
//   return uniqueId.value.fold((f) => some(f), (_) => none());
// }

// Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
//   return emailAddress.value.fold(
//     (l) => left(l),
//     (r) => right(unit),
//   );
// }
}