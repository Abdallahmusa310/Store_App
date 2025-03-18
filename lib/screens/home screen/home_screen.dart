import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/screens/home%20screen/widgets/proudct_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(FontAwesomeIcons.bagShopping),
          ),
        ],
        title: Text('new trend'),
        centerTitle: true,
      ),
      body: Column(children: [ProudctCard()]),
    );
  }
}
