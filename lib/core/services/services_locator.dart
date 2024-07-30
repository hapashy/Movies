import 'package:get_it/get_it.dart';
import 'package:movies/moves/data/data_source/movie_remote_data_source.dart';
import 'package:movies/moves/data/repos_Implm/movies_repos_impl.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';
import 'package:movies/moves/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies/moves/presntation/contorller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));

    /// Repository
    sl.registerLazySingleton<BaseMoviesRepos>(() => MoviesReposImpl(sl()));

    /// Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
