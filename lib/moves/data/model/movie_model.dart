import 'package:movies/moves/domain/entyty/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({required super.id,
    required super.backdropPath,
    required super.title,
    required super.genreIds,
    required super.overview,
    required super.releaseDate,
    required super.voteAverage});

  factory MovieModel.fromJson(Map<String, dynamic> json)=>
      MovieModel(id: json ['id'],
          backdropPath: json['backdrop_path'],
          title: json['title'],
          genreIds:List<int>.from(json ['genre_ids'].map((e) => e )),
          overview: json ['overview'],
          releaseDate: json ['release_date'],
          voteAverage: json ['vote_average'].toDouble());
}
