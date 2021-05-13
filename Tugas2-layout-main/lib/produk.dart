import 'package:flutter/material.dart';
import 'detail_produk.dart';

class produk extends StatelessWidget {
  produk(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Obat Tiensi List")),
      backgroundColor: Colors.lightGreen[300],
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "chitin chitosan",
                  deskripsi:
                      "Tianshi Muncord Cordyceps kapsul adalah suplemen untuk meningkatkan imunitas atau kekebalan tubuh, serta mencegah tumor dan penyakit lainnya. Suplemen ini merupakan produk konsumen yang dapat dibeli bebas.",
                  harga: 330000,
                  gambar: "chitin.jpg",
                  star: 2,
                ),
              ));
            },
            child: produk(
                nama: "Chitin Chitosan",
                deskripsi:
                    "promo chitin chitosan tiensi original|100 kapsul|pelangsing dan manfaat lainya",
                harga: 5000,
                gambar: "chitin.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Muncord Tiensi",
                  deskripsi:
                      "Tianshi Muncord Cordyceps kapsul adalah suplemen untuk meningkatkan imunitas atau kekebalan tubuh, serta mencegah tumor dan penyakit lainnya. Suplemen ini merupakan produk konsumen yang dapat dibeli bebas.",
                  harga: 340000,
                  gambar: "muncord.jpg",
                  star: 5,
                ),
              ));
            },
            child: produk(
                nama: " Muncord Tiensi",
                deskripsi: "Muncord Tiensi|isi 100 kapsul.",
                harga: 340000,
                gambar: "muncord.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Renuves Tiensi",
                  deskripsi:
                      " TIENS Renuves Capsules Tianshi Beneficial Herbal Paru-Paru Antioksidan Alami Suplemen [Original/ 150 Kapsul] merupakan suplemen yang dapat mengatasi kekurangan oksigen mendukung regenerasi sel stabilkan tekanan darah memberikan tidur berkualitas menghilangkan rasa lelah mencegah kanker mencegah uban anti oksidan alami",
                  harga: 539000,
                  gambar: "Renuves.jpg",
                  star: 5,
                ),
              ));
            },
            child: produk(
                nama: "Renuves Tiensi",
                deskripsi: "Tiensi Renuves|isi 150 kapsul|original",
                harga: 539000,
                gambar: "Renuves.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Sprilulina Tiensi",
                  deskripsi:
                      "Spirulina sering kali disebut sebagai superfood, karena memiliki nutrisi yang lengkap dan kandungan protein yang cukup tinggi. Berkat kandungan nutrisinya tersebut, spirulina dipercaya dapat memberikan beragam manfaat, seperti meningkatkan sistem imun, menjaga kesehatan jantung, hingga meredakan gejala alergi",
                  harga: 343000,
                  gambar: "sprilulina.jpg",
                  star: 5,
                ),
              ));
            },
            child: produk(
                nama: "Tiensi Sprilulina",
                deskripsi:
                    "Tiensi Sprilulina Capsule|isi 100 kapsul|pelengkap gizi dan nutrisi",
                harga: 343000,
                gambar: "sprilulinajpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "vitaaline",
                  deskripsi:
                      "Vitaline Bisa mengurangi kelebihan lemak dalam darah, mengkoreksi penyakit pembuluh darah jantung. ANTI PENUAAN DINI, Sebagai antioksidan dan anti-aging",
                  harga: 5500,
                  gambar: "vitaline.jpg",
                  star: 5,
                ),
              ));
            },
            child: produk(
                nama: "Vitaline Tiensi",
                deskripsi: "Tiensi Vitaline softgel|30 softgel|original",
                harga: 5500,
                gambar: "vitaline.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen[700],
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: " + this.harga.toString(),
                      style: TextStyle(color: Colors.lightGreen[800]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
