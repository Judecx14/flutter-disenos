import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              iconData: Icons.memory_outlined,
              label: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              iconData: Icons.car_rental,
              label: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.purple,
              iconData: Icons.share,
              label: 'Compartir',
            ),
            _SingleCard(
              color: Colors.orange,
              iconData: Icons.home,
              label: 'Hogar',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.greenAccent,
              iconData: Icons.trending_down_outlined,
              label: 'Estadisticas',
            ),
            _SingleCard(
              color: Colors.cyan,
              iconData: Icons.dark_mode_outlined,
              label: 'Dormir',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.amber,
              iconData: Icons.wallet_giftcard,
              label: 'Regalos',
            ),
            _SingleCard(
              color: Colors.lime,
              iconData: Icons.restart_alt,
              label: 'Reiniciar',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.iconData,
    required this.color,
    required this.label,
  }) : super(key: key);
  final IconData iconData;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              iconData,
              size: 35,
              color: Colors.white,
            ),
            radius: 35,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = BoxDecoration(
      color: const Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: child,
          ),
        ),
      ),
    );
  }
}
