import 'package:flutter/material.dart';
import 'package:my_app/src/models/socket_io_model.dart';
import 'package:my_app/src/utils/constraints.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  SocketModel model = SocketModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          model.sendingUUID(Constants.getUUID);
        },
        child: const Text("UUID"),
      )),
    );
  }
}
