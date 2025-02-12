import 'package:flutter/material.dart';
import 'package:my_wallet_app/display/screens/agregar_gastos.dart';
import 'package:my_wallet_app/display/screens/lista_de_gastos.dart';
import 'package:my_wallet_app/models/detalle_de_gasto.dart';

class PaginaGeneral extends StatefulWidget {
  const PaginaGeneral({super.key});

  @override
  State<PaginaGeneral> createState() => _PaginaGeneralState();
}

class _PaginaGeneralState extends State<PaginaGeneral> {
  final detallesDeGasto = <DetalleDeGasto>[];
  int bandera = 0;
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
                  return AgregarGastos(
                    alAgregar: (detalleDeGasto) {
                      setState(() {
                        bandera = 1;
                        detallesDeGasto.add(detalleDeGasto);
                        Navigator.pop(context);
                      });
                    },
                  );
                },
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Center(
        child: ListaDeGastos(detallesDeGasto: detallesDeGasto),
      ),
    );
  }
}
