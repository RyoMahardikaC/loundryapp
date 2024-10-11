import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaundryScreen(),
    );
  }
}

class LaundryScreen extends StatefulWidget {
  @override
  _LaundryScreenState createState() => _LaundryScreenState();
}

class _LaundryScreenState extends State<LaundryScreen> {
  double weight = 0.0;

  void _onKeyPressed(String value) {
    setState(() {
      if (value == '↲') {
        weight = 0.0;
      } else if (value == '.') {
        // Handle decimal point input
      } else {
        weight = double.parse(weight.toString() + value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Budi - 21114567IF',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'KG\'an - Kiloan Regular (3 Hari)',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Cuci + Setrika',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Selesai: Jumat 12/02/2025',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.black54,
                  child: Column(
                    children: [
                      Text(
                        'Total Biaya Laundry',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'Rp. 0,-',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Masukkan Jumlah KG',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '${weight.toStringAsFixed(1)} Kg',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Pastikan Jumlah Berat Laundry Sudah Benar',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  children: [
                    ...List.generate(9, (index) {
                      return _buildKey((index + 1).toString());
                    }),
                    _buildKey('0'),
                    _buildKey('.'),
                    _buildKey('↲'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildActionButton('Batal Order', Colors.red),
                    _buildActionButton('Lanjut Pembayaran', Colors.blue),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKey(String value) {
    return GestureDetector(
      onTap: () => _onKeyPressed(value),
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      ),
    );
  }
}
