import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'lista_descuentos_admin_widget.dart' show ListaDescuentosAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaDescuentosAdminModel
    extends FlutterFlowModel<ListaDescuentosAdminWidget> {
  ///  Local state fields for this page.

  List<HousingStruct> data = [];
  void addToData(HousingStruct item) => data.add(item);
  void removeFromData(HousingStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, HousingStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(HousingStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Obtener todos los housing)] action in ListaDescuentosAdmin widget.
  ApiCallResponse? apiResponseHopusing;
  // Stores action output result for [Backend Call - API (Obtener todos los housing)] action in Column widget.
  ApiCallResponse? apiResponseHopusingCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
