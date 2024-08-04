part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetailEntity,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsMessage = '',
  });

  final MovieDetailEntity? movieDetailEntity;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  MovieDetailsState copyWith({

     MovieDetailEntity? movieDetailEntity,
     RequestState? movieDetailsState,
     String? movieDetailsMessage,
}) {
    return MovieDetailsState(
      movieDetailEntity:  movieDetailEntity ?? this.movieDetailEntity,
        movieDetailsState : movieDetailsState  ?? this.movieDetailsState,
        movieDetailsMessage : movieDetailsMessage ?? this.movieDetailsMessage,
    );

}
  @override
  List<Object?> get props => [
        movieDetailEntity,
        movieDetailsState,
        movieDetailsMessage,
      ];
}
