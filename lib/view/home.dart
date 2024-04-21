import 'package:auto_route/auto_route.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        CartTab(),
        ProfileTab()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          height: 60,
          selectedIndex: tabsRouter.activeIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              label: 'Меню',
              icon:  SvgPicture.asset('assets/svg/menu.svg', color: Colors.red, height: 40,),
            ),
            NavigationDestination(
              label: 'Корзина',
              icon: SvgPicture.asset('assets/svg/catalog.svg', height: 30, color: Colors.red),
            ),
            NavigationDestination(
              label: 'Профиль',
              icon: SvgPicture.asset('assets/svg/profile.svg', color: Colors.red, height: 35),
            ),
          ],
        );
      },
    );
  }

}