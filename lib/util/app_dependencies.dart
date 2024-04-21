import 'package:fi/view_model/cart_view_model.dart';
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
        Provider(
          create: (context) => CartViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.light),
        ),
      ],
      child: child,
    );
  }
}
