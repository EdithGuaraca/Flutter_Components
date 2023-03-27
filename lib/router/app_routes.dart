
import 'package:fl_components/models/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screen.dart';


class AppRoutes {

  static const inicialRoutes = 'home'; // método estático propiedad sin necesidad de instanciar la clase

  static final  menuOptions = <MenuOptions>[
    // TODO: borrar home
    MenuOptions(route: 'home', icon: Icons.home, name: 'HomeScreen', screen: const HomeScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list, name: 'Listview Tipo 1', screen: const ListviewScreen1()),
    MenuOptions(route: 'listview2', icon: Icons.list_alt, name: 'Listview Tipo 2', screen: const ListviewScreen2()),
    MenuOptions(route: 'alert', icon: Icons.add_alert, name: 'Alertas - Alerts ', screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.credit_card_sharp, name: 'Tarjetas - Cards', screen: const CardScreen())

  ];


  //Metodo con las rutas de la app
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
  
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context)=> option.screen});
    }

    return appRoutes;
  }



  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': ( BuildContext context) => const ListviewScreen1(),
  //   'listview2': (BuildContext context) => const ListviewScreen2(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };



  static Route<dynamic> onGenerateRoute ( RouteSettings settings) { // me sirve para trabajar con rutas dinamicas

      return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
      );
  }

}