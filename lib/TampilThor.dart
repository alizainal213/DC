import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TampilThor());

class TampilThor extends StatelessWidget {
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
        title: Text("The Thor"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "The Thor",
              "Thor.jpeg",
              "Superhero Marvel yang terinspirasi dari mitologi Skandinavia, Thor, merupakan superhero selanjutnya yang berada di dalam daftar ini.Penguasa Asgard ini merupakan dewa petir, sehingga kekuatannya adalah petir. Apalagi, ia memiliki salah satu senjata terkuat di Marvel, Mjolnir.Palu tersebut juga mampu membuat Thor terbang. Selain Mjolnir, di film Marvel, Thor juga menggunakan senjata Stormbreaker."),
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