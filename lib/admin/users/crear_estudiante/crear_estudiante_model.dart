import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
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
  // State field(s) for nombreEstudiante widget.
  FocusNode? nombreEstudianteFocusNode;
  TextEditingController? nombreEstudianteTextController;
  String? Function(BuildContext, String?)?
      nombreEstudianteTextControllerValidator;
  // State field(s) for emailEstudiante widget.
  FocusNode? emailEstudianteFocusNode;
  TextEditingController? emailEstudianteTextController;
  String? Function(BuildContext, String?)?
      emailEstudianteTextControllerValidator;
  // Stores action output result for [Backend Call - API (crar user comercio o estudiante)] action in EnviarInvitacion widget.
  ApiCallResponse? apiGuardarEstudiante;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreEstudianteFocusNode?.dispose();
    nombreEstudianteTextController?.dispose();

    emailEstudianteFocusNode?.dispose();
    emailEstudianteTextController?.dispose();
  }
}
