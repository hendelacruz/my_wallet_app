import 'package:flutter/material.dart';
import 'package:my_wallet_app/display/screens/pagina_general.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(255, 0, 77, 64),
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
            fontFamily: 'Poppins',
          ),
          centerTitle: false,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal[900],
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19,
            ),
          ),
        ),
      ),
      home: PaginaGeneral(),
    );
  }
}
