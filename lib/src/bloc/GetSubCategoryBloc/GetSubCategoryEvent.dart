import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class GetSubCategoryEvent extends Equatable {}



class GetSubCatInitiateEvent extends GetSubCategoryEvent {
 final int parentId;

 GetSubCatInitiateEvent({this.parentId});
  @override
  List<Object> get props => [];

  @override
  String toString() => 'LoginButtonPressed {  }';
}
