import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_wallet_app/extensions/string_extension.dart';
import 'package:my_wallet_app/models/detalle_de_gasto.dart';

class TarjetaInformacionGasto extends StatelessWidget {
  const TarjetaInformacionGasto({
    required this.detalleDeGasto,
    required this.alBorrar,
    super.key,
  });

  final DetalleDeGasto detalleDeGasto;
  final void Function(DetalleDeGasto) alBorrar;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Slidable(
        startActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                alBorrar(detalleDeGasto);
              }),
              backgroundColor: Colors.red,
              icon: Icons.delete,
            )
          ],
        ),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.teal,
                width: 1.0,
              ),
            ),
            child: Text(
              detalleDeGasto.precio.cadenaConSimbolo(),
              style: TextStyle(fontSize: 25),
            ),
          ),
          title: Text(
            detalleDeGasto.descripcion,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            detalleDeGasto.fechaDetallada,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
