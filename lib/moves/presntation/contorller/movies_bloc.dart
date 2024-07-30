import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/moves/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies/moves/presntation/contorller/movies_event.dart';
import 'package:movies/moves/presntation/contorller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
     
      final result = await getNowPlayingMoviesUseCase.execute();
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
