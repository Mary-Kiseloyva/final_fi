import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'navigation/app_router.dart';

class StoreApp extends StatelessWidget {
  StoreApp({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ValueNotifier<ThemeMode>>();
    return MaterialApp.router(
      routerConfig: _router.config(),
      themeMode: themeNotifier.value,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          border: InputBorder.none,
          fillColor: Color(0xFFE6E6E6),
          hintStyle: TextStyle(
            color: Color(0xFF969696),
            fontWeight: FontWeight.normal
          ),
        ),
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
    );
  }
}
