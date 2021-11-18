import 'package:flutter/material.dart';

class HerrLogo extends StatelessWidget {
  const HerrLogo({Key? key, this.imagen = ""}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final imagen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      height: 80,
      width: 90,
      child: Image.asset(
        imagen,
        fit: BoxFit.cover,
      ),
    );
  }
}
