import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class GetSubCategoryState extends Equatable {


  @override
  List<Object> get props => [];
}

class LoadCategories extends GetSubCategoryState {}
class LoadingCategory extends GetSubCategoryState {}


class InitialState extends GetSubCategoryState {}


