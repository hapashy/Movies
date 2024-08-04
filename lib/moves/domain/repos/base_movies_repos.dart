import 'package:dartz/dartz.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/entyty/movie_detail_entity.dart';
import 'package:movies/moves/domain/use_cases/get_movie_details_use_case.dart';

import '../entyty/movie_entity.dart';

abstract class BaseMoviesRepos {
  Future<Either<Faillure, List<MovieEntity>>> getNowPlayingMovies();
  Future<Either<Faillure, List<MovieEntity>>> getPopularMovies();
  Future<Either<Faillure, List<MovieEntity>>> getTopRatedMovies();
  Future<Either<Faillure, MovieDetailEntity>> getMovieDetails(MovieDetailsParam param);
}
