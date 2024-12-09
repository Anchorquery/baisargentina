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
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class ListaDescuentosAdminModel
    extends FlutterFlowModel<ListaDescuentosAdminWidget> {
  ///  Local state fields for this page.

  List<DiscountsStruct> data = [];
  void addToData(DiscountsStruct item) => data.add(item);
  void removeFromData(DiscountsStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, DiscountsStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(DiscountsStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find descuentos)] action in ListaDescuentosAdmin widget.
  ApiCallResponse? apiResponseHopusing;
  // Stores action output result for [Backend Call - API (Find descuentos)] action in Column widget.
  ApiCallResponse? apiResponseHopusingCopy;
  // Stores action output result for [Backend Call - API (EliminarDescuento)] action in IcondeleteDescuento widget.
  ApiCallResponse? apiResultbwl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
