import 'package:flutter/material.dart';
import 'package:rutas_nombres/page_1.dart';

import 'page_2.dart';

rutas() {
  return <String, WidgetBuilder>{
    Page1.routeName: (context) => Page1(),
    Page2.routeName: (context) =>
        Page2(mensaje: ModalRoute.of(context).settings.arguments)
  };
}
