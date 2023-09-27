import 'package:flutter/material.dart';

class Screen02 extends StatefulWidget {
  const Screen02({super.key});

  @override
  State<Screen02> createState() => _Screen02State();
}

class _Screen02State extends State<Screen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Segunda Pantalla'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen03');
              },
              child: const Text('Ir a la tercera Pantalla'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
