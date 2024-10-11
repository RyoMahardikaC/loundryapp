import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laundry App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(
              title: 'Detail Item Satuan',
              screen: DetailItemSatuan(),
            ),
            MenuButton(
              title: 'Laundry Order Confirmation',
              screen: konfirmasilayananloundry(),
            ),
            MenuButton(
              title: 'Fragrance Selection',
              screen: FragranceSelectionScreen(),
            ),
            MenuButton(
              title: 'Chat Interface',
              screen: ChatScreen(),
            ),
            MenuButton(
              title: 'Payment Receipt',
              screen: PaymentReceipt(),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final Widget screen;

  MenuButton({required this.title, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(title),
      ),
    );
  }
}

// Placeholder classes for screens that are not fully implemented
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat Interface')),
      body: Center(child: Text('Chat Interface Coming Soon')),
    );
  }
}

class PaymentReceipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment Receipt')),
      body: Center(child: Text('Payment Receipt Coming Soon')),
    );
  }
}

class FragranceSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fragrance Selection')),
      body: Center(child: Text('Fragrance Selection Coming Soon')),
    );
  }
}

// Include DetailItemSatuan and LaundryOrderConfirmation classes here...
// (The code for these classes should be the same as in your original file)