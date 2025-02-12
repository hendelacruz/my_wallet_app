import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextPersonalizado extends StatelessWidget {
  const TextPersonalizado({
    super.key,
    required this.label,
    this.autocorrect = true,
    this.controller,
    this.inputFormatters,
    this.keyboardType,
    this.maxLength,
    this.validator,
    this.onTap,
  });

  final String label;
  final bool autocorrect;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? maxLength;
  final String? Function(String?)? validator;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autocorrect: autocorrect,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      controller: controller,
      maxLength: maxLength,
      decoration: InputDecoration(
        icon: Icon(
          Icons.description,
          color: Colors.indigo,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      onTap: onTap,
    );
  }
}
