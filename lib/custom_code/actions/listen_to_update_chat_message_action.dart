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

import 'init_socket_connection.dart'
    show SocketService; // Import del servicio de socket
import 'dart:async'; // Import necesario para manejar los futuros y los streams

Future<void> listenToUpdateChatMessageAction(String roomId) async {
  if (roomId.isEmpty) {
    print('El ID de la sala está vacío, no se agregará el listener');
    return;
  }

  // Acceder al socket mediante un getter público o directamente
  final socket = SocketService().getSocket(); // Obtiene el socket

  if (socket == null) {
    print('El socket no está conectado');
    return;
  }

  // Remover cualquier listener existente para evitar duplicados
  socket.off('updateChatMessage');

  // Escuchar el evento 'updateChatMessage' con el socket
  socket.on('updateChatMessage', (data) async {
    print('Mensaje actualizado recibido en la sala $roomId, Datos: $data');

    if (data != null && data is Map<String, dynamic>) {
      // Convertir los datos del mensaje a un objeto adecuado para la lista de mensajes
      final updatedMessage = ChatMessageStruct.fromMap(data);

      // Obtener la lista actual de mensajes
      final currentMessages = FFAppState().listMessages;

      // Buscar el índice del mensaje que se va a actualizar
      int index =
          currentMessages.indexWhere((msg) => msg.uuid == updatedMessage.uuid);

      if (index != -1) {
        // Actualizar el mensaje existente
        currentMessages[index] = updatedMessage;

        // Actualizar el estado global
        FFAppState().update(() {
          FFAppState().listMessages = currentMessages;
        });

        print('Mensaje actualizado en FFAppState().listMessages');
      } else {
        print(
            'Mensaje con ID ${updatedMessage.uuid} no encontrado en FFAppState().listMessages');
      }
    } else {
      print('Datos del mensaje no válidos: $data');
    }
  });

  return Future.value();
}
