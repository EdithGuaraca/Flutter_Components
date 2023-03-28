
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('EG'),
            ),
          )
        ],
      ),
        body: const Center(
            child: CircleAvatar(
              maxRadius: 110, // tamaÑo del cicle avatar
              backgroundImage: NetworkImage('https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2022/07/thor-con-hacha-y-ojos-brillantes_3840x2160_xtrafondos.com_-scaled.jpg?fit=2560%2C1440&quality=50&strip=all&ssl=1'),
            )
        ),
      );
    }
}