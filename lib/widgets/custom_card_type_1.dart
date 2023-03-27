import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('soy un titulo'),
            subtitle: Text(
                'mandamus ex risus morbi definitionem cursus sem atomorum discere sea sapientem volutpat tristique epicuri quidam intellegat mus dicit no repudiandae vero agam pellentesque porttitor te sagittis antiopam causae adipiscing utamur ac pertinacia suspendisse neglegentur urbanitas inciderint delectus bibendum deserunt diam ad urbanitas graeco voluptaria dictas gloriatur hinc docendi eos quo'
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, //ubicacion de los botones
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('Cancel'),

                ),
              TextButton(
                  onPressed: () {},
                  child: const Text('Ok')
              )
              ],
            ),
          )
        ],
      ),
    );
  }
}
