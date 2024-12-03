import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'crear_estudiante_widget.dart' show CrearEstudianteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearEstudianteModel extends FlutterFlowModel<CrearEstudianteWidget> {
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

  // Stores action output result for [Backend Call - API (categoria comercios)] action in CrearEstudiante widget.
  ApiCallResponse? apiGetCategories;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
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
