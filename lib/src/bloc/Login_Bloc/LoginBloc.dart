import 'dart:async';
import 'dart:convert';

import 'package:fashionshop/src/config/GraphQLConfiguration.dart';
import 'package:fashionshop/src/graphql/QueryMutation.dart';
import 'package:fashionshop/src/model/user.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'LoginEvent.dart';
import 'LoginState.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  User user;

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

        final response = await http.post(
          "http://10.0.206.16:8080/api/v1/account/login",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            "username": event.username,
            "password": event.password,
          }),
        );

        if (response.statusCode == 200) {
          user = User.fromJson(json.decode(response.body)["user"]);
          print(" userid: " + user.id.toString());
          yield LoginOk();
        } else {
          yield LoginInitial();

          yield LoginFailure(error: "login failed");
        }
//      } catch (error) {
//        yield LoginInitial();
//        yield LoginFailure(error: error.toString());
//      }
    }
  }
}
