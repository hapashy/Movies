import 'package:dartz/dartz.dart';
import 'package:movies/error/exceptions.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/data/data_source/movie_remote_data_source.dart';
import 'package:movies/moves/domain/entyty/movie_detail_entity.dart';
import 'package:movies/moves/domain/entyty/movie_entity.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';
import 'package:movies/moves/domain/use_cases/get_movie_details_use_case.dart';

class MoviesReposImpl extends BaseMoviesRepos {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesReposImpl(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Faillure, List<MovieEntity>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFaillure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Faillure, List<MovieEntity>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFaillure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Faillure, List<MovieEntity>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFaillure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Faillure, MovieDetailEntity>> getMovieDetails(MovieDetailsParam param) async{
    final result = await baseMovieRemoteDataSource.getMovieDetails(param);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFaillure(failure.errorMessageModel.statusMessage));
    }
  }
}
