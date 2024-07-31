import 'package:equatable/equatable.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/moves/domain/entyty/movie_entity.dart';

class MoviesState extends Equatable {
  final List<MovieEntity> nowPlayingMovies;
  final RequestState nowPLayingState;
  final String nowPlayingMessage;
  final List<MovieEntity> popularMovies;
  final RequestState popularState;
  final String popularMessage;
  final List<MovieEntity> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  const MoviesState(
      {this.topRatedMovies = const [],
      this.topRatedState = RequestState.loading,
      this.topRatedMessage = '',
      this.popularMovies = const [],
      this.popularState = RequestState.loading,
      this.popularMessage = '',
      this.nowPlayingMovies = const [],
      this.nowPLayingState = RequestState.loading,
      this.nowPlayingMessage = ''});

  MoviesState copyWith({
    List<MovieEntity>? nowPlayingMovies,
    RequestState? nowPLayingState,
    String? nowPlayingMessage,
    List<MovieEntity>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<MovieEntity>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPLayingState: nowPLayingState ?? this.nowPLayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.nowPlayingMessage,
    );
  }

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPLayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedMovies,
        topRatedState,
        topRatedMessage,
      ];
}
