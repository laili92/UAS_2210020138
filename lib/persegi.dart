import 'package:flutter/material.dart';

// ignore: camel_case_types
class hitungPersegi extends StatefulWidget {
  static const routeName = "/hitungPersegi";

  const hitungPersegi({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _hitungPersegiPageState createState() => _hitungPersegiPageState();
}

// ignore: camel_case_types
class _hitungPersegiPageState extends State<hitungPersegi> {
  TextEditingController panjanginput = TextEditingController();
  TextEditingController lebarinput = TextEditingController();
  String result = "0";
  String panjang = "0";
  String lebar = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text(
          'Hitung Luas Persegi',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: panjanginput,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan Panjang',
                  hintText: '0',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: lebarinput,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan Lebar',
                  hintText: '0',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Luas Persegi = $panjang x $lebar\nLuas Persegi = $result',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      if (panjanginput.text == "" || lebarinput.text == "") {
                        panjang = '0';
                        lebar = '0';
                        result = '0';
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Peringatan : Inputan Salah')));
                      } else {
                        int sum = int.parse(panjanginput.text) *
                            int.parse(lebarinput.text);
                        panjang = panjanginput.text;
                        lebar = lebarinput.text;
                        result = sum.toString();
                      }
                    },
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Hitung Luas Persegi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
