import 'package:activitat_1punt3/styles/app_styles.dart';
import 'package:flutter/material.dart';

Widget activityTile(
    String title, String subtitle, String distance, IconData icon) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      leading: Icon(
        icon,
        color: const Color(0xffbf63f8),
        size: 45,
      ),
      title: Text(title, style: AppStyles.activityType),
      subtitle: Text(subtitle),
      trailing: Text(
        distance,
        style: AppStyles.distance,
      ),
    ),
  );
}
