import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'listar_servicios_admin_widget.dart' show ListarServiciosAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class ListarServiciosAdminModel
    extends FlutterFlowModel<ListarServiciosAdminWidget> {
  ///  Local state fields for this page.

  List<ServicesListStruct> data = [];
  void addToData(ServicesListStruct item) => data.add(item);
  void removeFromData(ServicesListStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, ServicesListStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(ServicesListStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find)] action in ListarServiciosAdmin widget.
  ApiCallResponse? apiResponseServicios;
  // Stores action output result for [Backend Call - API (Find)] action in Column widget.
  ApiCallResponse? apiResponseRefreshServicios;
  // Stores action output result for [Backend Call - API (delete)] action in Icon widget.
  ApiCallResponse? apiResultlel;
  // Stores action output result for [Backend Call - API (Find)] action in Icon widget.
  ApiCallResponse? apiResponseHopusing2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
