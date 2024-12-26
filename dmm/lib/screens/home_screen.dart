import 'package:flutter/material.dart';
import '../widgets/token_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wallet'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TokenCard(tokenName: 'Solana', balance: '5.4', price: '23.00'),
          TokenCard(tokenName: 'Ethereum', balance: '0.8', price: '1,550.00'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Add functionality for adding tokens
        },
      ),
    );
  }
}
