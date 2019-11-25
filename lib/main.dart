import 'package:flutter/material.dart';
import 'package:dc/TampilCaptainAmerica.dart';
import 'package:dc/TampilHulk.dart';
import 'package:dc/TampilIronMan.dart';
import 'package:dc/TampilSpiderMan.dart';
import 'package:dc/TampilTheFlash.dart';
import 'package:dc/TampilThor.dart';
import 'package:dc/TampilWolverine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.lightBlueAccent,
          canvasColor: Colors.blueAccent,
          appBarTheme: AppBarTheme(color: Colors.blue, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Text('Khulafaur Rasyidin',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            ListView(
              children: <Widget>[
                _itemMenuUtama(context, "Bubur Ayam", TampilTheFlash()),
                _itemMenuUtama(context, "Warmindo", TampilWolverine()),
                _itemMenuUtama(context, "Gulai Tikungan", TampilThor()),
                _itemMenuUtama(context, "Mie Ayam", TampilCaptainAmerica()),
                _itemMenuUtama(context, "Nasi Goreng ", TampilHulk()),
                _itemMenuUtama(context, "Nasi Uduk", TampilIronMan()),
                _itemMenuUtama(context, "Roti Bakar Eddy", TampilSpiderMan())
              ],
            )
          ],
        ));
  }
}

Widget _itemMenuUtama(BuildContext context, String judul, Widget tampilan) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        child: Card(
          elevation: 1.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}
