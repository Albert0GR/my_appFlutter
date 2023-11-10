import 'package:flutter/material.dart';

class Dog {
  final int id;
  final String name;
  final int age;

  const Dog({
    required this.id,
    required this.name,
    required this.age,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
          title: const Text('Aplicacion 1'),
          elevation: 5.0,
          backgroundColor: const Color.fromRGBO(74, 66, 70, 0.0)),
      backgroundColor: const Color.fromARGB(255, 25, 212, 178),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Numero de Clicks', style: TextStyle(fontSize: 30)),
            Text('10', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(74, 66, 70, 0.0),
        child: const Icon(Icons.add),
        onPressed: () {
          print('has hecho click');
        },
      ),
    );
  }
}
