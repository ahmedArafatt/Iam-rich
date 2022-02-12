import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {

  void SelectedScreen(BuildContext ct) {
    Navigator.of(ct).pushReplacementNamed(
      '/x2',

    );
  }

  @override
  Widget build( BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Container(
        child: Center(

          child: InkWell(
            onTap: () => SelectedScreen(context),
            child: Text(
              'Go to Screen 2',
              style: TextStyle(fontSize: 30),
            ),
          ),
       ),
      ),
    );
  }
}