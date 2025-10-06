import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

Widget titleSection = Container(
  padding: const EdgeInsets.all(32), // padding di seluruh sisi
  child: Row(
    children: [
      Expanded(
        // soal 1: Column dalam Expanded
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // teks ke kiri
          children: [
            // soal 2: teks pertama dengan padding bawah
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Coban di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(
                color: Colors.grey, // teks abu-abu
              ),
            ),
          ],
        ),
      ),
      // soal 3: ikon bintang merah + teks rating
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const SizedBox(width: 8), // jarak antara ikon dan teks
      const Text('41'),
    ],
  ),
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Coban Rais dan Coban Putri adalah dua air terjun populer di Batu, Malang. '
        'Tempat ini terkenal dengan pemandangan alamnya yang hijau, udara sejuk, dan '
        'spot foto yang menarik untuk para wisatawan. '
        'Anda bisa menikmati trekking ringan sambil menikmati keindahan alam. '
        'Jangan lupa membawa kamera untuk mengabadikan momen indah di sini.\n\n'
        'Nama: Fatima Sitta\n'
        'NIM: 2341760167',
    softWrap: true,
  ),
);

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/coban.jpeg',
              width: 600,
              height: 240,
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
}

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }