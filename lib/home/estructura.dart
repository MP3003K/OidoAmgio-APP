// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:oav1/home/herr_logo.dart';

class MyContactsPage extends StatefulWidget {
  static String ruta = "/home";

  const MyContactsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyContactsPageState();
  }
}

class _MyContactsPageState extends State<MyContactsPage> {
  String miToken = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We hide the appbar on desktop

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Buenas Tardes",
                style: TextStyle(
                    color: Color(0xFF171725),
                    fontSize: 39,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                "Mijail Palomino R.",
                style: TextStyle(
                    color: Color(0xFF92929D),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              herrComp(
                tex1: "Revisar Consultas",
                tex2: "200 Solicitudes",
                ima: "assets/images/home.png",
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class herrComp extends StatelessWidget {
  const herrComp({Key? key, this.tex1 = "", this.tex2 = "", this.ima = ""})
      : super(key: key);
  final String tex1;
  final String tex2;
  final String ima;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.blueGrey,
        gradient: LinearGradient(
            colors: [Colors.amber, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            offset: Offset(2, 3),
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 39, 27, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tex1,
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  tex2,
                  style: TextStyle(
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
      ),
    );
  }
}
