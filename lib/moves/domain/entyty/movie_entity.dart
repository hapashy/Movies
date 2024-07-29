import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String backdropPath;
  final String title;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const MovieEntity(
      {required this.id,
      required this.backdropPath,
      required this.title,
      required this.genreIds,
      required this.overview,
      required this.releaseDate,
      required this.voteAverage});

  @override
  List<Object?> get props =>
      [id, backdropPath, title, genreIds, overview, voteAverage];
}
