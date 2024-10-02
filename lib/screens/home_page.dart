import 'package:activitat_1punt3/models/user.dart';
import 'package:activitat_1punt3/styles/app_styles.dart';
import 'package:activitat_1punt3/styles/widgets/activity_tile.dart';
import 'package:activitat_1punt3/screens/profile_page.dart';
import 'package:flutter/material.dart';

// Widget que mostra concells per a l'usuari i les darreres activitats.
class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.usuari});

  final User usuari;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Fitness Time'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(usuari: usuari),
                ),
              );
            },
            icon: Hero(
              tag: usuari.sName,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(User.usrUrl),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // amb la funció trimRight, eliminem l'espai que deixa flutter
                // entre el nom de l'usuari i la coma.
                'Hola ${usuari.name.trimRight()},',
                style: AppStyles.bigTitle,
              ),
              const SizedBox(height: 8),
              Text(
                usuari.recomendations,
                style: AppStyles.otherText,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Més detalls',
                  style: AppStyles.link,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Darreres activitats',
                style: AppStyles.mediumTitle,
              ),
              const Divider(),
              const SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                // Permet que ListView funcioni dins del SingleChildScrollView
                physics: const NeverScrollableScrollPhysics(),
                // Desactiva el desplaçament dins de ListView
                children: [
                  activityTile('Running', 'Ahir, 18:20', '7,300 km',
                      Icons.run_circle_outlined),
                  activityTile('Running', '15 Sep 2024, 21:45', '6,550 km',
                      Icons.run_circle_outlined),
                  activityTile('Running', '10 Sep 2024, 21:33', '7,100 km',
                      Icons.run_circle_outlined),
                ],
              ),
              const SizedBox(height: 40),
              // Indicador de progrés personal
              Center(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            value: 0.65,
                            strokeWidth: 10,
                            backgroundColor: Colors.grey[300],
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xff3407da)),
                          ),
                        ),
                        Text('65%', style: AppStyles.mediumTitle),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text('Objectiu mensual', style: AppStyles.otherText),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inici',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cerca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Botiga',
          ),
        ],
      ),
    );
  }
}
