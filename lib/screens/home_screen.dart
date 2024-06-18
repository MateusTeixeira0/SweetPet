import 'package:flutter/material.dart';
import 'package:sweetpet/models/animal.dart';
import 'package:sweetpet/widgets/animal_item.dart';

class HomeScreen extends StatelessWidget {
  final List<Animal> animals = [
    Animal(
      name: 'Bella',
      age: 2,
      imageUrl: 'https://example.com/bella.jpg',
      description: 'Friendly and playful.',
    ),
    Animal(
      name: 'Milo',
      age: 3,
      imageUrl: 'https://example.com/milo.jpg',
      description: 'Loving and energetic.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SweetPet'),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (ctx, index) => AnimalItem(animals[index]),
      ),
    );
  }
}
