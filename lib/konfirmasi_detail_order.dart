import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaundryOrderConfirmation(),
    );
  }
}

class LaundryOrderConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laundry Order Confirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Budi - 211145671F',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Satuan - (3 Item - 72 Jam)'),
            Text('Cuci + Setrika'),
            Text('Selesai: Jumat 12/02/2025'),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.teal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KONFIRMASI ORDER LAUNDRY',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Total Biaya Laundry',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Rp. 50.000,-',
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ItemCard(itemName: 'Jaket', price: 1000, quantity: 1),
            ItemCard(itemName: 'Jas', price: 25000, quantity: 1),
            ItemCard(itemName: 'Selimut', price: 15000, quantity: 1),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('BAYAR NANTI'),
                    style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('LUNAS'),
                    style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String itemName;
  final int price;
  final int quantity;

  ItemCard({required this.itemName, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(itemName),
        subtitle: Text('Rp.$price,-'),
        trailing: Text('$quantity Item'),
      ),
    );
  }
}
