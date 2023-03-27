
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: true, //nos sirve cerrar un dialogo
        context: context,
        builder: (context){ //codigo que construye un widget
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es un contenido de alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context); //cerrar un dialogo
                  },
                  child: const Text('Cancelar')
              )
            ],
          );
        }
    );

  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return  CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es un mensaje de alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {

                  },
                  child:  const Text('Aceptar')
              ),
              TextButton(
                  onPressed: () {

                  },
                  child: Text('Cancelar', style: TextButton.styleFrom(primary: Colors.red),),

              )
            ],
          );
        }
    );
  }


@override
Widget build(BuildContext context) {
    return Scaffold(
        body:  Center(
          child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16),),
            ),
            onPressed: () =>{

             // displayDialogAndroid(context)
              displayDialogIOS(context)

            },
          )
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      );
    }
}	