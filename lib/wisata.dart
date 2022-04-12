import 'package:flutter/material.dart';

void main() {
  runApp(const wisata());
}

class wisata extends StatelessWidget {
  const wisata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Bay of Islands",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Northland, Newzealand',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.black,
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                '4.2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );

    Color warna = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn((Colors.black), Icons.call, 'CALL'),
        _buildButtonColumn((Colors.black), Icons.near_me, 'ROUTE'),
        _buildButtonColumn((Colors.black), Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        '       Bay of Islands adalah region mikro yang terdiri dari kota-kota Opua, Paihia, Russell dan Kerikeri, dan wilayah luas kepulauan lepas pantai di antara Cape Brett dan Purerua Peninsula. Sebuah layanan feri penumpang beroperasi antara Paihia dan Russell, sementara angkutan feri menyediakan transportasi antara Opua dan Okiato. Cara terbaik untuk menemukan keindahan Bay of Islands adalah dengan mencarter yacht. \n\n       Bergabung dengan pesiar satu hari atau menyewa kayak laut. Banyak penyelenggara tur di region yang menawarkan berbagai perjalanan ke Cape Brett yang spektakuler dan Hole in the Rock di Piercy Island. Setelah mengelilingi Tapeka Point, yang terletak di utara Russell, Anda memasuki taman bermain petualangan maritim dengan banyak sekali margasatwa di antaranya penguin, lumba-lumba, ikan marlin, paus, burung rudal dan masih banyak spesies lainnya. Sebagian besar pulau-pulau di teluk memiliki jalur pejalan kaki dan ada bumi perkemahan di Urupukapuka Island (dikelola oleh Departemen Konservasi).',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bay of Islands',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('Bay of Islands'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/boi.jpg',
              width: 600,
              height: 180,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color warna, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: warna),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: warna,
            ),
          ),
        ),
      ],
    );
  }
}
