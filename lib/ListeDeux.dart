import 'package:flutter/material.dart';

class ListeDeux extends StatefulWidget {
  const ListeDeux({super.key});

  @override
  State<ListeDeux> createState() => _ListeDeuxState();
}

class _ListeDeuxState extends State<ListeDeux> {
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
      body: ListView.builder(
        itemCount: etudiants.length,
        itemBuilder: (context, index) {
        var etudiant =  etudiants[index];

        return ListTile(
          leading: Column(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 6, 95, 137),
                radius: 20.0,
                child: Text(
                  "${etudiant["filiere"]}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title:
              Text("${etudiant["nom"]} ${etudiant["prenom"]}"),
          subtitle: Text('${etudiant["telephone"]}'),
          trailing: IconButton(onPressed: (){

          },
          icon: Icon(Icons.more),
          ),
        );
      }),
    );
  }
}
