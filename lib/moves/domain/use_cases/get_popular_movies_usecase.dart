import 'package:dartz/dartz.dart';
import 'package:movies/core/usecase/base_use_case.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/entyty/movie_entity.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';

class GetPopularMoviesUseCase extends BaseUseCase <List<MovieEntity>,NoParam>{
  final BaseMoviesRepos baseMoviesRepos;

  GetPopularMoviesUseCase(this.baseMoviesRepos);
  
  @override
  Future<Either<Faillure, List<MovieEntity>>> call(NoParam param)  async{
  return await baseMoviesRepos.getPopularMovies();
  }

 
  
}