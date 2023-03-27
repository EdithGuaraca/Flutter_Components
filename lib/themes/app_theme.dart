

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
          primaryColor: Colors.indigo,

          //AppBarTheme
          appBarTheme: const AppBarTheme(
              color: primary,
              elevation: 0
          ),

        // textButton
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(primary: primary)
          ),

          // floatingActionButton
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: primary,
          ),

        // elevatedButton
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: primary,
                shape: const StadiumBorder(),
                elevation: 0
            ),
          ),





  );



  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
      primaryColor: Colors.indigo,

      //AppBarTheme
      appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
      ),

      scaffoldBackgroundColor: Colors.black,

  );


}