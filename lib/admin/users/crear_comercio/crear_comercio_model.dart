import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'crear_comercio_widget.dart' show CrearComercioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearComercioModel extends FlutterFlowModel<CrearComercioWidget> {
  ///  Local state fields for this page.

  List<CategoryStruct> categorias = [];
  void addToCategorias(CategoryStruct item) => categorias.add(item);
  void removeFromCategorias(CategoryStruct item) => categorias.remove(item);
  void removeAtIndexFromCategorias(int index) => categorias.removeAt(index);
  void insertAtIndexInCategorias(int index, CategoryStruct item) =>
      categorias.insert(index, item);
  void updateCategoriasAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categorias[index] = updateFn(categorias[index]);

  bool? laoding = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (categoria comercios)] action in CrearComercio widget.
  ApiCallResponse? apiGetCategories;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for category widget.
  int? categoryValue;
  FormFieldController<int>? categoryValueController;
  // Stores action output result for [Backend Call - API (crar user comercio o estudiante)] action in Button widget.
  ApiCallResponse? apiGuardarComercio;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
