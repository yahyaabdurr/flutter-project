import 'package:flutter/material.dart';

/*
  Scaffold terdiri menjadi 3 bagian yaitu
  1. App Bar => bagian navbar pada app
    
  2. Body => main content pada sebuah app
  3. Floating Action Button
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text("Flutter Basic"),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Selamat Datang',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Go To Second Screen'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Go To Second Screen'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Go To Second Screen'),
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
