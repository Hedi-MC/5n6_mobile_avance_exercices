import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoListe(title: 'Flutter Demo Home Page'),
    );
  }
}

class DemoListe extends StatefulWidget {
  const DemoListe({super.key, required this.title});

  final String title;

  @override
  State<DemoListe> createState() => _DemoListeState();
}

class _DemoListeState extends State<DemoListe> {
  List<String> listeEnMemoire = [];

  @override
  void initState() {
    super.initState();
    listeEnMemoire = [];
    listeEnMemoire.add("Hedi");
    listeEnMemoire.add("Alex");
    listeEnMemoire.add("Julien");
    listeEnMemoire.add("Vincent");
    listeEnMemoire.add("Eli");
  }

  void rafraichir() {
    listeEnMemoire = [];
    listeEnMemoire.add("Hedi");
    listeEnMemoire.add("Alex");
    listeEnMemoire.add("Julien");
    listeEnMemoire.add("Vincent");
    listeEnMemoire.add("Eli");
    Random rand = Random();
    listeEnMemoire.shuffle(rand);
    setState(() {});
  }

  validateOrder(List<String> list) {
    List<String> listBase = list;
    List<String> listEnOrdre = List<String>.from(list);
    listEnOrdre.sort((a, b) => a.toString().compareTo(b.toString()));

    bool Real = listEquals(list, listEnOrdre);
    if (Real) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("En ordre, Rafraichissement")));

      rafraichir();
    } else {
      setState(() {});
    }
  }

  moveUp(int index) {
    String motAffect;
    String motBouge;

    if (index != 0) {
      motAffect = listeEnMemoire[index - 1];
      motBouge = listeEnMemoire[index];

      listeEnMemoire[index] = motAffect;
      listeEnMemoire[index - 1] = motBouge;
    } else {
      motAffect = listeEnMemoire[listeEnMemoire.length - 1];
      motBouge = listeEnMemoire[index];

      listeEnMemoire[index] = motAffect;
      listeEnMemoire[listeEnMemoire.length - 1] = motBouge;
    }
  }
  moveDown(int index) {
    String motAffect;
    String motBouge;

    if (index !=listeEnMemoire.length-1) {
      motAffect = listeEnMemoire[index + 1];
      motBouge = listeEnMemoire[index];

      listeEnMemoire[index] = motAffect;
      listeEnMemoire[index + 1] = motBouge;
    } else {
      motAffect = listeEnMemoire[0];
      motBouge = listeEnMemoire[index];

      listeEnMemoire[index] = motAffect;
      listeEnMemoire[0] = motBouge;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoListe'),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: listeEnMemoire.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: TextButton(
                  onPressed: () {
                    moveDown(index);

                    validateOrder(listeEnMemoire);
                  },
                  child: Text("DOWN")),
              title: Text('item #${listeEnMemoire[index]}'),
              trailing: TextButton(
                  onPressed: () {
                    moveUp(index);

                    validateOrder(listeEnMemoire);
                  },
                  child: Text("UP")));
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: rafraichir,
        tooltip: 'Increment',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
