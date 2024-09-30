import 'package:activitat_1punt3/models/user.dart';
import 'package:activitat_1punt3/styles/app_styles.dart';
import 'package:activitat_1punt3/styles/widgets/stat_card.dart';
import 'package:flutter/material.dart';

// Widget que mostra el perfil i els assoliments de l'usuari.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.usuari});

  final User usuari;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Perfil de l'usuari
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(User.usrUrl),
            ),
            const SizedBox(height: 16),
            Text(
              "${usuari.name}${usuari.sName}",
              style: AppStyles.bigTitle,
            ),
            const SizedBox(height: 8),
            Text(
              'des del 20 d\'abril del 2022',
              style: AppStyles.otherText,
            ),
            const SizedBox(height: 24),
            // Widget Row amb les targetes d'assoliments
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                statCard(Icons.timer, 'Time', '2h 45\''),
                statCard(Icons.location_on, 'Km', usuari.runnedDist.toString()),
                statCard(
                    Icons.home, 'Activities', usuari.activities.toString()),
              ],
            ),
            const SizedBox(height: 30),
            // Slider de la alçada
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: AppStyles.activityType),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Slider(
                      value: 155,
                      min: 120,
                      max: 220,
                      divisions: 100,
                      activeColor: const Color(0xffbf63f8),
                      label: '155 kg',
                      onChanged: (value) => value = 155,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "155 kg",
                    style: AppStyles.activityType,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Slider del pes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Weight', style: AppStyles.activityType),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Slider(
                      value: 55,
                      min: 30,
                      max: 120,
                      divisions: 100,
                      activeColor: const Color(0xffbf63f8),
                      label: '55 kg',
                      onChanged: (value) => value = 55,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "55 kg",
                    style: AppStyles.activityType,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
