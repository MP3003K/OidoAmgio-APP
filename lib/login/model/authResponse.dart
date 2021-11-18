import 'dart:convert';

class AuthResponse {
  String message = "";
  String? token = "";

  AuthResponse(Map jsonAuthResponse) {
    message = jsonAuthResponse["message"];
    token = jsonAuthResponse["token"];
  }
}
