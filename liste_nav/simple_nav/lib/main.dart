import 'package:flutter/material.dart';

import 'ecran_a.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    TextEditingController text1 = TextEditingController();
    Truc trucCourant = new Truc();

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            onPressed: () {
              trucCourant.id = 1;
              trucCourant.name = "Orange";

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EcranA(valeur: trucCourant),
                ),
              );
            },
            child: Text("Orange"),
          ),
          OutlinedButton(
            onPressed: () {
              trucCourant.id = 2;
              trucCourant.name = "Banane";

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EcranA(valeur: trucCourant),
                ),
              );
            },
            child: Text("Banane"),
          ),
          OutlinedButton(
            onPressed: () {
              trucCourant.id = 3;
              trucCourant.name = "Pomme";

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EcranA(valeur: trucCourant),
                ),
              );
            },
            child: Text("Pomme"),
          ),
          OutlinedButton(
            onPressed: () {
              trucCourant.id = 4;
              trucCourant.name = "Raisin";

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EcranA(valeur: trucCourant),
                ),
              );
            },
            child: Text("Raisin"),
          ),
          OutlinedButton(
            onPressed: () {
              trucCourant.id = 5;
              trucCourant.name = "Melon";

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EcranA(valeur: trucCourant),
                ),
              );
            },
            child: Text("Melon"),
          ),
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Truc {
  String name = "";

  int id = 0;
}
