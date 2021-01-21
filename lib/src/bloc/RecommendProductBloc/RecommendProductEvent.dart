import 'package:fashionshop/src/model/Filter.dart';


import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class RecommendProductEvent extends Equatable {
  const RecommendProductEvent();
}

class RecommendProductLoadEvent extends RecommendProductEvent {


final int userId;

RecommendProductLoadEvent({this.userId});

  @override
  List<Object> get props => [];

  @override
  String toString() =>
      'ProductButtonPressed { ... }';
}

