import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/imagenes/logo.png'),
              ),
            ),
            child: Text(
              '...::: Menú Lateral :::...',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Bienvenido'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          // Agrega más elementos del menú aquí según sea necesario
        ],
      ),
    );
  }
}
