import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/usecase/base_use_case.dart';
import 'package:movies/error/faillure.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';

import '../entyty/recommendation_entity.dart';

class GetRecommendationUseCase
    extends BaseUseCase<List<RecommendationEntity>,RecommendationParam> {
 final BaseMoviesRepos baseMoviesRepos;

  GetRecommendationUseCase( this.baseMoviesRepos);

  @override
  Future<Either<Faillure, List<RecommendationEntity>>> call(RecommendationParam param) async {
    return  await  baseMoviesRepos.getRecommendation(param);
  }

  }

class RecommendationParam extends Equatable {
  final int id;

  const RecommendationParam(this.id);

  @override
  List<Object> get props => [id];
}