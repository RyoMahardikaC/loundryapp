import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailItemSatuan(),
    );
  }
}

class DetailItemSatuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Item Satuan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Item',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildItemRow('Kemeja', 'Rp.500,-'),
                _buildItemRow('Celana Bahan', 'Rp.1000,-'),
                _buildItemRow('Jaket', 'Rp.1000,-'),
                _buildItemRow('Kaos', 'Rp.500,-'),
                _buildItemRow('CD / BRA', 'Rp.300,-'),
                _buildItemRow('Jas', 'Rp.25000,-'),
                _buildItemRow('Selimut', 'Rp.15000,-'),
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Budi Doremi'),
                    Text('Layanan Satuan'),
                    Text('3 Item Satuan'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle order button press
                  },
                  child: Text('ORDER'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemRow(String itemName, String itemPrice) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        child: ListTile(
          title: Text(itemName),
          subtitle: Text(itemPrice),
          trailing: ElevatedButton(
            onPressed: () {
              // Handle add button press
            },
            child: Text('Tambahkan'),
          ),
        ),
      ),
    );
  }
}
