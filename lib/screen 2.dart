import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  void SelectedScreen(BuildContext ct) {
    Navigator.of(ct).pushReplacementNamed(
      '/x1',

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () => SelectedScreen(context),
            child: Text(
              'Go to Screen 1',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}