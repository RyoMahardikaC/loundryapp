import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FragranceSelectionScreen(),
    );
  }
}

class FragranceSelectionScreen extends StatefulWidget {
  @override
  _FragranceSelectionScreenState createState() => _FragranceSelectionScreenState();
}

class _FragranceSelectionScreenState extends State<FragranceSelectionScreen> {
  String selectedFragrance = 'Cherry Blossom';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Pewangi Laundry'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi untuk tombol kembali
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Silahkan Pilih Pewangi Laundry Yang Anda Sukai',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            buildFragranceOption('Aroma Lily'),
            buildFragranceOption('Cherry Blossom'),
            buildFragranceOption('Ocean Fresh'),
            buildFragranceOption('Red Downy'),
            buildFragranceOption('Lavender'),
          ],
        ),
      ),
    );
  }

  Widget buildFragranceOption(String fragrance) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: selectedFragrance == fragrance ? Colors.blue : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            selectedFragrance = fragrance;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(fragrance, style: TextStyle(color: Colors.black)),
            Text('Pilih', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
