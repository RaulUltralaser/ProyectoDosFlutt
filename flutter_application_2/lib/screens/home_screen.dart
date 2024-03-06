import 'package:flutter/material.dart';

// import 'package:flutter_application_2/Models/models.dart';

import 'package:flutter_application_2/Routes/app_routes.dart';
import 'package:flutter_application_2/Themes/app_themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Componentes en Flutter'),
          elevation: 10,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptions[i].icon,
                    color: AppTheme.primaryColor,
                  ),
                  title: Text(menuOptions[i].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListView1Screen(),
                    // );
                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
