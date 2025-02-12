import 'package:flutter/material.dart';
import 'package:my_wallet_app/display/ui/tarjeta_informacion_gasto.dart';
import 'package:my_wallet_app/models/detalle_de_gasto.dart';

class ListaDeGastos extends StatefulWidget {
  const ListaDeGastos({
    required this.detallesDeGasto,
    super.key,
  });

  final List<DetalleDeGasto> detallesDeGasto;

  @override
  State<ListaDeGastos> createState() => _ListaDeGastosState();
}

class _ListaDeGastosState extends State<ListaDeGastos> {
  @override
  Widget build(BuildContext context) {
    if (widget.detallesDeGasto.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Usted no tiene gastos guardados',
              style: TextStyle(
                fontSize: 25,
                color: Colors.teal[900],
              ),
            ),
          ),
          Image.asset(
            "assets/images/lista.gif",
            height: 200.0,
            width: 200.0,
          ),
        ],
      );
    }
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      children: widget.detallesDeGasto.map((detalleDeGasto) {
        return TarjetaInformacionGasto(
          detalleDeGasto: detalleDeGasto,
          alBorrar: (detalleDeGasto) {
            setState(() {
              widget.detallesDeGasto
                  .removeWhere((elemento) => elemento.id == detalleDeGasto.id);
            });
          },
        );
      }).toList(),
    );
  }
}
