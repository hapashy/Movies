import 'package:equatable/equatable.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/moves/domain/entyty/movie_entity.dart';

class MoviesState extends Equatable {
  final List<MovieEntity> nowPlayingMovies;
  final RequestState nowPLayingState;
  final String nowPlayingMessage;

  const MoviesState(
      {this.nowPlayingMovies = const [],
      this.nowPLayingState = RequestState.loading,
      this.nowPlayingMessage = ''});

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPLayingState,
        nowPlayingMessage,
      ];
}
