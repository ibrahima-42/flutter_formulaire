import 'package:flutter/material.dart';
import 'package:legendeone/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/forms");
              },
              child: Text("aller vers forms"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/liste");
              },
              child: Text("aller vers liste"),
            ),
          ),
        ],
      ),
    );
  }
}
