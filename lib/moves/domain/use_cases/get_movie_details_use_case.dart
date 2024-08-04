import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/usecase/base_use_case.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/entyty/movie_detail_entity.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetailEntity, MovieDetailsParam> {
  final BaseMoviesRepos baseMoviesRepos;

  GetMovieDetailsUseCase(this.baseMoviesRepos);

  @override
  Future<Either<Faillure, MovieDetailEntity>> call(MovieDetailsParam param) async {
    return await baseMoviesRepos.getMovieDetails( param);
  }
}

class MovieDetailsParam extends Equatable {
  final int movieId;

 const MovieDetailsParam({required this.movieId});
 
  @override

  List<Object?> get props => [
    movieId
  ];
  
}
