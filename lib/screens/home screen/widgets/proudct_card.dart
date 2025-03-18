import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/constans/colors.dart';

class ProudctCard extends StatelessWidget {
  const ProudctCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Card(
        elevation: 8,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('aaaa', style: TextStyle(color: Appcolors.gray)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(r'250$'), Icon(FontAwesomeIcons.heart)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
