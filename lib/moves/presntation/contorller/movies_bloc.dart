import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/moves/data/data_source/movie_remote_data_source.dart';
import 'package:movies/moves/data/repos_Implm/movies_repos_impl.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';
import 'package:movies/moves/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies/moves/presntation/contorller/movies_event.dart';
import 'package:movies/moves/presntation/contorller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      BaseMovieRemoteDataSource baseMovieRemoteDataSource =
          MovieRemoteDataSource();
      print(baseMovieRemoteDataSource.hashCode);
      BaseMoviesRepos baseMoviesRepos =
          MoviesReposImpl(baseMovieRemoteDataSource);
      print(baseMoviesRepos.hashCode
      );
      final result =
          await GetNowPlayingMoviesUseCase(baseMoviesRepos).execute();
      emit(const MoviesState(nowPLayingState: RequestState.loaded));
      result.fold(
          (l) => emit(
                MoviesState(
                  nowPLayingState: RequestState.error,
                  nowPlayingMessage: l.message,
                ),
              ),
          (r) => emit(MoviesState(
                nowPlayingMovies: r,
                nowPLayingState: RequestState.loaded,
              )));
    });
  }
}
