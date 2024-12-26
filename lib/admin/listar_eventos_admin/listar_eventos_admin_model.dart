import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'listar_eventos_admin_widget.dart' show ListarEventosAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class ListarEventosAdminModel
    extends FlutterFlowModel<ListarEventosAdminWidget> {
  ///  Local state fields for this page.

  List<EventsStruct> data = [];
  void addToData(EventsStruct item) => data.add(item);
  void removeFromData(EventsStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, EventsStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(EventsStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetEvents)] action in ListarEventosAdmin widget.
  ApiCallResponse? apiResponseEvents;
  // Stores action output result for [Backend Call - API (GetEvents)] action in Column widget.
  ApiCallResponse? apiResponseRefreshEvents;
  // Stores action output result for [Backend Call - API (Eliminar evento)] action in Icon widget.
  ApiCallResponse? apiResultlel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
