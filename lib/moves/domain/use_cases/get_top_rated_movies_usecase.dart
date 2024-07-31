import 'package:dartz/dartz.dart';
import 'package:movies/core/usecase/base_use_case.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';

import '../entyty/movie_entity.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase <List<MovieEntity>>{

  final BaseMoviesRepos baseMoviesRepos;

  GetTopRatedMoviesUseCase(this.baseMoviesRepos);
  
  @override
  Future<Either<Faillure, List<MovieEntity>>> call() async{
  return await baseMoviesRepos.getTopRatedMovies();
  }


  }
