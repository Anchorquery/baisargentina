// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'init_socket_connection.dart' show SocketService;
import 'dart:async';

Future<void> listenToUpdateChatAction() async {
  final socket = SocketService().getSocket();

  if (socket == null) {
    print('El socket no está conectado');
    return;
  }

  socket.off('updateChat');

  socket.on('updateChat', (data) async {
    print('chat actualizado, Datos: $data');

    if (data != null && data is Map<String, dynamic>) {
      final updateChat = ChatStruct.fromMap(data);
      final currentChats = FFAppState().listChats;

      int index =
          currentChats.indexWhere((chat) => chat.uuid == updateChat.uuid);

      if (index != -1) {
        // 1. Remover el chat de su posición actual
        final updatedChat = currentChats.removeAt(index);

        // 2. Insertar el chat actualizado al principio de la lista
        currentChats.insert(0, updateChat);
        FFAppState().update(() {
          FFAppState().listChats = currentChats;
        });
      }

      print('Mensaje actualizado y movido al inicio en FFAppState().listChats');
    } else {
      print('Datos del mensaje no válidos: $data');
    }
  });

  return Future.value();
}
