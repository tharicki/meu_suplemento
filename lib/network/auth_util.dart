import 'dart:async';

import 'package:meu_suplemento/network/models/user.dart';
import 'package:meu_suplemento/network/network_util.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final URL_LOGIN = "http://localhost:8080/auth/login";

  Future<User> login(String username, String password) {
    return _netUtil.post(URL_LOGIN,
        body: {"username": username, "password": password}).then((dynamic res) {
      print(res.toString());
      if (res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}
