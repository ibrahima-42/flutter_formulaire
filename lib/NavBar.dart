import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("NavBar"),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(icon: Icon( Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon( Icons.favorite),label: "favorite"),
            BottomNavigationBarItem(icon: Icon( Icons.add),label: "add "),
            BottomNavigationBarItem(icon: Icon( Icons.message),label: "message"),
          ],),
      ),
    );
  }
}