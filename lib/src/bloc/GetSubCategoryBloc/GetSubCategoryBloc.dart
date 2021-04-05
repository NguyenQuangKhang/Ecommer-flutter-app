import 'dart:async';
import 'dart:convert';

import 'package:fashionshop/src/config/GraphQLConfiguration.dart';
import 'package:fashionshop/src/graphql/QueryMutation.dart';
import 'package:fashionshop/src/model/Category.dart';
import 'package:fashionshop/src/new_model/category.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import 'GetSubCategoryEvent.dart';
import 'GetSubCategoryState.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

class GetSubCategoryBloc
    extends Bloc<GetSubCategoryEvent, GetSubCategoryState> {
  List<Category> sub_cat;

  @override
  GetSubCategoryState get initialState => LoadingCategory();

  @override
  Stream<GetSubCategoryState> mapEventToState(
    GetSubCategoryEvent event,
  ) async* {
    if (event is GetSubCatInitiateEvent) {
      yield LoadingCategory();
      final response2 = await http.get(
          "http://10.0.206.16:8080/api/v1/categories/" +
              event.parentId.toString() +
              "/sub-categories");
      sub_cat = json
          .decode(response2.body)
          .cast<Map<String, dynamic>>()
          .map<Category>((json) => Category.fromJson(json))
          .toList();
      yield LoadCategories();
    }
  }
}
