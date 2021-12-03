import 'package:flutter/material.dart';
import 'dart:math';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);
  static const boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0.2,
        0.8,
      ],
      colors: [
        Color(0xff2e305f),
        Color(0xff202333),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //El container es degradado
        Container(
          decoration: boxDecoration,
        ),
        //Caja rosada
        const Positioned(
          //Sirve para posicionar widgets, como html un div en realive
          top: -70,
          left: -30,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      //Transform sirve para mover widgets
      angle: -pi / 5, //Usa pi para rotar, hicimos impor de dart.math
      child: Container(
        width: 330,
        height: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ],
          ),
        ),
      ),
    );
  }
}
