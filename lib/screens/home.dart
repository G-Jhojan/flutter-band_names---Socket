// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_own_test/models/artist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // aqui vamos a poner todo el map
  List<Artist> artist = [
    Artist(id: '1', name: 'Blessd', album: 'Echo en Medellin', value: 9),
    Artist(id: '2', name: 'Ryan Castro', album: 'Echo en Medellin', value: 49),
    Artist(id: '3', name: 'SOG', album: 'Echo en Medellin', value: 95),
    Artist(id: '4', name: 'El Cloy', album: 'Echo en Medellin', value: 99),
    Artist(id: '5', name: 'Nath', album: 'Echo en Medellin', value: 93),
    Artist(id: '6', name: 'Feid', album: 'Echo en Medellin', value: 97),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        title: const Text(
          'Review App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: artist.length,
          itemBuilder: (context, i) => _artistTile(artist[i])),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: addNewArtist,
      ),
    );
  }

  Widget _artistTile(Artist artist) {
    return Dismissible(
        key: Key(artist.id!),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          print('direction: $direction');
          print('id: ${artist.id}');
        },
        background: Container(
          padding: const EdgeInsets.only(left: 8.0),
          color: Colors.indigoAccent,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text('Eliminar de la Lista',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        child: ListTile(
            title: Text(artist.name!),
            leading: CircleAvatar(
              child: Text(artist.name!.substring(0, 2)),
              backgroundColor: Colors.blue[100],
            ),
            trailing: Text(
              '${artist.value}',
              style: const TextStyle(fontSize: 20),
            ),
            onTap: () => print(artist.name)));
  }

  addNewArtist() {
    final textController = TextEditingController();
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Agregar Nuevo Artista'),
          content: CupertinoTextField(
            controller: textController
            ),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child:const Text('Agregar'),
               onPressed: () {}
               ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              child:const Text('Eliminar'),
               onPressed: () {}
               ),   
          ],  
           
        );
          
      },
    );
  }
}
