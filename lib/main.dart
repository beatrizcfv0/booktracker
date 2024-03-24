// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:booktracker/pages/books.dart';
import 'package:booktracker/pages/home.dart';
import 'package:booktracker/pages/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    BooksPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 100, 142),
          title: const Text(
            "reader",
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
        backgroundColor: Color.fromARGB(255, 255, 253, 247),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 16, 100, 142),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 375,
              left: 100,
              right: 100,
              child: ElevatedButton(
                onPressed: () {
                  // Action performed when button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(41, 169, 122, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: Text('Submit progress',style: TextStyle(color: Colors.white)),
              ),
            ),
            Positioned(
              left: 15,
              right: 15,
              bottom: 40,
              child: Container(
                height: 150,
                width: 360,
                padding: EdgeInsets.only(left: 20, top: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(217, 218, 218, 218),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              child: Text('Reading Goals'),
              ),
            ),
            _pages[_selectedIndex], 
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          backgroundColor: Color.fromARGB(255, 255, 253, 247),
          elevation: 0,
          selectedItemColor: Color.fromARGB(255, 16, 100, 142),
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
        ],
      ),
      ),
    );
  }
}