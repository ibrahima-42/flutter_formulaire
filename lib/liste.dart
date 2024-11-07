import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  var etudiants = [
    {
      "nom": "diallo",
      "prenom": "malal",
      "telephone": "77 0012332",
      "filiere": "DFE",
    },
    {
      "nom": "fall",
      "prenom": "ndarawpro",
      "telephone": "77 1236578",
      "filiere": "DFE",
    },
    {
      "nom": "diagne",
      "prenom": "ibrahima",
      "telephone": "77 1230579",
      "filiere": "DFE",
    },
    {
      "nom": "kevin",
      "prenom": "floren",
      "telephone": "77 1230172",
      "filiere": "DFE",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 6, 95, 137),
                        radius: 20.0,
                        child: Text("${etudiants[index]["filiere"]}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                      "${etudiants[index]["nom"]} ${etudiants[index]["prenom"]}"),
                  subtitle: Text('${etudiants[index]["telephone"]}'),
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: etudiants.length));
  }
}
