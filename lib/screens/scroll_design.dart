import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0.5,
        0.5,
      ],
      colors: [
        Color(0xff7aeccb),
        Color(0xff40BAD6),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      //Este sirve para hacer swipe entre pantallas
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(), //Esto es para creal el efcto de fin
          scrollDirection: Axis.vertical,
          children: [
            _FirstPage(),
            _SecondPage(),
          ],
        ),
      ),
    );
  }
}

class _FirstPage extends StatelessWidget {
  const _FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(),
        _MainContent(),
      ],
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return SafeArea(
      bottom: false, //Sirve para precuparse por la parte de abajo
      child: Column(
        //Centra horizonalmente
        crossAxisAlignment: CrossAxisAlignment.center,
        //Centra vertialmente
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff40BAD6),
      height: double.infinity, //Toma todo el espacio posible
      alignment: Alignment.topCenter,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff40BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder(),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
