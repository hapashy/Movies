import 'package:dartz/dartz.dart';
import 'package:movies/error/faillure.dart';


abstract class BaseUseCase<T> {
  Future<Either<Faillure, T>> call();
}
