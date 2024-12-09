import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'lista_categoria_descuentos_admin_widget.dart'
    show ListaCategoriaDescuentosAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaCategoriaDescuentosAdminModel
    extends FlutterFlowModel<ListaCategoriaDescuentosAdminWidget> {
  ///  Local state fields for this page.

  List<CategoryStruct> data = [];
  void addToData(CategoryStruct item) => data.add(item);
  void removeFromData(CategoryStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, CategoryStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(CategoryStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ObtenerCategoriasDescuento)] action in ListaCategoriaDescuentosAdmin widget.
  ApiCallResponse? apiResponseCategorias;
  // Stores action output result for [Backend Call - API (ObtenerCategoriasDescuento)] action in Column widget.
  ApiCallResponse? apiResponseCategoriasRefresh;
  // Stores action output result for [Backend Call - API (EliminarDescuento)] action in IcondeleteDescuento widget.
  ApiCallResponse? apiResultbwl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
