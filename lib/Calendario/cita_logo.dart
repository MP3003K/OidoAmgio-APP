import 'package:flutter/material.dart';

class CitaLogo extends StatelessWidget {
  const CitaLogo({Key? key, this.color3 = Colors.black12}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables

  final Color color3;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color3,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      height: 75,
      width: 105,
      child: const Icon(
        Icons.account_circle_rounded,
        color: Color(0xFFffffff),
        size: 65,
      ),
    );
  }
}
