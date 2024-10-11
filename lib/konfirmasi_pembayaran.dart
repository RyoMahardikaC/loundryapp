import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaundryOrderConfirmationScreen(),
    );
  }
}

class LaundryOrderConfirmationScreen extends StatelessWidget {
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
        title: Text('Konfirmasi Pesanan Laundry'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Budi - 21114567IF',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Satuan - (3 Item - 72 Jam)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Cuci + Setrika (Cherry Blossom)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Selesai: Jumat 12/02/2022',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.teal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KONFIRMASI ORDER LAUNDRY',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Total Biaya Laundry',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'Rp. 50.000,-',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            PaymentOption(
              icon: Icons.account_balance_wallet,
              title: 'Gopay',
              subtitle: 'Pembayaran Menggunakan Uang Elektronik',
              color: Colors.blue,
            ),
            PaymentOption(
              icon: Icons.account_balance_wallet,
              title: 'Link Aja',
              subtitle: 'Pembayaran Menggunakan Uang Elektronik',
              color: Colors.red,
            ),
            PaymentOption(
              icon: Icons.account_balance_wallet,
              title: 'Dana',
              subtitle: 'Pembayaran Menggunakan Uang Elektronik',
              color: Colors.blueAccent,
            ),
            PaymentOption(
              icon: Icons.credit_card,
              title: 'Debit Payment',
              subtitle: 'Pembayaran Melalui Rekening Bank',
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  PaymentOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward, color: color),
      onTap: () {
        // Handle payment option tap
      },
    );
  }
}
