// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:oav1/Calendario/estructura.dart';
import 'package:oav1/RevisarConsultas/estructura.dart';
import 'package:oav1/evaluarPacientes/estructura.dart';

import 'funcion_psicologo.dart';

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
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                child: Text(
                  "Buenas Tardes",
                  style: TextStyle(
                      color: Color(0xFF171725),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 35),
                child: Text(
                  "Mijail Palomino R.",
                  style: TextStyle(
                      color: Color(0xFF92929D),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendario()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0XFF7CBAF1)),
                child: herrComp(
                  tex1: "Agenda Pacientes",
                  tex2: "25 Pacientes",
                  ima: "assets/images/agenda.jpg",
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EvaluarPacientes()),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(primary: Colors.green.shade400),
                  child: herrComp(
                    tex1: "Evaluar Pacientes",
                    tex2: "25 Pacientes",
                    ima: "assets/images/lista.jpg",
                  )),
              const SizedBox(
                height: 36,
              ), //C:\Users\LAB REDES\Desktop\MijailPalomino\oav1\assets\images\consulta.jpg
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RevisarConsultas()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.amber),
                child: herrComp(
                  tex1: "Revisar Consultas",
                  tex2: "200 solicitudes",
                  ima: "assets/images/consulta.jpg",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types


