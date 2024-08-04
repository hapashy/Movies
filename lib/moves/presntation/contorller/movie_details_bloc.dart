import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/moves/domain/entyty/movie_detail_entity.dart';
import 'package:movies/moves/domain/entyty/recommendation_entity.dart';
import 'package:movies/moves/domain/use_cases/get_movie_details_use_case.dart';
import 'package:movies/moves/domain/use_cases/get_recommendation_usecase.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase , this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMoviesDetails);
    on<GetMovieRecommendation>(_getRecommendation);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase ;

  FutureOr<void> _getMoviesDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await getMovieDetailsUseCase(MovieDetailsParam(
      movieId: event.id,
    ));
    result.fold(
        (l) => emit(state.copyWith(
              movieDetailsState: RequestState.error,
              movieDetailsMessage: l.message,
            )),
        (r) => emit(
              state.copyWith(
                movieDetailEntity: r,
                movieDetailsState: RequestState.loaded,
              ),
            ));
  }

  FutureOr<void> _getRecommendation(
      GetMovieRecommendation event, Emitter<MovieDetailsState> emit) async{
    final result = await getRecommendationUseCase(RecommendationParam(
    event.id,
    ));
    result.fold(
            (l) => emit(state.copyWith(
          recommendationState: RequestState.error,
          recommendationMessage: l.message,
        )),
            (r) => emit(
          state.copyWith(
            recommendationEntity: r,
            recommendationState: RequestState.loaded,
          ),
        ));
  }
}
