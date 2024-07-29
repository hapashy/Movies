import 'package:dartz/dartz.dart';
import 'package:movies/error/faillure.dart';

import '../entyty/movie_entity.dart';

abstract class BaseMoviesRepos {
  Future<Either<Faillure, List<MovieEntity>>> getNowPlayingMovies();
  Future<Either<Faillure, List<MovieEntity>>> getPopularMovies();
  Future<Either<Faillure, List<MovieEntity>>> getTopRatedMovies();
}
