// Definició de la classe User.

class User {
  static const String usrUrl =
      "https://randomuser.me/api/portraits/women/44.jpg";

  final String name;
  final String sName;
  final String? imgUrl;
  final String recomendations;
  final double height;
  final double weight;
  final double runnedTime;
  final double runnedDist;
  final int activities;

  User({
    required this.name,
    required this.sName,
    this.imgUrl,
    required this.recomendations,
    required this.height,
    required this.weight,
    required this.runnedTime,
    required this.runnedDist,
    required this.activities,
  });
}
