import 'package:flutter/material.dart';
import 'page_2.dart';

class Page1 extends StatelessWidget {
  static const routeName = "/"; //Nombre de la ruta de la pagina 1
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () => navigationPage2(context),
            child: Text("Enviar mensaje")),
      ),
    );
  }

  ///Metodo para la navegacion hacia la pagina 2
  navigationPage2(BuildContext context) {
    Navigator.pushNamed(
      context,
      Page2.routeName, //Nombre de la ruta de la pagina 2
      arguments: "Soy un parametro de la pagina 1",
    );
  }
}
