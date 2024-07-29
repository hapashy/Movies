import 'package:dartz/dartz.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/entyty/movie_entity.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepos baseMoviesRepos;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepos);

  Future<Either<Faillure, List<MovieEntity>>> execute() async {
    return await baseMoviesRepos.getNowPlayingMovies();
  }
}
