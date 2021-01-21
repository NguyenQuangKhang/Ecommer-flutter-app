import 'dart:convert';

import 'package:fashionshop/src/bloc/ProductDetailBloc/ProductDetailEvent.dart';
import 'package:fashionshop/src/bloc/ProductDetailBloc/ProductDetailState.dart';
import 'package:fashionshop/src/new_model/product_detailed.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailed productDetail;

  @override
  // TODO: implement initialState
  ProductDetailState get initialState => Initial(data: null);

  @override
  Stream<ProductDetailState> mapEventToState(event) async* {
    if (event is ProductDetailLoadEvent) {
      final response = await http.get("http://192.168.1.227:8080/api/v1/product/" +
          event.id.toString());

      productDetail =ProductDetailed.fromJson(json.decode(response.body));
      yield ProductDetailShowState(data: productDetail);
    }
    if (event is AddtocartEvent) {
      yield ProductDetailShowState(data: productDetail);
    }

    if (event is FavoriteTapEvent) {}
  }
}
