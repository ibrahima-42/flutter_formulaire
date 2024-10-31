import 'package:legendeone/accueil.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          const Image(width: 300, image: AssetImage("assets/isep.jpg")),
          const Text("Carpoolin" ,style: TextStyle(fontSize: 36,fontWeight: FontWeight.w800),),
          const Text("drive & save money",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,color: Colors.grey
            ),
            child: IconButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const Accueil() ));
            }, icon: const Icon(Icons.arrow_forward)))
        
        
          ],),
      ),
    );
  }
}