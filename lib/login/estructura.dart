import 'package:flutter/material.dart';
import 'package:oav1/home/estructura.dart';
import 'package:oav1/login/provider/authProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_banner.dart';
import 'model/authResponse.dart';

class MyLoginPage extends StatefulWidget {
  static String ruta = "/";

  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyLoginPageState();
  }
}

class _MyLoginPageState extends State<MyLoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String dniIngresado = "";
  String contrasenaIngresada = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const LoginBanner(),
            Text(
              "Bienvenido",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              width: 330,
              child: Text(
                "Bienvenido estudiante de psicología, por favor ingrese su teléfono personal y su contraseña para poder ingresar a la aplicación.",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(width: 345, child: obtenerCampoEmail()),
            const SizedBox(
              height: 30,
            ),
            SizedBox(width: 345, child: obtenerCampoContrasena()),
            const SizedBox(
              height: 50,
            ),
            Container(
                padding: const EdgeInsetsDirectional.fromSTEB(95, 0, 0, 0),
                child: obtenerBotonIniciarSesion()),
          ],
        ),
      ),
    ));
  }

  TextFormField obtenerCampoEmail() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: "Ingrese su DNI",
        hintStyle: TextStyle(color: Color(0xFF31B669)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xFF31B669)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xFF31B669)),
        ),
        prefixIcon: Icon(
          Icons.account_circle_rounded,
          color: Color(0xFF2ECC71),
        ),
      ),
      validator: (value) {
        if (value!.length > 7) {
          return null;
        } else {
          return "Digitos incompletos";
        }
      },
      onSaved: (value) {
        dniIngresado = value!;
      },
    );
  }

  TextFormField obtenerCampoContrasena() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: "Ingrese su contraseña",
        hintStyle: TextStyle(color: Color(0xFF31B669)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xFF31B669)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xFF31B669)),
        ),
        prefixIcon: Icon(
          Icons.password_outlined,
          color: Color(0xFF2ECC71),
        ),
      ),
      validator: (value) {
        if (value!.length > 2) {
          return null;
        } else {
          return "La contraseña no cumple requisitos mínimos de seguridad";
        }
      },
      onSaved: (value) {
        contrasenaIngresada = value!;
      },
    );
  }

  ElevatedButton obtenerBotonIniciarSesion() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.green,
          onSurface: Colors.green,
          elevation: 20,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          minimumSize: const Size(170, 60),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            validarToken(dniIngresado, contrasenaIngresada);
          }
        },
        child: const Text(
          "Iniciar Sesión",
        ));
  }

  void validarToken(String email, String contrasena) async {
    AuthProvider ap = AuthProvider();
    AuthResponse ar = await ap.obtenerToken(dniIngresado, contrasenaIngresada);

    if (ar.message != "Psicologo autenticado") {
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', ar.token!);

      formKey.currentState!.reset();

      Navigator.pushNamed(context, MyContactsPage.ruta);
    }
  }
}
