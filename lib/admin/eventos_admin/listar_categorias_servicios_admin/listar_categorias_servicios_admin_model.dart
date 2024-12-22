import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'listar_categorias_servicios_admin_widget.dart'
    show ListarCategoriasServiciosAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class ListarCategoriasServiciosAdminModel
    extends FlutterFlowModel<ListarCategoriasServiciosAdminWidget> {
  ///  Local state fields for this page.

  List<ServicesCategoryStruct> data = [];
  void addToData(ServicesCategoryStruct item) => data.add(item);
  void removeFromData(ServicesCategoryStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, ServicesCategoryStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(
          int index, Function(ServicesCategoryStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find category)] action in ListarCategoriasServiciosAdmin widget.
  ApiCallResponse? apiResponseServiciosCategorias;
  // Stores action output result for [Backend Call - API (Find category)] action in Column widget.
  ApiCallResponse? apiResponseRefreshServicios;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
