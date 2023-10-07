import 'package:flutter/material.dart';

import 'Read/home.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({super.key});

  @override
  State<Navigasi> createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int indexDipilih = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            indexDipilih = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: ""),
          NavigationDestination(icon: Icon(Icons.heart_broken), label: ""),
          NavigationDestination(icon: Icon(Icons.search), label: ""),
          NavigationDestination(icon: Icon(Icons.person), label: "")
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
        ),
        Container(
          alignment: Alignment.center,
        ),
        Container(
          alignment: Alignment.center,
        ),
        Container(
          alignment: Alignment.center,
        )
      ][indexDipilih],
    );
  }
}
