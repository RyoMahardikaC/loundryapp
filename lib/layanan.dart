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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pilih Layanan Order Laundry',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            LaundryOption(title: 'Cuci'),
            LaundryOption(title: 'Cuci Kering'),
            LaundryOption(title: 'Cuci Lipat'),
            LaundryOption(title: 'Setrika'),
            LaundryOption(title: 'Cuci + Setrika'),
          ],
        ),
      ),
    );
  }
}

class LaundryOption extends StatelessWidget {
  final String title;

  LaundryOption({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[300],
              child: Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Text('Pilih'),
          ),
        ],
      ),
    );
  }
}
