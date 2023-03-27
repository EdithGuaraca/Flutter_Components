
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Card Widget'),
      ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10,),
            CustomCardType2(
                imagenUrl: 'https://img.freepik.com/free-vector/'
                'nature-scene-with-river-hills-forest-mountain-landscape-flat-'
                'cartoon-style-illustration_1150-37326.jpg?w=2000'
            ),
            SizedBox(height: 10,),
            CustomCardType2(
                imagenUrl: 'https://img.freepik.com/premium-vector/mountain-green-field-alpine-landscape-nature-with-wooden-houses_194708-1779.jpg?w=2000'
            ),
            SizedBox(height: 10,),
            CustomCardType2(
                imagenUrl: 'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w',
                name: 'Paisaje 3',
            ),
          ],
        )
      );
    }
}
