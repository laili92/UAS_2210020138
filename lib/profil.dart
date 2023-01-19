import 'package:flutter/material.dart';

// ignore: camel_case_types
class profileDev extends StatefulWidget {
  static const routeName = "/profileDev";

  const profileDev({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _profileDevPageState createState() => _profileDevPageState();
}

// ignore: camel_case_types
class _profileDevPageState extends State<profileDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text(
          'Profile Developer',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              child: CircleAvatar(
                radius: 140,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 130,
                  backgroundImage: NetworkImage(
                    'https://cdn2.sharechat.com/img_402675_5dce23f_1671646398727_sc.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('LAILI HASTUTI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(height: 10),
            const Text('NPM : 2210020138\nWA : +6285387526068',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.whatsapp, size: 50, color: Colors.blue),
                  Icon(Icons.facebook, size: 50, color: Colors.blue),
                  Icon(Icons.telegram, size: 50, color: Colors.blue),
                  Icon(Icons.games, size: 50, color: Colors.blue),
                  Icon(Icons.image, size: 50, color: Colors.blue)
                ]),
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              child: Text('TUGAS UAS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            const SizedBox(
              width: 350,
              child: Text(
                'Mata Kuliah : Pemrograman Mobile\nKelas : 5A NonReguler Banjarmasin',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              //child: ,
            ),
          ],
        ),
      ),
    );
  }
}
