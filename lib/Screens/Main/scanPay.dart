import 'package:flutter/material.dart';

class ScanPay extends StatefulWidget {
  @override
  _ScanPayState createState() => _ScanPayState();
}

class _ScanPayState extends State<ScanPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan & Pay ')
      ),
    );
  }
}