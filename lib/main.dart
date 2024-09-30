import 'package:activitat_1punt3/models/user.dart';
import 'package:activitat_1punt3/screens/home_page.dart';
import 'package:flutter/material.dart';
import '/styles/app_styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    User user1 = User(
      name: "Antònia ",
      sName: "Font",
      recomendations:
          'Recorda beure aigua regularment al llarg del dia per mantenir'
          ' el teu cos hidratat i millorar el teu rendiment físic i mental.',
      height: 150,
      weight: 55,
      runnedTime: 165,
      runnedDist: 212.4,
      activities: 45,
    );
    return MaterialApp(
      title: 'Fitness Time',
      theme: AppStyles.themeData,
      home: HomePage(
        usuari: user1,
      ),
    );
  }
}
