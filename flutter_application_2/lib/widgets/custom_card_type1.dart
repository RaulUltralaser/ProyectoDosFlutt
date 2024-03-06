import 'package:flutter/material.dart';
import 'package:flutter_application_2/Themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo,
              color: AppTheme.primaryColor,
            ),
            title: Text('soy un titulo'),
            subtitle: Text(
                'Eu exercitation ut labore cillum aute cupidatat. Reprehenderit Lorem nulla deserunt proident. Aute mollit '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
