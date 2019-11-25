import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TampilTheFlash());

class TampilTheFlash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: HomeUtama(),
    );
  }
}

// id.wikipedia.org/wiki/Daftar_ilmuwan_Muslim

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The Flash"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "The Flash",
              "w644.jpeg",
              "Di urutan 10, ada karakter The Flash dari DC yang mungkin menjadi inspirasi dari superhero asli Indonesia, Gundala Putra Petir.Superhero dengan kekuatan super bisa berlari dalam kecepatan yang luar biasa ini pertama kali muncul pada tahun 1956 dari hasil karya Robert Kanigher.Beberapa fans menyukainya karena sifatnya yang lucu dan humoris. Mungkin juga karena The Flash memiliki kostum yang cukup keren."),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String nama, String gambar, String deskripsi) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image(image: NetworkImage(gambar), height: 300.0, fit: BoxFit.cover),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              nama,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              deskripsi,
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}