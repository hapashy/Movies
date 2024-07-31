import 'package:dartz/dartz.dart';
import 'package:movies/error/faillure.dart';

import '../../moves/domain/entyty/movie_entity.dart';

abstract class BaseUseCase<T> {
  Future<Either<Faillure, T>> call();
}
