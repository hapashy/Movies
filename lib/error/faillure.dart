import 'package:equatable/equatable.dart';

abstract class Faillure extends Equatable {
  final String message;

  const Faillure(this.message);

  @override
  List<Object> get props => [message];
}


class ServerFaillure extends Faillure {
  const ServerFaillure(super.message);
  
}

class LocalFaillure extends Faillure {
const  LocalFaillure(super.message);

}

