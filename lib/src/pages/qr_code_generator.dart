import 'package:flutter/material.dart';
import 'package:my_app/src/utils/constraints.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRcodeGeneratorPage extends StatelessWidget {
  const QRcodeGeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.baseColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text("QR code generator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Constants.white),
          child: QrImage(data: 'AAAAA'),
        ),
      ),
    );
  }
}
