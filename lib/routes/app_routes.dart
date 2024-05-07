import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/tela_de_den_ncia_an_nima_screen/tela_de_den_ncia_an_nima_screen.dart';
import '../presentation/tela_de_den_ncia_screen/tela_de_den_ncia_screen.dart';
import '../presentation/tela_de_status_screen/tela_de_status_screen.dart';
import '../presentation/tela_inicial_one_screen/tela_inicial_one_screen.dart';
import '../presentation/tela_inicial_screen/tela_inicial_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String telaInicialScreen = '/tela_inicial_screen';

  static const String telaDeDenNciaAnNimaScreen =
      '/tela_de_den_ncia_an_nima_screen';

  static const String telaInicialOneScreen = '/tela_inicial_one_screen';

  static const String telaDeStatusScreen = '/tela_de_status_screen';

  static const String telaDeDenNciaScreen = '/tela_de_den_ncia_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    telaInicialScreen: (context) => TelaInicialScreen(),
    telaDeDenNciaAnNimaScreen: (context) => TelaDeDenNciaAnNimaScreen(),
    telaInicialOneScreen: (context) => TelaInicialOneScreen(),
    telaDeStatusScreen: (context) => TelaDeStatusScreen(),
    telaDeDenNciaScreen: (context) => TelaDeDenNciaScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => TelaInicialScreen()
  };
}
