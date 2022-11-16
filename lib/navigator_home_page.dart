import 'package:flutter/material.dart';

import 'add_to_do.dart';
import 'my_home_page.dart';

class HomeNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = MyHomePage();
          if (settings.name == 'page2') page = AddTodoPage();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}