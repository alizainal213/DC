import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TampilHulk());

class TampilHulk extends StatelessWidget {
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
              "Hulk",
              "hulk.jpeg",
              "Siapa yang tidak mengenal superhero berwarna hijau dan berbadan besar ini? Ia terkenal karena cerita klasiknya: berubah menjadi monster ketika marah.Hulk bisa dikatakan sebagai salah satu superhero terkuat yang dimiliki oleh Marvel, meskipun serangannya terkadang membabi buta dan tidak melihat mana kawan mana lawan.Muncul pertama kali pada tahun 1962, Bruce Banner memiliki kemampuan ini setelah percobaan sinar gamma yang diarahkan kepadanya."),
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