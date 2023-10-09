// ignore_for_file: library_prefixes

import 'dart:async';
import 'dart:developer';
import 'package:socket_io_client/socket_io_client.dart' as asSocket;

class SocketModel {
  static const String url = "http://10.10.77.159:3000/";
  static late asSocket.Socket _socket;
  static late StreamSocketListener controller;

  SocketModel() {
    initSocket();
  }
  static Future<void> initSocket() async {
    controller = StreamSocketListener<Object>();
    _socket = asSocket.io(url, <String, dynamic>{
      'transports': ['websocket']
    });
    // connecction socket
    _socket.connect();
    _socket.onConnect(
      (_) {
        _socket.on('data', (data) => log(data.toString()));
      },
    );
  }

  void dipost() {
    controller.dispost();
    _socket.disconnect();

    //  _socket.onDisconnect((data) => );
  }

  Stream get output => controller.outPutResponse;

  Future<void> sendingUUID(String uuid) async {
    _socket.emit('uuid', uuid);
    return;
  }
}

class StreamSocketListener<T> {
  StreamController<T> instance = StreamController<T>();
  void addResponse(T value) => instance.sink.add(value);
  Stream<T> get outPutResponse => instance.stream;
  void dispost() {
    instance.close();
  }
}
