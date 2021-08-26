import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          primary: true,
          slivers: <Widget>[
            SliverAppBar(
              forceElevated: false,
              primary: true,
              title: const Text('Hello World'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ],
            ),
            // ...rest of body...
          ],
        ),
      );
  //return Principal();
}
