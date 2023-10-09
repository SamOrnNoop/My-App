import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_app/src/models/socket_io_model.dart';

import 'package:my_app/src/utils/constraints.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRcodeGeneratorPage extends StatefulWidget {
  const QRcodeGeneratorPage({super.key});

  @override
  State<QRcodeGeneratorPage> createState() => _QRcodeGeneratorPageState();
}

class _QRcodeGeneratorPageState extends State<QRcodeGeneratorPage> {
  SocketModel socketModel = SocketModel();
  @override
  void initState() {
    socketModel.sendingUUID("");
    super.initState();
  }

  @override
  void dispose() {
    socketModel.dipost();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.baseColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text("QR code generator"),
        centerTitle: true,
      ),
      body: StreamBuilder<dynamic>(
          stream: socketModel.output,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Container();
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                // child: Container(
                //   decoration: BoxDecoration(
                //       color: Constants.white,
                //       borderRadius: Constants.borderRadius),
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                //   child: QrImage(data: json.encode(snapshot.data)),
                // ),
                child: Text(snapshot.data.toString()),
              ),
            );
          }),
    );
  }
}
