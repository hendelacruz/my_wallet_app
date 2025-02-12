import 'package:flutter/material.dart';
//import 'package:my_wallet_app/screens/agregar_gastos.dart';
import 'package:my_wallet_app/display/screens/pagina_general.dart';
//import 'package:my_wallet_app/screens/pagina_general.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.teal,
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: Colors.white,
          dividerColor: Colors.teal,
          headerBackgroundColor: Colors.teal,
          headerForegroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.teal[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal[900],
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
          centerTitle: false,
        ),
      ),
      home: PaginaGeneral(),
    );
  }
}
