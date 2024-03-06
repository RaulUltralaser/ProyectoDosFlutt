import 'package:flutter/material.dart';

// import 'package:flutter_application_2/Themes/app_themes.dart';
import 'package:flutter_application_2/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card View'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [CustomCardType1()],
        ));
  }
}
