
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
        body: ListView.separated( //separated construye la linea de separación de los elementos
        itemCount: options.length,
        itemBuilder: (context, index) =>ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(), // los guiones significa q no se van a usar los argumentos
  // la palabra builder contruye un builder o un elemento
        )
  );
    }
}