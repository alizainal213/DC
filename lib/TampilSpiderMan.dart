import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TampilSpiderMan());

class TampilSpiderMan extends StatelessWidget {
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
        title: Text("Spider-Man"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "Spider-Man",
              "Spider.jpeg",
              "Kalau kita menengok beberapa tahun yang lalu, jika ditanya superhero Marvel paling terkenal, tentu saja jawabannya adalah Spider-Man.Ia memiliki versi film yang paling banyak dibandingkan dengan superhero Marvel lainnya. Bahkan, sudah tiga aktor di abad 21 yang pernah memerankan karakter Peter Parker.Kekuatannya juga sudah sangat melekat di benak kita. Digigit laba-laba super membuatnya memiliki kekuatan mengeluarkan jaring, berjalan di tembok, dan lain sebagainya."),
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