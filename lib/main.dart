// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 100, 142),
          title: const Text("reader",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
            Icons.person_outlined,
              ),
            ),
          ],
        ),
        
        backgroundColor: Color.fromARGB(255, 247, 244, 232),
        body: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 16, 100, 142),
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35), 
                bottomRight: Radius.circular(35))
            ),
          ),
            ElevatedButton(
              onPressed: () {
                // Acción que se realiza al presionar el botón
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(41, 169, 122, 1), // Background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Button border shape
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),              
              ),
              child: Text('Submit progress', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}