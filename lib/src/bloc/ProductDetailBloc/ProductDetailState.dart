

import 'package:equatable/equatable.dart';
import 'package:fashionshop/src/model/ProductDetail.dart';
import 'package:fashionshop/src/new_model/product_detailed.dart';


abstract class ProductDetailState extends Equatable {
  final ProductDetailed data;


  ProductDetailState({
    this.data,

  });



  @override
  List<Object> get props => [data];

  @override
  bool get stringify => true;
}

class ProductDetailShowState extends ProductDetailState {
  ProductDetailShowState({
    ProductDetailed data,

  }) : super(
      data: data);

}

class Initial extends ProductDetailState {
  Initial({
    ProductDetailed data,

  }) : super(
      data: data);

}
