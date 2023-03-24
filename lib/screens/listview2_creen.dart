
import 'package:flutter/material.dart';

class ListviewScreen2 extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear', 'Pacman', 'GTA', 'Mario Bross'];
  const ListviewScreen2({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Listview Tipo 2'),

      ),
        body: ListView.separated(
        itemCount: options.length,
        itemBuilder: ,
      );
    }
}