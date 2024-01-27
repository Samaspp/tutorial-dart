import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Breakfast', style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
        elevation: 0.0,
        centerTitle: true,
        leading: Container(
          decoration:  BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30)
          ),
        ),
      ),
    );
  }
}