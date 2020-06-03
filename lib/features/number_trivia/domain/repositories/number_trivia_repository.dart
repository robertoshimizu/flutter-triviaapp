import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

// An abstract class is a type of class that cannot be instantiated
// directly which means an object cannot be created from it.
// Normal classes can extend the abstract class, but they have
// to override every abstract method.

// We use Either to identify failures right here as a alternative to
// try and catch methods
// This type comes from dartz package
// Either<Left, Right>, which we can address diferently.

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
