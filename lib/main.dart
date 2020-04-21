import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: rutas(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

  rutas() {
    return <String, WidgetBuilder>{
      Page1.routeName: (context) => Page1(),

      Page2.routeName: (context) => Page2(
            mensaje: ModalRoute.of(context).settings.arguments, //Usamos ModalRoute para obtener los argumentos
          ),

    };
  }
}
