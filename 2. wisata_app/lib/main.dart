import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      MainAxisAligment dan CrossAxisAligment
    
      Pada row MainAxisAlignment terletak pada horizontal
      sedangkan CrossAxisAligment terletak pada sisi Vertikal nya

      Pada Column kebalikannya
       */
      backgroundColor: Colors.black,
      // SingleChildScrollView digunakan agar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/farm-house.jpg'),
            Container(
              /*
              EdgeInsets memiliki beberapa enum
              https://api.flutter.dev/flutter/painting/EdgeInsets-class.html
               */

              margin: EdgeInsets.only(top: 16),
              child: Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text("Open Everyday")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.query_builder),
                      Text('09.00-20.00')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      Text('25.000')
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListView(
              children: <Widget>[
                Image.network(
                    'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
