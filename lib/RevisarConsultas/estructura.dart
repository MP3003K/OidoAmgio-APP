import 'package:flutter/material.dart';

class RevisarConsultas extends StatefulWidget {
  static String ruta = "/calendario";

  const RevisarConsultas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RevisarConsultas();
  }
}

class _RevisarConsultas extends State<RevisarConsultas> {
  String miToken = "";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // We hide the appbar on desktop

      body: Text("Revisar consultas"),
    );
  }
}
