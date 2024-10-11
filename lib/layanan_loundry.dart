import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaundryServiceScreen(),
    );
  }
}

class LaundryServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Kembali'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Pilih Layanan Laundry',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            LaundryOption(
              title: 'Kiloan Express (5 Jam)',
              buttonColor: Colors.blue,
            ),
            LaundryOption(
              title: 'Kiloan Super Reguler (1 Hari)',
              buttonColor: Colors.indigo,
            ),
            LaundryOption(
              title: 'Kiloan Reguler (3 Hari)',
              buttonColor: Colors.blue,
            ),
            LaundryOption(
              title: 'Paket Promo Laundry (48 Jam)',
              buttonColor: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}

class LaundryOption extends StatelessWidget {
  final String title;
  final Color buttonColor;

  LaundryOption({required this.title, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: buttonColor),
          onPressed: () {
            // Handle button press
          },
          child: Text('Pilih'),
        ),
      ),
    );
  }
}