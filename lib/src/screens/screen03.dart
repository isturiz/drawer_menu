import 'package:flutter/material.dart';

class Screen03 extends StatefulWidget {
  const Screen03({super.key});

  @override
  State<Screen03> createState() => _Screen03State();
}

class _Screen03State extends State<Screen03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Volver a la pantalla de inicio'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: const Text('Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
