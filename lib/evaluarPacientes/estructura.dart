import 'package:flutter/material.dart';

class EvaluarPacientes extends StatefulWidget {
  static String ruta = "/evaluarPacientes";

  const EvaluarPacientes({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EvaluarPacientes();
  }
}

class _EvaluarPacientes extends State<EvaluarPacientes> {
  String miToken = "";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // We hide the appbar on desktop

      body: Text("Evaluar Pacientes"),
    );
  }
}
