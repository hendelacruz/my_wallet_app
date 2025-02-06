import 'package:flutter/material.dart';
import 'package:my_wallet_app/screens/pagina_general.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaginaGeneral(),
    );
  }
}
