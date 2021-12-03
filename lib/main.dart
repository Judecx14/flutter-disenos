import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:disenos/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Sirve para cambiar los iconos de arriba de statusbar .dark
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(), //Con esto cambiamos el tema de la app
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
      //home: /* _TempHomeScreen(), */
    );
  }
}


//De ahora en adelante se trabajara con widgets(clases) en lugar de metodos
//Debido a que trae ventajas como el context, o la construccion del widget
/* class _TempHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hola Mundo'),
        Text('Hola Mundo'),
      ],
    );
  } */
/* } */
