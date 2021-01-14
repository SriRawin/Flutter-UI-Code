import 'package:flutter/material.dart';
import 'package:my_wallet_app/cardSelection.dart';
import 'package:my_wallet_app/expenses.dart';
import 'package:my_wallet_app/header.dart';
import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Wallet App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.only(left: 20, top: 3, right: 20, bottom: 10),
          child: Column(
            children: [
              WalletHeader(),
              CardSelection(),
              Expenses(),
            ],
          ),
        ),
      ),
    );
  }
}
