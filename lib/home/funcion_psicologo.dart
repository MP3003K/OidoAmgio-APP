import 'package:flutter/material.dart';
import 'package:oav1/Calendario/estructura.dart';

import 'herr_logo.dart';

// ignore: camel_case_types
class herrComp extends StatelessWidget {
  const herrComp({
    Key? key,
    this.tex1 = "",
    this.tex2 = "",
    this.ima = "",
  }) : super(key: key);
  final String tex1;
  final String tex2;
  final String ima;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 30, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tex1,
                style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tex2,
                style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        HerrLogo(
          imagen: ima,
        )
      ],
    );
  }
}
