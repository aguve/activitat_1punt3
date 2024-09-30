import 'package:activitat_1punt3/styles/app_styles.dart';
import 'package:flutter/material.dart';

Widget statCard(IconData icon, String label, String value) {
  return Card(
    elevation: 3,
    color: const Color(0xffbf63f8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
