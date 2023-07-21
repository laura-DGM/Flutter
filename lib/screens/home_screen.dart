import 'package:diseno_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //titulos
          PageTitle(),
          //card tanle
          CardTable()
        ],
      ),
    );
  }
}
