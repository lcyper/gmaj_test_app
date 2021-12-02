// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gmaj_test_app/screens/bienvenida.dart';
import 'package:gmaj_test_app/widgets/box.dart';
import 'package:random_color/random_color.dart';

class NewPage extends StatefulWidget {
  NewPage({Key key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int number = 0;
  bool isOpen = true;
  List imagenes = ['januca.jpg', 'januca2.jpg'];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
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
          SizedBox(height: 10),
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
      appBar: AppBar(),
      // appBar: AppBar(
      //   title: Text('Nueva Pantalla'),
      //   centerTitle: true,
      //   // backgroundColor: Colors.grey,
      // ),
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            Switch(
              value: isOpen,
              onChanged: (bool newValue) {
                setState(() {
                  isOpen = newValue;
                });
                print('el switcher es $newValue');
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lista de colores'),
            ),
            ElevatedButton(
              onPressed: isOpen
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bienvenida(),
                        ),
                      );
                    }
                  : null,
              child: Text('ir a la otra pagina'),
            ),
            Image.asset('assets/${imagenes[isOpen ? 0 : 1]}'),
          ],
        ),
      ),
    );
  }
}
