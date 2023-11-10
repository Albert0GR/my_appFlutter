import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0; //aqui es una propiedad en lugar de una variable
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
          title: const Text('Counter Screen'),
          elevation: 5.0,
          backgroundColor: const Color.fromRGBO(74, 66, 70, 0.0)),
      backgroundColor: const Color.fromARGB(255, 25, 212, 178),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Numero de Clicks', style: TextStyle(fontSize: 30)),
            Text('$count', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color.fromRGBO(74, 66, 70, 0.0),
        child: const Icon(Icons.add),
        onPressed: () {
          count++;
          setState(() {});
        },
      ),
    );
  }
}
