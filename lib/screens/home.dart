import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getUserData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // snapshot.connectionState == ConnectionState.done ||
            if (snapshot.hasData) {
              List usuarios = snapshot.data["data"] as List;

              // generando lista de widgets con los datos del usuario
              List<Widget> widgetUsuarios = usuarios.map((usuario) {
                return Text(usuario['first_name']);
              }).toList();

              return ListView(
                children: widgetUsuarios,
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

Future<Map> getUserData() async {
  Client http = Client();
  Uri uri = Uri.parse('https://reqres.in/api/users');
  Response respuesta = await http.get(uri);
  Map map = jsonDecode(respuesta.body);
  return map;
}
