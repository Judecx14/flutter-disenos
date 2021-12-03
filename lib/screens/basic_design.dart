import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          _Title(),
          _ButtonSection(),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
                'Esse qui et dolore non cillum elit cupidatat exercitation id ad qui reprehenderit nulla. Fugiat consectetur proident enim adipisicing est amet sit culpa veniam. Fugiat fugiat sunt velit eu in sint dolore ipsum laborum duis culpa anim. Aliquip eiusmod sint voluptate culpa.'),
          )
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20), //EdgeInset.symetric(horizonal:20)
      child: Row(
        children: [
          Column(
            //Es posicionamiento horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschien Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kanderstag, Switerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          //Espacio para separar la columna y los icono-texto
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 50), */
    /* Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, */
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(
            iconData: Icons.call,
            label: 'Call',
          ),
          _CustomButton(
            iconData: Icons.near_me,
            label: 'Route',
          ),
          _CustomButton(
            iconData: Icons.share,
            label: 'Shate',
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          size: 30,
        ),
        color: Colors.blue,
      ),
      Text(
        label,
        style: TextStyle(color: Colors.blue),
      ),
    ]);
  }
}
