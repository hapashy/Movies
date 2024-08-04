import 'package:movies/moves/domain/entyty/recommendation_entity.dart';

class RecommendationModel extends RecommendationEntity {
  const RecommendationModel({
     super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backdropPath: json["backdrop_path"] ?? 'https://www.its.ac.id/tmesin/wp-content/uploads/sites/22/2022/07/no-image.png',
        id: json["id"],
      );
}
