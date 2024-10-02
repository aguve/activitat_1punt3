import 'package:activitat_1punt3/models/user.dart';
import 'package:activitat_1punt3/styles/app_styles.dart';
import 'package:activitat_1punt3/styles/widgets/stat_card.dart';
import 'package:flutter/material.dart';

// Widget que mostra el perfil i els assoliments de l'usuari.
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.usuari});

  final User usuari;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Enmagatzema els valor actuals d'alçada i pes de l'usuari.
  double _currentHeight = 155; // Valor inicial de l'slider d'alçada.
  double _currentWeight = 55; // Valor inicial de l'slider de pes.

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Perfil de l'usuari
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(User.usrUrl),
              ),
              const SizedBox(height: 16),
              Text(
                "${widget.usuari.name} ${widget.usuari.sName}",
                style: AppStyles.bigTitle,
              ),
              const SizedBox(height: 5),
              Text(
                'desde el 20 de abril del 2022',
                style: AppStyles.otherText,
              ),
              const SizedBox(height: 30),
              // Widget Row amb les targetes d'assoliments
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  statCard(Icons.alarm_outlined, 'Time', '2h 45\''),
                  const SizedBox(width: 5),
                  statCard(Icons.location_on, 'Km',
                      widget.usuari.runnedDist.toString()),
                  const SizedBox(width: 5),
                  statCard(Icons.home, 'Activities',
                      widget.usuari.activities.toString()),
                ],
              ),
              const SizedBox(height: 30),
              // Slider de l'alçada
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height', style: AppStyles.otherText),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Slider(
                        value: _currentHeight,
                        min: 120,
                        max: 220,
                        divisions: 100,
                        activeColor: const Color(0xffbf63f8),
                        label: '${_currentHeight.round()} cm',
                        onChanged: (double value) {
                          setState(() {
                            _currentHeight = value;
                          });
                        },
                      ),
                    ),
                    Text(
                      "${_currentHeight.round()} cm",
                      // Mostra el valor actual de l'slider.
                      style: AppStyles.otherText,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Slider del pes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight', style: AppStyles.otherText),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Slider(
                        value: _currentWeight,
                        min: 30,
                        max: 120,
                        divisions: 100,
                        activeColor: const Color(0xffbf63f8),
                        label: '${_currentWeight.round()} kg',
                        onChanged: (double value) {
                          setState(() {
                            _currentWeight = value;
                          });
                        },
                      ),
                    ),
                    Text(
                      "${_currentWeight.round()} kg",
                      // Mostra el valor actual de l'slider.
                      style: AppStyles.otherText,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
