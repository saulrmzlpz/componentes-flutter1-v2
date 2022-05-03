import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'listview1',
      nombre: 'ListView tipo1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'listview2',
      nombre: 'ListView tipo2',
      screen: const ListView2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
        route: 'alert',
        nombre: 'Alertas - Dialogs',
        screen: const AlertScreen(),
        icon: Icons.add),
    MenuOption(
        route: 'card',
        nombre: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        nombre: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        nombre: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_outlined),
    MenuOption(
        route: 'inputs',
        nombre: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        nombre: 'Slider & Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video),
    MenuOption(
        route: 'listviewbuilder',
        nombre: 'InfiniteScroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined)
  ];
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1': (context) => ListView1Screen(),
  //   'listview2': (context) => ListView2Screen(),
  //   'alert': (context) => AlertScreen(),
  //   'card': (context) => CardScreen(),
  //   'home': (context) => HomeScreen(),
  // };
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext comtext) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic>? onGenenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
