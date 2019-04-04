import 'package:flutter/material.dart';

import 'home.dart';
import 'product.dart';

class PassengerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symbio Creation Farmer',
      home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home'    : (context) => HomePage(),
        '/product' : (context) => ProductPage(),
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/home') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => HomePage(),
      fullscreenDialog: true,
    );
  }

}