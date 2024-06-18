import 'package:flutter/material.dart';
import 'package:sweetpet/models/animal.dart';
import 'package:sweetpet/screens/animal_detail_screen.dart';


class AnimalItem extends StatelessWidget {
  final Animal animal;

  AnimalItem(this.animal);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(animal.imageUrl),
      ),
      title: Text(animal.name),
      subtitle: Text('${animal.age} years old'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => AnimalDetailScreen(animal),
          ),
        );
      },
    );
  }
}
