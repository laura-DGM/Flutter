import 'package:flutter/material.dart';

class BasinDesingScreen extends StatelessWidget {
  const BasinDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //imagen
          Image(image: AssetImage('assets/sono-hanabi.jpg')),
          //title
          Title(),
          //seccion de botones
          BottonSection(),
          //descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
                'Eu culpa aute non eiusmod. Incididunt eu sint tempor elit dolore fugiat consectetur do. Nostrud pariatur ipsum pariatur commodo sunt irure incididunt minim quis eiusmod sit fugiat magna.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'deschinen lake comground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'kandersteg, Switzerland',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBotton(icon: Icons.phone, text: 'Call'),
          CustomBotton(icon: Icons.send, text: 'Route'),
          CustomBotton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomBotton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
