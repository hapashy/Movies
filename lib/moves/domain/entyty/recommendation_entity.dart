import 'package:equatable/equatable.dart';

class RecommendationEntity extends Equatable {
  final String? backdropPath;
  final int id;

  const RecommendationEntity({
     this.backdropPath,
    required this.id,
  });

  @override
  List<Object?> get props => [backdropPath, id];
}
