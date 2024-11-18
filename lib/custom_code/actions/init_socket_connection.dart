// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'dart:async'; // Importación necesaria para usar Completer

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;

  SocketService._internal();

  IO.Socket? _socket;

  void connect(String userToken) {
    if (_socket != null) {
      print('El socket ya está conectado');
      return;
    }

    _socket = IO.io(
      Uri.parse(FFAppConstants.hostName).toString(),
      <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
        'forceNew': true,
        'query': {'token': '$userToken'},
      },
    );

    _socket!.connect();

    _socket!.onConnect((_) {
      print('Conectado al socket');
      FFAppState().isSocketConnected = true;

      // Intentar volver a unirse a la sala después de reconectar
      String? roomId = FFAppState().currentRoomId;
      if (roomId != null && roomId.isNotEmpty) {
        emit('join_room', {'roomId': roomId});
        print('Reconectado y unido a la sala: $roomId');
      }

      _socket!.emit('connect_user', {});
    });

    _socket!.onDisconnect((_) {
      print('Desconectado del servidor Socket.IO');
      FFAppState().isSocketConnected = false;
    });
  }

  void sendMessage(String event, Map<String, dynamic> message) {
    if (_socket != null) {
      _socket!.emit(event, message);
      print('Mensaje enviado: $message');
    } else {
      print('El socket no está conectado');
    }
  }

  void emit(String event, Map<String, dynamic> message) {
    if (_socket != null) {
      _socket!.emit(event, message);
      print('Evento emitido: $event, Datos: $message');
    } else {
      print('El socket no está conectado');
    }
  }

  IO.Socket? getSocket() {
    return _socket;
  }
}

// Función para la acción initSocketConnection
Future initSocketConnection(String userToken) async {
  SocketService().connect(userToken);
  print('Conexión de socket inicializada');
}
