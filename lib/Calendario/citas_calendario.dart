import 'package:flutter/material.dart';
import 'package:oav1/Calendario/estructura.dart';

import 'cita_logo.dart';

// ignore: camel_case_types
class cita_cal extends StatelessWidget {
  const cita_cal({
    Key? key,
    this.tex1 = "",
    this.tex2 = "",
    this.tex3 = "",
    this.color = Colors.amber,
  }) : super(key: key);
  final String tex1;
  final String tex2;
  final String tex3;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30,
        ),
        CitaLogo(
          color3: color,
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 30, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tex1,
                style: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                tex2,
                style: const TextStyle(
                    color: Color(0xFF606263),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                tex3,
                style: const TextStyle(
                    color: Color(0xFF606263),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
