import 'package:flutter/material.dart';
import 'package:oav1/Calendario/citas_calendario.dart';
import 'package:oav1/home/estructura.dart';

class Calendario extends StatefulWidget {
  static String ruta = "/calendario";
  @override
  State<StatefulWidget> createState() {
    return _Calendario();
  }
}

class _Calendario extends State<Calendario> {
  String miToken = "";

  List<Widget> listadoContactosWidgets = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyContactsPage()),
              );
            },
          ),
          title: Row(children: [
            Text("Listado de contactos",
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 30,
                ))
          ]),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendario()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0XFFFFCACA)),
                child: cita_cal(
                  tex1: "Mijail Palomino Rodriguez",
                  tex2: "910045787",
                  tex3: "03:30 p.m 22 de Feb",
                  color: Color(0xFFFF0000),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendario()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0XFFFFF0BC)),
                child: cita_cal(
                  tex1: "Pedro Carbajal Soto",
                  tex2: "910047845",
                  tex3: "04:30 p.m 22 de Feb",
                  color: Color(0xFFF6C105),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendario()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0XFFE0F7EA)),
                child: cita_cal(
                  tex1: "Gabriela Mercedes Gillel",
                  tex2: "914578741",
                  tex3: "05:30 p.m 22 de Feb",
                  color: Color(0xFF2ECC71),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calendario()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0XFFffffff)),
                child: cita_cal(
                  tex1: "Juan Perez Marquinez",
                  tex2: "910045787",
                  tex3: "06:30 p.m 22 de Feb",
                  color: Color(0xFF2ECC71),
                ),
              ),
            ],
          ),
        ));
  }
}
