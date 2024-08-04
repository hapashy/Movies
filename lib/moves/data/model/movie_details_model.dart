import 'package:movies/moves/data/model/genres_model.dart';
import 'package:movies/moves/data/model/movie_model.dart';
import 'package:movies/moves/domain/entyty/movie_detail_entity.dart';

class MovieDetailsModel extends MovieDetailEntity {
  const MovieDetailsModel({
    required super.id,
    required super.backdropPath,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
    required super.genres,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        id: json["id"],
        backdropPath: json["backdrop_path"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        runtime: json["runtime"],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        genres: List<GenresModel>.from(json["genres"].map((x) => GenresModel.fromJson(x))),
      );
}
