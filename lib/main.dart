import 'package:fi/store_app.dart';
import 'package:fi/util/app_components.dart';
import 'package:fi/util/app_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();
  await AppComponents().init();

  runApp(
    AppDependencies(
      child: StoreApp(),
    ),
  );
}
