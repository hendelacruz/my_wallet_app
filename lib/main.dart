import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:my_wallet_app/main_app.dart';

void main() {
  Intl.defaultLocale = 'es_PE';
  initializeDateFormatting('es_PE', null);
  runApp(const MainApp());
}
