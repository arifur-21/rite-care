import 'package:ritecare_hms/screens/qr_code_screen/scanner_screen.dart';
import 'package:ritecare_hms/utils/color_styles.dart';

import 'generator_screen.dart';
import 'package:flutter/material.dart';




class QrCodeScreen extends StatefulWidget {
  @override
  _QrCodeScreenState createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.primaryColor,
          bottom: const TabBar(
            indicatorColor: Colors.white,

            tabs: [
              Tab(
                text: "Bar Code Scanner",
                icon: Icon(
                  Icons.qr_code,
                  size: 40,
                ),
              ),
              Tab(
                text: "Qr Code Generator",
                icon: Icon(
                  Icons.qr_code_scanner,
                  size: 40,
                ),
              ),
            ],
          ),

        ),
        body: TabBarView(
          children: [
            GeneratorScreen(),
            ScannerScreen(),
          ],
        ),
      ),
    );
  }
}