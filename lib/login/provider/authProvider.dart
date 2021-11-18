import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:oav1/login/model/authResponse.dart';

class AuthProvider {
  Future<AuthResponse> obtenerToken(String email, String password) async {
    var url = Uri.parse(
        "https://oidoamigo-backend.herokuapp.com/api/psicologo/validarContrasena");

    var responseHttp =
        await http.post(url, body: {'dni': email, 'contraseña': password});

    String rawResponse = utf8.decode(responseHttp.bodyBytes);

    var jsonResponse = jsonDecode(rawResponse);

    AuthResponse authResponse = AuthResponse(jsonResponse);

    print(authResponse.message);
    print(authResponse.token);

    return authResponse;
  }
}
