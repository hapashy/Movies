part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetailEntity,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsMessage = '',
    this.recommendationEntity = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });

  final MovieDetailEntity? movieDetailEntity;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  final List<RecommendationEntity> recommendationEntity;
  final RequestState recommendationState;
  final String recommendationMessage;

  MovieDetailsState copyWith({
    MovieDetailEntity? movieDetailEntity,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<RecommendationEntity>? recommendationEntity,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetailEntity: movieDetailEntity ?? this.movieDetailEntity,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendationEntity: recommendationEntity ?? this.recommendationEntity,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage: recommendationMessage ??
          this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props =>
      [
        movieDetailEntity,
        movieDetailsState,
        movieDetailsMessage,
        recommendationEntity,
        recommendationState,
        recommendationMessage,
      ];

}
