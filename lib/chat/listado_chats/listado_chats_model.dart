import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/chat/component_create_ticket/component_create_ticket_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'listado_chats_widget.dart' show ListadoChatsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListadoChatsModel extends FlutterFlowModel<ListadoChatsWidget> {
  ///  Local state fields for this page.

  bool? loading = true;

  PaginationStruct? pagination;
  void updatePaginationStruct(Function(PaginationStruct) updateFn) {
    updateFn(pagination ??= PaginationStruct());
  }

  List<ChatStruct> chats = [];
  void addToChats(ChatStruct item) => chats.add(item);
  void removeFromChats(ChatStruct item) => chats.remove(item);
  void removeAtIndexFromChats(int index) => chats.removeAt(index);
  void insertAtIndexInChats(int index, ChatStruct item) =>
      chats.insert(index, item);
  void updateChatsAtIndex(int index, Function(ChatStruct) updateFn) =>
      chats[index] = updateFn(chats[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ListarChats)] action in ListadoChats widget.
  ApiCallResponse? apiCargarChats;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (ListarChats)] action in TextField widget.
  ApiCallResponse? apiCargarChatsPorNombre;
  // Stores action output result for [Backend Call - API (ListarChats)] action in Column widget.
  ApiCallResponse? apiResultu3gCopy;
  // Stores action output result for [Backend Call - API (asignar usuario a chat)] action in Container widget.
  ApiCallResponse? apiResult36m;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
