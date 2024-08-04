import 'package:equatable/equatable.dart';
import 'package:movies/moves/domain/entyty/genres_entity.dart';

class MovieDetailEntity extends Equatable {
  final int id;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final int runTime;
  final String title;
  final String voteAverage;
  final List<GenresEntity> genres;

  const MovieDetailEntity({
    required this.id,
    required this.backdropPath,
    required this.overview,
    required this.releaseDate,
    required this.runTime,
    required this.title,
    required this.voteAverage,
    required this.genres,
  });

  @override
  List<Object?> get props => [
        id,
        backdropPath,
        overview,
        releaseDate,
        runTime,
        title,
        voteAverage,
        genres
      ];
}
