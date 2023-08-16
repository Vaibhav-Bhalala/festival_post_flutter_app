import 'package:festval_post/utils/globals.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool istoggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        ),
        centerTitle: true,
        backgroundColor: globals.appcolor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            istoggled = !istoggled;
          });
        },
        child: (istoggled) ? Icon(Icons.grid_3x3_rounded) : Icon(Icons.list),
      ),
    );
  }
}
