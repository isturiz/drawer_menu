import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacion entre Pantallas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pantalla de inicio'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen01');
              },
              child: const Text('Ir a la primera Pantalla'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú de Navegación',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Pantalla 01'),
              onTap: () {
                Navigator.pushNamed(context, '/screen01');
              },
            ),
            ListTile(
              title: Text('Pantalla 02'),
              onTap: () {
                Navigator.pushNamed(context, '/screen02');
              },
            ),
            ListTile(
              title: Text('Pantalla 03'),
              onTap: () {
                Navigator.pushNamed(context, '/screen03');
              },
            ),
          ],
        ),
      ),
    );
  }
  
}
