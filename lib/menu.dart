import 'package:flutter/material.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profil.dart';
//import 'package:uas/main.dart';
//import 'package:percobaan7_tugas_uts/screen/barang_view.dart';
//import 'package:percobaan7_tugas_uts/screen/login.dart';

// ignore: camel_case_types
class menuAwal extends StatefulWidget {
  static const routeName = "/menuAwal";

  const menuAwal({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _menuAwalPageState createState() => _menuAwalPageState();
}

// ignore: camel_case_types
class _menuAwalPageState extends State<menuAwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text(
          'Menu',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const hitungPersegi()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Luas Persegi'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const hitungLingkaran()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Luas Lingkaran'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const profileDev()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Profil Develover'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
