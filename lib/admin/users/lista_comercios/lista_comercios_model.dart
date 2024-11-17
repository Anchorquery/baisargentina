import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'lista_comercios_widget.dart' show ListaComerciosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaComerciosModel extends FlutterFlowModel<ListaComerciosWidget> {
  ///  Local state fields for this page.

  List<dynamic> data = [];
  void addToData(dynamic item) => data.add(item);
  void removeFromData(dynamic item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, dynamic item) => data.insert(index, item);
  void updateDataAtIndex(int index, Function(dynamic) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (findUser)] action in ListaComercios widget.
  ApiCallResponse? apiResponseUsers;
  // Stores action output result for [Backend Call - API (findUser)] action in Column widget.
  ApiCallResponse? apiResponseUser;
  // Stores action output result for [Backend Call - API (delete user)] action in Icon widget.
  ApiCallResponse? apiResultlel;
  // Stores action output result for [Backend Call - API (findUser)] action in Icon widget.
  ApiCallResponse? apiResponseGetUsers2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
