import 'package:flutter/material.dart';
import 'screen 1.dart';
import 'screen 2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/x1': (context) => Screen1(),
        '/x2': (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  void SelectedScreen(BuildContext ct, int n) {
    Navigator.of(ct).pushNamed(
        n == 1 ? '/x1' : '/x2',

        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Multi Screens'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.add_shopping_cart),text:'Part 1',),
              Tab(icon: Icon(Icons.add_shopping_cart),child:Text('Part 2',style: TextStyle(fontSize: 30),),),
            ],
          ) ,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),title:Text('Part 1'),),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),title:Text('Part 2'),),

          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                onTap: () => SelectedScreen(context, 1),
                title: Text(
                  'Go to Screen 1',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                onTap: () => SelectedScreen(context, 2),
                title: Text(
                  'Go to Screen 2',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              body: Center(child: Text('The First Part',style: TextStyle(fontSize: 30),),),
            ),
            Scaffold(
              body: Center(child: Text('The Second Part',style: TextStyle(fontSize: 30),),),
            ),
          ],
        ),
      ),
    );
  }
}
