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
    show SocketService; // Imports the custom socket service

Future joinChatRoom(String roomId) async {
  if (roomId.isEmpty) {
    print('El ID de la sala está vacío, no se unirá a la sala');
    return;
  }

  // Emitir evento para unirse a la sala de chat
  String event = 'join_room';
  Map<String, dynamic> joinData = {'roomId': roomId};

  SocketService().emit(event, joinData);
  print('Solicitud para unirse a la sala $roomId enviada');
}
