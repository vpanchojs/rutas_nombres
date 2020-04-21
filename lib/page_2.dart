import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  static const routeName = "page2"; //Nombre de la ruta de la pagina 2

  final String mensaje; //Variable que es enviada desde la pagina 1

  const Page2({Key key, this.mensaje}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
      ),
      body: Center(
        child: Container(
          child: Text(
            " Argumento recibido $mensaje",
          ),
        ),
      ),
    );
  }
}
