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

import 'CategoryEvent.dart';
import 'CategoryState.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  List<Category> list_cat_1 = [];
  List<Category> sub_cat = [];

  int indexSelected=0;

  @override
  CategoryState get initialState => LoadingCategory();

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is InitiateEvent) {
      yield LoadingCategory();
     final response = await   http.get("http://10.0.206.16:8080/api/v1/categories?level=1");
       list_cat_1 = json.decode(response.body).cast<Map<String,dynamic>>().map<Category>((json) => Category.fromJson(json)).toList();
       final response2= await http.get("http://10.0.206.16:8080/api/v1/categories/"+list_cat_1[0].id.toString()+ "/sub-categories");
       sub_cat = json.decode(response2.body).cast<Map<String,dynamic>>().map<Category>((json) => Category.fromJson(json)).toList();
      yield LoadCategories();

    }


    if(event is CategoryButtonPressed)
      {
        yield LoadingCategory();
        final response = await http.get("http://10.0.206.16:8080/api/v1/categories/"+event.parentId.toString()+ "/sub-categories");
        sub_cat = json.decode(response.body).cast<Map<String,dynamic>>().map<Category>((json) => Category.fromJson(json)).toList();
        yield LoadCategories();
      }
  }
}
