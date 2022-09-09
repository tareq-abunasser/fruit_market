import 'package:dartz/dartz.dart';
import '../../../../core/entities/failures.dart';
import '../entities/subcategory.dart';

//The naive way would be to return  Future<HomeFailure> from the methods.
// This, however, would force us to use null whenever a failure doesn't occur
//It's much better to use our trusted friend called Either where we pass around failures inside the Left side of it.
// But what are we going to put into the Right side?
// Can we create something like Either<HomeFailure, void>?
//No. Dart's void is only a keyword, not a type, and it cannot be used as a generic type parameter.
// Swift's Void is actually a type, so you can use it in generics.
// Kotlin uses Unit which is also a regular type.
// Thankfully, the dartz package provides us, Dart programmers, with a Unit type too!

abstract class ISubcategoryRepository {
  Future<Either<Failure, List<Subcategory>>> getSubcategories(
      {String? parentId, int? limit, String? lastSubcategoryId});
}
