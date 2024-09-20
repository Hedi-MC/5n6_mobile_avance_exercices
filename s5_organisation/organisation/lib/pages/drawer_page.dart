import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Mes chats',
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineLarge),
          ),
          Card(
            child: MaterialButton(
              onPressed: () {},
              child: const ListTile(
                leading: Icon(Icons.add, size: 56.0),
                title: Text('Ajouter un chat'),
                subtitle: Text('Toujours plus de chats'),
              ),
            ),
          ),
          Card(
            child: MaterialButton(
              onPressed: () {},
              child: const ListTile(
                leading: Icon(Icons.pets, size: 56.0),
                title: Text('Accueil'),
                subtitle: Text('Avec une liste de chats'),
              ),
            ),
          ),
        ],
      ),
    );

  }
}



