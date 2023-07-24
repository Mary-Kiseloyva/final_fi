import 'package:auto_route/auto_route.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _ProductPageState();
}

class _ProductPageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CatalogTab(),
        CartTab()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          height: 60,
          selectedIndex: tabsRouter.activeIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              label: 'Каталог',
              icon: Icon(Icons.apps_rounded),
            ),
            NavigationDestination(
              label: 'Корзина',
              icon: Icon(Icons.shopping_cart_outlined),
            )
          ],
        );
      },
    );
  }

}