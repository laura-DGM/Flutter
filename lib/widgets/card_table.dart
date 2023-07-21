import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.blue,
            text: 'trasporte',
          ),
          _SingleCard(
            icon: Icons.people,
            color: Colors.pink,
            text: 'gente',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.add_reaction,
            color: Colors.purple,
            text: 'accion',
          ),
          _SingleCard(
            icon: Icons.verified,
            color: Colors.red,
            text: 'verificar',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.ac_unit,
            color: Colors.green,
            text: 'trasporte',
          ),
          _SingleCard(
            icon: Icons.padding,
            color: Colors.cyan,
            text: 'gente',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.qr_code,
            color: Colors.cyanAccent,
            text: 'accion',
          ),
          _SingleCard(
            icon: Icons.place,
            color: Colors.amber,
            text: 'verificar',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        SizedBox(height: 20),
        Text(
          this.text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
