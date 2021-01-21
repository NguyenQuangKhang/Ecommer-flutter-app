import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class RecommendProductState extends Equatable {
  const RecommendProductState();

  @override
  List<Object> get props => [];
}

class RecommendProductInitial extends RecommendProductState {}

class RecommendProductLoading extends RecommendProductState {}

class RecommendProductFailure extends RecommendProductState {
  final String error;

  const RecommendProductFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}


class RecommendProductSuccess extends RecommendProductState {}
