import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl/intl.dart';
import 'package:my_wallet_app/display/ui/text_personalizado.dart';
import 'package:my_wallet_app/models/detalle_de_gasto.dart';
import 'package:uuid/uuid.dart';

class AgregarGastos extends StatefulWidget {
  const AgregarGastos({
    required this.alAgregar,
    super.key,
  });

  final void Function(DetalleDeGasto) alAgregar;

  @override
  State<AgregarGastos> createState() => _AgregarGastosState();
}

class _AgregarGastosState extends State<AgregarGastos> {
  final _idForm = GlobalKey<FormState>();
  final _fechaController = TextEditingController();
  final _fechaDetalladaController = TextEditingController();
  final _descripcionController = TextEditingController();
  final _precioController = TextEditingController();

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );
    String formatdate = DateFormat('dd/MM/yyyy').format(dateSelected!);
    _fechaController.text = formatdate;
    String formatdatecomplete =
        DateFormat('E, dd/MM/yyyy').format(dateSelected);
    _fechaDetalladaController.text = formatdatecomplete;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _idForm,
          child: Column(
            spacing: 8,
            children: [
              TextPersonalizado(
                label: 'Fecha',
                controller: _fechaController,
                keyboardType: TextInputType.datetime,
                validator: (valor) =>
                    RequiredValidator(errorText: 'La fecha es requerida')
                        .call(valor),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              TextPersonalizado(
                label: 'Descripcion',
                controller: _descripcionController,
                maxLength: 20,
                autocorrect: false,
                validator: (valor) =>
                    RequiredValidator(errorText: 'La descripcion es requerida')
                        .call(valor),
              ),
              TextPersonalizado(
                label: 'Precio',
                controller: _precioController,
                keyboardType: TextInputType.phone,
                validator: (valor) {
                  if (double.tryParse(valor!) == null) {
                    return 'El precio es requerido';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  final esValido = _idForm.currentState?.validate() ?? false;
                  if (esValido) {
                    final id = Uuid().v1();
                    final fecha = _fechaController.text;
                    final fechadetallada = _fechaDetalladaController.text;
                    final descripcion = _descripcionController.text;
                    final precio = _precioController.text;

                    final detalleDeGasto = DetalleDeGasto(
                      id: id,
                      fecha: fecha,
                      fechaDetallada: fechadetallada,
                      descripcion: descripcion,
                      precio: precio,
                    );
                    widget.alAgregar(detalleDeGasto);
                  }
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.indigo,
                ),
                label: Text('Agregar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
