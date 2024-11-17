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

import 'init_socket_connection.dart'
    show SocketService; // Import del servicio de socket
import 'dart:async'; // Import necesario para manejar los futuros y los streams

Future<void> addSocketListenerListChats() async {
  // Acceder al socket mediante un getter público o directamente
  final socket = SocketService().getSocket(); // Cambié para obtener el socket

  if (socket == null) {
    print('El socket no está conectado');
    return;
  }

  // Remover cualquier listener existente para evitar duplicados
  socket.off('onListMessages');

  // Escuchar el evento 'onListMessages' con el socket
  socket.on('onListMessages', (data) async {
    print('Listado de mensajes recibidos, Datos: $data');

    if (data != null && data is List) {
      // Recorrer cada elemento de la lista y convertirlo a ChatMessageStruct
      final List<ChatMessageStruct> newMessages = data
          .map((messageData) => ChatMessageStruct.fromMap(messageData))
          .whereType<ChatMessageStruct>()
          .toList();

      // Añadir los mensajes recibidos al estado global FFAppState().listMessages
      final currentMessages = FFAppState().listMessages;
      currentMessages.insertAll(0, newMessages);

      // Actualizar el estado global
      FFAppState().update(() {
        FFAppState().listMessages = currentMessages;
      });

      print('Mensajes añadidos a FFAppState().listMessages');
    } else {
      print('Datos de los mensajes no válidos: $data');
    }
  });

  return Future.value();
}
