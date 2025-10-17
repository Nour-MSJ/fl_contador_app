import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(title: Text('HomeScreen'), elevation: 50.0),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bocata lomo'),
            SizedBox(height: 300.0, width: 300.0),
            Text('YA'),
          ],
        ),
      ),
    );
  }
}
