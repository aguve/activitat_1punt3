import 'package:activitat_1punt3/styles/app_styles.dart';
import 'package:flutter/material.dart';

//  Definició de les targetes que es fan servir per mostrar les estadístiques
//  de l'usuari a la profile_page.
//  També es defineixen els estils de les targetes.
Widget statCard(IconData icon, String label, String value) {
  return Card(
    elevation: 3,
    color: const Color(0xffbf63f8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 8),
          Text(
            label,
            style: AppStyles.otherText,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppStyles.activityType,
          ),
        ],
      ),
    ),
  );
}
