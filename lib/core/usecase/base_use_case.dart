import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/error/faillure.dart';

abstract class BaseUseCase<T, Param> {
  Future<Either<Faillure, T>> call(Param param);
}

class NoParam extends Equatable {
  const NoParam();
  
  @override

  List<Object?> get props => [];

  
}
