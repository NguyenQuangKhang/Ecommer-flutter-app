import 'dart:convert';

import 'package:fashionshop/src/config/GraphQLConfiguration.dart';
import 'package:fashionshop/src/graphql/QueryMutation.dart';
import 'package:fashionshop/src/new_model/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'RecommendProductEvent.dart';
import 'RecommendProductState.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

class RecommendProductBloc
    extends Bloc<RecommendProductEvent, RecommendProductState> {
  List<Product> data;

  @override
  // TODO: implement initialState
  RecommendProductState get initialState => RecommendProductInitial();

  @override
  Stream<RecommendProductState> mapEventToState(event) async* {
    if (event is RecommendProductLoadEvent) {
      try {
        yield RecommendProductLoading();
        final response = await http.get("http://192.168.1.227:8080/api/v1/recommend/top-rating/"+event.userId.toString());
        if(response.statusCode==200)
          {
            data = json.decode(response.body).cast<Map<String,dynamic>>().map<Product>((json) => Product.fromJson(json)).toList();
            print(data.length);
            yield RecommendProductSuccess();
          }
        else yield RecommendProductFailure(error: "fail to recommend");
      } catch (e) {
        yield RecommendProductFailure(error: e.toString());
      }
    }
  }
}
