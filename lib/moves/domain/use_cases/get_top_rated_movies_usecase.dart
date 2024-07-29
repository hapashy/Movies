import 'package:dartz/dartz.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';

import '../entyty/movie_entity.dart';

class GetTopRatedMoviesUseCase{

  final BaseMoviesRepos baseMoviesRepos;

  GetTopRatedMoviesUseCase(this.baseMoviesRepos);

  Future<Either<Faillure, List<MovieEntity>>> execute()async{
    return await baseMoviesRepos.getTopRatedMovies();
  }
}