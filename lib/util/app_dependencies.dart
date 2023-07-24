import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDependencies extends StatelessWidget {
  const AppDependencies({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.light),
        ),
      ],
      child: child,
    );
  }
}
