import 'package:flutter/material.dart';

class ConsultaCard extends StatelessWidget {
  String observaciones = "";
  int n_sesiones = 0;
  String evidencia = "";
  String derivacion = "";

  ConsultaCard(this.observaciones, this.n_sesiones, this.derivacion);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Text(this.observaciones,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 32.0,
                fontWeight: FontWeight.bold)),
        Text("{$this.n_sesiones}",
            style: TextStyle(
              color: Colors.black26,
              fontSize: 22.0,
            )),
        Text("{$this.f_atencion]",
            style: TextStyle(
              color: Colors.black26,
              fontSize: 22.0,
            )),
      ],
    ));
  }
}
