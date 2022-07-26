import 'package:dartz/dartz.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../../core/entities/value_validators.dart';


class Quantity extends ValueObject<String, int> {
  @override
  final Either<ValueFailure<String>, int> value;

  factory Quantity(int input) {
    return Quantity._(
      right(input >=1? input :1),
    );
  }

  const Quantity._(this.value);
}