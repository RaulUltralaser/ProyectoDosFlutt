import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/models.dart';

import 'package:flutter_application_2/screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/Home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/Home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: '/listview',
        name: 'Lista tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: '/listview2',
        name: 'Lista tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: '/card',
        name: 'Tarjetas - Card',
        screen: const CardScreen(),
        icon: Icons.card_membership_rounded),
    MenuOption(
        route: '/alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/listview': (context) => const ListView1Screen(),
  //   '/Home': (context) => const HomeScreen(),
  //   '/listview2': (context) => const ListView2Screen(),
  //   '/card': (context) => const CardScreen(),
  //   '/alert': (context) => const AlertScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
