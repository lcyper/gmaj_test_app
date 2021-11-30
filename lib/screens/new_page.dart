// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  NewPage({Key key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                print('boton apretado');
                number++;
                print('Numero vale $number');
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                print('boton apretado');
                number--;
                print('Numero vale $number');
              });
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Nueva Pantalla'),
        centerTitle: true,
        // backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'El numero es $number',
            style: TextStyle(fontSize: 50),
          ),
          // Image.network(
          //     'https://static.nationalgeographic.es/files/styles/image_3200/public/NW_SEO_SRT_025_HANUKKAH_espa~~~~~es~mux~~1.jpg?w=600&h=300'),
          Image.asset('assets/januca2.jpg'),
        ],
      ),
    );
  }
}
