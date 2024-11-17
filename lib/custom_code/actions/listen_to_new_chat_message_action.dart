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

Future<void> listenToNewChatMessageAction(String roomId) async {
  if (roomId.isEmpty) {
    print('El ID de la sala está vacío, no se agregará el listener');
    return;
  }

  // Acceder al socket mediante un getter público o directamente
  final socket = SocketService().getSocket(); // Cambié para obtener el socket

  if (socket == null) {
    print('El socket no está conectado');
    return;
  }

  // Remover cualquier listener existente para evitar duplicados
  socket.off('newChatMessage');

  // Escuchar el evento 'newChatMessage' con el socket
  socket.on('newChatMessage', (data) async {
    print('Nuevo mensaje recibido en la sala $roomId, Datos: $data');

    if (data != null && data is Map<String, dynamic>) {
      // Convertir los datos del mensaje a un objeto adecuado para la lista de mensajes
      final newMessage = ChatMessageStruct.fromMap(data);

      // Añadir el mensaje recibido al estado global FFAppState().listMessage
      final currentMessages = FFAppState().listMessages;
      currentMessages.insert(0, newMessage);

      FFAppState().update(() {
        FFAppState().listMessages = currentMessages;
      });

      print('Mensaje añadido a FFAppState().listMessage');
    } else {
      print('Datos del mensaje no válidos: $data');
    }
  });

  return Future.value();
}
