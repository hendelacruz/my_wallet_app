import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
          leading: Text(detalleDeGasto.precio),
          title: Text(detalleDeGasto.descripcion),
          subtitle: Text(detalleDeGasto.fechaDetallada),
        ),
      ),
    );
  }
}
