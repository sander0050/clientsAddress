import 'package:client_address/src/views/mainScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
        title: 'Clients Address',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.lightGreen,
                primaryColorDark: Colors.lightGreen[900],
                accentColor: Colors.lightGreenAccent,
                backgroundColor: Colors.white,
                cardColor: Colors.orange,
                errorColor: Colors.red,
                brightness: Brightness.light)),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routes);
  }

  Route<Widget> routes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) {
          return MainScreen();
        });
        break;

      default:
        return MaterialPageRoute(builder: (context) {
          return MainScreen();
        });
    }
  }
}
