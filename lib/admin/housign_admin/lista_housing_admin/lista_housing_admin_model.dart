import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'lista_housing_admin_widget.dart' show ListaHousingAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaHousingAdminModel extends FlutterFlowModel<ListaHousingAdminWidget> {
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

  // Stores action output result for [Backend Call - API (Obtener todos los housing)] action in ListaHousingAdmin widget.
  ApiCallResponse? apiResponseHopusing;
  // Stores action output result for [Backend Call - API (Obtener todos los housing)] action in Column widget.
  ApiCallResponse? apiResponseHopusingCopy;
  // Stores action output result for [Backend Call - API (eliminar housning)] action in Icon widget.
  ApiCallResponse? apiResultlel;
  // Stores action output result for [Backend Call - API (Obtener todos los housing)] action in Icon widget.
  ApiCallResponse? apiResponseHopusing2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
