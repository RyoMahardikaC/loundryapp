import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RiwayatScreen(),
    );
  }
}

class RiwayatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          LaundryItem(
            type: 'Kiloan Express',
            weight: '5,5Kg',
            customer: 'Budi (IF2111062021)',
            time: '14:00 - 18:00',
          ),
          LaundryItem(
            type: 'Kiloan Regular',
            weight: '2,5Kg',
            customer: 'Budi (IF2111062022)',
            date: 'Senin 05/02/2022',
          ),
          LaundryItem(
            type: 'Satuan Laundry',
            quantity: '10 Pcs',
            customer: 'Budi (IF2111062022)',
            date: 'Kamis 07/02/2022',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

class LaundryItem extends StatelessWidget {
  final String type;
  final String weight;
  final String quantity;
  final String customer;
  final String time;
  final String date;

  LaundryItem({
    required this.type,
    this.weight = '',
    this.quantity = '',
    required this.customer,
    this.time = '',
    this.date = '',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            if (weight.isNotEmpty) Text(weight),
            if (quantity.isNotEmpty) Text(quantity),
            SizedBox(height: 8.0),
            Text(customer),
            if (time.isNotEmpty) Text(time),
            if (date.isNotEmpty) Text(date),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Selesai'),
            ),
          ],
        ),
      ),
    );
  }
}
