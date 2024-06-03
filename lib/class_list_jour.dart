import 'package:flutter/material.dart';

import 'package:flutter_application_9/class_jour.dart';

import 'package:flutter_application_9/class_details.dart';

class JourListScreen extends StatelessWidget {
  final List<Jour> jours = [
    Jour(intitule: 'Lundi', description: 'Tâches du lundi : ...'),
    Jour(intitule: 'Mardi', description: 'Tâches du mardi : ...'),
    Jour(intitule: 'Mercredi', description: 'Tâches du mercredi : ...'),
    Jour(intitule: 'Jeudi', description: 'Tâches du jeudi : ...'),
    Jour(intitule: 'Vendredi', description: 'Tâches du vendredi : ...'),
    Jour(intitule: 'Samedi', description: 'Tâches du samedi : ...'),
    Jour(intitule: 'Dimanche', description: 'Tâches du dimanche : ...'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Jours'),
      ),
      body: ListView.builder(
        itemCount: jours.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jours[index].intitule),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JourDetailScreen(jour: jours[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}