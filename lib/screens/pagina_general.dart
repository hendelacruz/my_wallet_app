import 'package:flutter/material.dart';

class PaginaGeneral extends StatefulWidget {
  const PaginaGeneral({super.key});

  @override
  State<PaginaGeneral> createState() => _PaginaGeneralState();
}

class _PaginaGeneralState extends State<PaginaGeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        'Mis Gastos',
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) {
                return Container();
              },
            );
          },
          icon: Icon(Icons.add),
        )
      ],
    ));
  }
}
