import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:triviaapp/core/error/failures.dart';
import 'package:triviaapp/core/usecases/usecase.dart';
import 'package:triviaapp/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:triviaapp/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  // Apparently the Future method requires a "execute" method sintax.
  // But it casn be replaced by a call method.https://resocoder.com/2019/09/02/flutter-tdd-clean-architecture-course-3-domain-layer-refactoring/
  //Future<Either<Failure, NumberTrivia>> execute({@required int number}) async {
  //  return await repository.getConcreteNumberTrivia(number);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}
