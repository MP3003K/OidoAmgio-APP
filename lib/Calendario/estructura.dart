import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  static String ruta = "/calendario";

  const Calendario({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Calendario();
  }
}

class _Calendario extends State<Calendario> {
  String miToken = "";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // We hide the appbar on desktop

      body: Text("Calendario"),
    );
  }
}
