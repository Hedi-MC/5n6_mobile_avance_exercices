import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';

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
            child: Text(Intl.getCurrentLocale(),
                style: Theme.of(context).textTheme.headlineLarge),
          ),
          Card(
            child: MaterialButton(
              onPressed: () {
                S.load(Locale('fr', 'FR'));
                setState(() {});
              },
              child: const ListTile(
                leading: Icon(Icons.add, size: 56.0),
                title: Text("Changer Langue Francais"),
                subtitle: Text('Toujours plus de chats'),
              ),
            ),
          ),
          Card(
            child: MaterialButton(
              onPressed: () {
                S.load(Locale('nw', 'NW'));
                var ababab = Intl.getCurrentLocale();
                setState(() {});
              },
              child: const ListTile(
                leading: Icon(Icons.add, size: 56.0),
                title: Text("Changer Langue Norvégien"),
                subtitle: Text('Toujours plus de chats'),
              ),
            ),
          ),
          Card(
            child: MaterialButton(
              onPressed: () {
                S.load(Locale('jp', 'JP'));
                setState(() {});
              },
              child: const ListTile(
                leading: Icon(Icons.add, size: 56.0),
                title: Text("Changer Langue Japonais"),
                subtitle: Text('Toujours plus de chats'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
