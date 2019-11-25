import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TampilCaptainAmerica());

class TampilCaptainAmerica extends StatelessWidget {
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
        title: Text("Captain America"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "Captain America",
              "Captain.jpeg",
              "Steve Rogers alias Captain America merupakan representasi sempurna dari partriotisme Amerika Serikat.Berawal dari seorang pria ringkih yang menjadi sukarelawan untuk mencoba serum Super Soldier, ia berubah menjadi manusia super dengan tubuh kuatnya.Setelah pertempuran melawan Hydra, Captain America mengorbankan dirinya dan tertidur di es selama puluhan tahun, sebelum bergabung dengan para Avengers."),
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