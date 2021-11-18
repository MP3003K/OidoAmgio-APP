import 'package:flutter/material.dart';
import 'home/estructura.dart';
import 'login/estructura.dart';

void main() {
  runApp(const MyApp());
}

////
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Oido Amigo - App',
        // we are using dark theme and we modify it as our need

        routes: {
          MyLoginPage.ruta: (BuildContext context) => const MyLoginPage(),
          MyContactsPage.ruta: (BuildContext context) => const MyContactsPage(),
        });
  }
}
