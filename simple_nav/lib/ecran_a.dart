import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class EcranA extends StatefulWidget {
  final String valeur;
  const EcranA({Key? key, required this.valeur}) :super(key:key);


  @override
  State<EcranA> createState() => _EcranAState();
}

class _EcranAState extends State<EcranA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran A'),
      ),
      body: Text('Tu as navigué vers A avec ${widget.valeur}')






    );
  }
}
