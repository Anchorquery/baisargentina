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
    show SocketService; // Imports other custom actions

Future sendMessage(String text, String id) async {
  if (text.isEmpty) {
    print('El texto del mensaje está vacío, no se enviará el mensaje');
    return;
  }

  var message = {'message': text, 'receiverId': id};
  String event = 'private_chat';

  // Usa el servicio de socket para enviar el mensaje
  SocketService().sendMessage(event, message);
}
